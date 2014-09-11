/** @file
 *
 * @ingroup modularLibrary
 *
 * @brief Ramp Class
 *
 * @details
 *
 * @authors Tim Place, Théo de la Hogue
 *
 * @copyright © 2008, Tim Place, Théo de la Hogue @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTRamp.h"

#define thisTTClass			TTRamp
#define thisTTClassName		"Ramp"
#define thisTTClassTags		"ramp"

TT_MODULAR_CONSTRUCTOR,
mScheduler(kTTSymEmpty),
#ifndef TT_NO_DSP
mFunction(kTTSymEmpty),
#endif
mRampTime(0.),
mNumValues(0),
mCallback(NULL),
mBaton(NULL),
startValue(NULL),
targetValue(NULL),
currentValue(NULL)
{
    TTAttributePtr anAttribute;
    
    if (arguments.size() == 2) {
        
        mCallback = TTRampCallback((TTPtr)arguments[0]);
        mBaton = (TTPtr)arguments[1];
    }
	
    addAttributeWithSetter(Scheduler, kTypeSymbol);
    registerAttribute(TTSymbol("schedulerLibrary"), kTypeLocalValue, NULL, (TTGetterMethod)& TTRamp::getSchedulerLibrary, NULL);
    registerAttribute(TTSymbol("schedulerParameters"), kTypeLocalValue, NULL, (TTGetterMethod)& TTRamp::getSchedulerParameters, NULL);
    registerAttribute(TTSymbol("schedulerParameterValue"), kTypeLocalValue, NULL, (TTGetterMethod)& TTRamp::getSchedulerParameterValue, (TTSetterMethod)& TTRamp::setSchedulerParameterValue);
    
    this->findAttribute(TTSymbol("schedulerParameterValue"), &anAttribute);
    anAttribute->sethidden(YES);
    
#ifndef TT_NO_DSP    
	addAttributeWithSetter(Function, kTypeSymbol);
    registerAttribute(TTSymbol("functionLibrary"), kTypeLocalValue, NULL, (TTGetterMethod)& TTRamp::getFunctionLibrary, NULL);
    registerAttribute(TTSymbol("functionParameters"), kTypeLocalValue, NULL, (TTGetterMethod)& TTRamp::getFunctionParameters, NULL);
    registerAttribute(TTSymbol("functionParameterValue"), kTypeLocalValue, NULL, (TTGetterMethod)& TTRamp::getFunctionParameterValue, (TTSetterMethod)& TTRamp::setFunctionParameterValue);
    
    this->findAttribute(TTSymbol("functionParameterValue"), &anAttribute);
    anAttribute->sethidden(YES);
#endif
    
    addAttribute(RampTime, kTypeFloat64);
    
    registerAttribute(kTTSym_running, kTypeLocalValue, NULL, (TTGetterMethod)& TTRamp::getRunning);
    
    addMessageWithArguments(Set);
    addMessageWithArguments(Target);
    addMessageWithArguments(Go);
    addMessageWithArguments(Slide);
    addMessage(Tick);
	addMessage(Stop);
    
	setAttributeValue(kTTSym_function, TTSymbol("linear"));
}

TTRamp::~TTRamp()
{
    if (mSchedulerUnit.valid())
        mSchedulerUnit.send(kTTSym_Stop);

	delete [] currentValue;
	delete [] targetValue;
	delete [] startValue;
}

TTErr TTRamp::getRunning(TTValue& value)
{
    if (mSchedulerUnit.valid())
        return mSchedulerUnit.get(kTTSym_running, value);
    else
        return kTTErrGeneric;
}

TTErr TTRamp::setScheduler(const TTValue& inputValue)
{
	TTSymbol	newSchedulerName;
    TTValue     args;
	
	newSchedulerName = inputValue[0];
	
	if (newSchedulerName == mScheduler)
		return kTTErrNone;
	
	mScheduler = newSchedulerName;
    
    if (mSchedulerUnit.valid())
        mSchedulerUnit = TTObject();
    
    if (SchedulerLib::isSchedulerNameAvailable(mScheduler))
        return kTTErrGeneric;
    
    if (mScheduler != kTTSymEmpty && mScheduler != kTTSym_none) {
        
        args.append((TTPtr)&TTRampSchedulerCallback);
        args.append((TTPtr)this); // we have to store this as a pointer
        
        mSchedulerUnit = TTObject(mScheduler, args);
        return kTTErrNone;
    }
    
    return kTTErrGeneric;
}

TTErr TTRamp::getSchedulerLibrary(TTValue& value)
{
	TTObject::GetRegisteredClassNamesForTags(value, TTSymbol("scheduler"));
	return kTTErrNone;
}

TTErr TTRamp::getSchedulerParameters(TTValue& value)
{
    if (mSchedulerUnit.valid()) {
        mSchedulerUnit.get("parameterNames", value);
        return kTTErrNone;
    }
    
    return kTTErrGeneric;
}

TTErr TTRamp::getSchedulerParameterValue(TTValue& value)
{
    TTSymbol parameterName;
    
    if (value.size() == 1) {
        
        if (value[0].type() == kTypeSymbol) {
            
            parameterName = value[0];
    
            if (mSchedulerUnit.valid())
                return mSchedulerUnit.get(parameterName, value);
        }
    }
    
    return kTTErrGeneric;
}

TTErr TTRamp::setSchedulerParameterValue(const TTValue& value)
{
    TTSymbol    parameterName;
    TTValue     newValue;
    
    if (value.size() > 1) {
        
        if (value[0].type() == kTypeSymbol) {
            
            parameterName = value[0];
            newValue.copyFrom(value, 1);
    
            return mSchedulerUnit.set(parameterName, newValue);
        }
    }
    
    return kTTErrGeneric;
}
#ifndef TT_NO_DSP
TTErr TTRamp::setFunction(const TTValue& inputValue)
{
	TTSymbol	newFunctionName;
	
	newFunctionName = inputValue[0];
	
	if (newFunctionName == TTSymbol("none"))
		newFunctionName = TTSymbol("linear");
	
	if (newFunctionName == mFunction)
		return kTTErrNone;
	
	mFunction = newFunctionName;
    
    if (mFunctionUnit.valid())
        mFunctionUnit = TTObject();
    
    mFunctionUnit = TTObject(mFunction, 1); // for 1 channel only
    return kTTErrNone;
}

TTErr TTRamp::getFunctionLibrary(TTValue& value)
{
	TTObject::GetRegisteredClassNamesForTags(value, kTTSym_function);
	return kTTErrNone;
}

TTErr TTRamp::getFunctionParameters(TTValue& value)
{
    TTValue     names;
    TTSymbol    aName;
    
    if (mFunctionUnit.valid()) {
        
        mFunctionUnit.attributes(names);
        
        value.clear();
        for (TTUInt32 i = 0; i < names.size(); i++) {
            
            aName = names[i];
            
            if (aName == kTTSym_bypass || aName == kTTSym_mute || aName == kTTSym_maxNumChannels || aName == kTTSym_sampleRate)
                continue;										// don't publish these parameters
            
            value.append(aName);
        }
        
        return kTTErrNone;
    }
    
    return kTTErrGeneric;
}

TTErr TTRamp::getFunctionParameterValue(TTValue& value)
{
    TTSymbol parameterName;
    
    if (mFunctionUnit.valid()) {
        
        if (value.size() == 1) {
            
            if (value[0].type() == kTypeSymbol) {
                
                parameterName = value[0];
                
                return mFunctionUnit.get(parameterName, value);
            }
        }
    }
    
    return kTTErrGeneric;
}

TTErr TTRamp::setFunctionParameterValue(const TTValue& value)
{
    TTSymbol    parameterName;
    TTValue     newValue;
    
    if (mFunctionUnit.valid()) {
        
        if (value.size() > 1) {
            
            if (value[0].type() == kTypeSymbol) {
                
                parameterName = value[0];
                newValue.copyFrom(value, 1);
                
                return mFunctionUnit.set(parameterName, newValue);
            }
        }
    }
    
    return kTTErrGeneric;
}
#endif
TTErr TTRamp::Set(const TTValue& inputValue, TTValue& outputValue)
{
    TTUInt32 i;
	
    if (mSchedulerUnit.valid()) {
        
        mSchedulerUnit.send(kTTSym_Stop);
        
        mNumValues = inputValue.size();
        
        startValue = new TTFloat64[mNumValues];
        
        for (i = 0; i < mNumValues; i++)
            startValue[i] = TTFloat64(inputValue[i]);
        
        return kTTErrNone;
    }
    
    return kTTErrGeneric;
}

TTErr TTRamp::Target(const TTValue& inputValue, TTValue& outputValue)
{
    TTUInt32 i;
	
    if (mSchedulerUnit.valid()) {
        
        mSchedulerUnit.send(kTTSym_Stop);
        
        if (mNumValues == inputValue.size()) {
            
            currentValue = new TTFloat64[mNumValues];
            targetValue = new TTFloat64[mNumValues];
            
            for (i = 0; i < mNumValues; i++) {
                currentValue[i] = startValue[i];
                targetValue[i] = TTFloat64(inputValue[i]);
            }
            
            return kTTErrNone;
        }
    }
    
    return kTTErrGeneric;
}

TTErr TTRamp::Go(const TTValue& inputValue, TTValue& outputValue)
{
    if (mSchedulerUnit.valid()) {
        
        if (inputValue.size() == 1) {
            
            mRampTime = inputValue[0];
            
            mSchedulerUnit.set("duration", mRampTime);
            
            if (startValue && currentValue && targetValue)
                return mSchedulerUnit.send(kTTSym_Go);
        }
    }
    
    return kTTErrGeneric;
}

TTErr TTRamp::Slide(const TTValue& inputValue, TTValue& outputValue)
{    
    if (inputValue.size() == 1) {
        
        if (inputValue[0].type() == kTypeFloat64) {
            
            if (startValue && currentValue && targetValue) {
                TTRampSchedulerCallback(TTPtr(this), inputValue[0], 0.);
                return kTTErrNone;
            }
        }
    }

    return kTTErrGeneric;
}

TTErr TTRamp::Tick()
{
    if (mSchedulerUnit.valid())
        return mSchedulerUnit.send(kTTSym_Tick);
    else
        return kTTErrGeneric;
}

TTErr TTRamp::Stop()
{
    mRampTime = 0.;
    
    if (mSchedulerUnit.valid())
        return mSchedulerUnit.send(kTTSym_Stop);
    else
        return kTTErrGeneric;
}

void TTRampSchedulerCallback(TTPtr object, TTFloat64 position, TTFloat64 date)
{
	TTRampPtr	aRamp = (TTRampPtr)object;
    TTUInt32	i;
	TTFloat64	mapped;
	TTFloat64	*current = aRamp->currentValue;
	TTFloat64	*target = aRamp->targetValue;
	TTFloat64	*start = aRamp->startValue;

#ifndef TT_NO_DSP
        if (aRamp->mFunctionUnit.valid()) {
            
            TTAudioObjectBasePtr(aRamp->mFunctionUnit.instance())->calculate(position, mapped);
            
            for (i = 0; i <  aRamp->mNumValues; i++)
                current[i] = start[i] + ((target[i] - start[i]) * mapped);
            
            (aRamp->mCallback)(aRamp->mBaton, aRamp->mNumValues, current);
        }
        
#else
        
        mapped = position;
        
        for (i = 0; i <  aRamp->mNumValues; i++)
            current[i] = start[i] + ((target[i] - start[i]) * mapped);
        
        (aRamp->mCallback)(aRamp->mBaton, aRamp->mNumValues, current);
#endif
}
