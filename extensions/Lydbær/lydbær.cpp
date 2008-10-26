/* 
 * Lydbaer Extensions for TTBlue
 * Creates a wrapper for TTAudioObjects that can be used to build an audio processing graph.
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "lydbær.h"


LydbaerObject::LydbaerObject(TTSymbolPtr objectName, TTUInt16 initialNumChannels)
	:audioSources(NULL), numSources(0), audioInput(NULL), audioOutput(NULL), audioObject(NULL)
{
	TTErr err;
	
	err = TTObjectInstantiate(objectName, &audioObject, initialNumChannels);
	err = TTObjectInstantiate(kTTSym_audiosignal, &audioInput, initialNumChannels);
	err = TTObjectInstantiate(kTTSym_audiosignal, &audioOutput, initialNumChannels);
}


LydbaerObject::~LydbaerObject()
{
	TTObjectRelease(audioObject);
	TTObjectRelease(audioInput);
	TTObjectRelease(audioOutput);
}


TTErr LydbaerObject::prepareToProcess()
{
	processStatus = kProcessNotStarted;
	return kTTErrNone;
}


TTErr LydbaerObject::resetSources()
{
	if(audioSources && numSources)
		free(audioSources);
	audioSources = NULL;
	numSources = 0;
	return kTTErrNone;
}


TTErr LydbaerObject::addSource(LydbaerObjectPtr anObject)
{
	numSources++;
	if(numSources == 1)
		audioSources = (LydbaerObjectPtr*)malloc(sizeof(LydbaerObjectPtr) * numSources);
	else
		audioSources = (LydbaerObjectPtr*)realloc(audioSources, sizeof(LydbaerObjectPtr) * numSources);

	audioSources[numSources-1] = anObject;
	return kTTErrNone;
}


TTErr LydbaerObject::getAudioOutput(TTAudioSignalPtr& returnedSignal)
{
	TTAudioSignalPtr	pulledInput = NULL;
	TTErr				err;
	
	switch(processStatus){
		
		// we have not processed anything yet, so let's get started
		case kProcessNotStarted:
		
			// zero the samples
			audioInput->clear();
		
			// sum the sources
			for(TTUInt16 i=0; i<numSources; i++){
				err = audioSources[i]->getAudioOutput(pulledInput);
				if(!err)
					(*audioInput) += (*pulledInput);
			}
			
			// process the audio
			if(numSources)
				audioObject->process(audioInput, audioOutput);		// a processor
			else
				audioObject->process(audioOutput);					// a generator (or no input)
			
			// return
			returnedSignal = audioOutput;
			break;
			
			
		// we already processed everything that needs to be processed, so just set the pointer
		case kProcessComplete:
			returnedSignal = audioOutput;
			
			
		// to prevent feedback / infinite loops, we just hand back the last calculated output here
		case kProcessingCurrently:
			returnedSignal = audioOutput;
			break;
		
		
		// we should never get here
		default:
			return kTTErrGeneric;
	}
	return kTTErrNone;
}


#if 0
#pragma mark -
#pragma mark LydbaerSource Class Implementation
#endif


#define thisTTClass LydbaerSource

LydbaerSource::LydbaerSource(TTUInt16 newMaxNumChannels)
: TTAudioObject("lydbaer.source", newMaxNumChannels)
{
	buffer = new TTAudioSignal(newMaxNumChannels);
	setProcessMethod(processAudio);
}


LydbaerSource::~LydbaerSource()
{
	delete buffer;
}


TTErr LydbaerSource::processAudio(TTAudioSignal& unused, TTAudioSignal& out)
{
	return TTAudioSignal::copy(*buffer, out);
}


// Register our class with the TTBlue environment
TT_CLASS_SETUP("lydbaer.source", "audio, wrapper", LydbaerSource);

