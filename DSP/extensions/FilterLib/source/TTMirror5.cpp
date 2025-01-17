/** @file
 *
 * @ingroup dspFilterLib
 *
 * @brief #TTMirror5 is a 5th-order lowpass/highpass filter built up from a 2-path allpass structure
 *
 * @details
 *
 * @authors Timothy Place, Trond Lossius
 *
 * @copyright Copyright © 2010, Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTMirror5.h"

#define thisTTClass			TTMirror5
#define thisTTClassName		"mirror.5"
#define thisTTClassTags		"dspFilterLib, audio, processor, filter, lowpass, highpass"

#ifdef TT_PLATFORM_WIN
#include <algorithm>
#endif

TT_AUDIO_CONSTRUCTOR,
	mF0("allpass.2a"),
	mF1("allpass.1a"),
	mF2("allpass.2a")
{
	TTChannelCount	initialMaxNumChannels = arguments;

	addAttributeWithSetter(Mode, kTypeSymbol);
	addAttributeWithSetter(Frequency, kTypeFloat64);
	addMessage(clear);
	addUpdates(MaxNumChannels);

	setAttributeValue(kTTSym_maxNumChannels,	initialMaxNumChannels);
	setAttributeValue(TT("mode"),			TT("lowpass"));
	setAttributeValue(TT("frequency"),		sr/4.0);
}


TTMirror5::~TTMirror5()
{
}


TTErr TTMirror5::updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&)
{
	mF0.set(kTTSym_maxNumChannels, mMaxNumChannels);
	mF1.set(kTTSym_maxNumChannels, mMaxNumChannels);
	mF2.set(kTTSym_maxNumChannels, mMaxNumChannels);
	clear();
	return kTTErrNone;
}


TTErr TTMirror5::clear()
{
	mF0.send(kTTSym_clear);
	mF1.send(kTTSym_clear);
	mF2.send(kTTSym_clear);
	return kTTErrNone;
}


TTErr TTMirror5::setMode(const TTValue& newValue)
{
	TTSymbol newMode = newValue;

	if (newMode == TT("highpass")) {
		mMode = TT("highpass");
		setCalculateMethod(calculateHighpass);
		setProcessMethod(processHighpass);
	}
	else { // lowpass
		mMode = TT("lowpass");
		setCalculateMethod(calculateLowpass);
		setProcessMethod(processLowpass);
	}
	return kTTErrNone;
}


TTErr TTMirror5::setFrequency(const TTValue& newValue)
{
	mFrequency = newValue;

	const TTFloat64	alpha_0 = 0.1413486;	// alpha coefficients come from the halfband filter, which we are transforming
	const TTFloat64	alpha_1 = 0.5899948;
	const TTFloat64	omega_b = TTClip<TTFloat64>(sr/2.0 - mFrequency, 0.0, sr/2.0);
	const TTFloat64	omega_s = sr;
	const TTFloat64	theta_b = (omega_b / omega_s) * kTTTwoPi;
	const TTFloat64	b = (1 - tan(theta_b / 2.0)) / (1 + tan(theta_b / 2.0));
	TTFloat64		c_1 = ((2.0 * b) + (2.0 * b * alpha_0)) / (1 + alpha_0 * (b * b));
	TTFloat64		c_2 = ((b*b) + alpha_0) / (1 + alpha_0 * (b*b));

	mF0.set("c1", c_1);
	mF0.set("c2", c_2);

	c_1 = ((2.0 * b) + (2.0 * b * alpha_1)) / (1 + alpha_1 * (b * b));
	c_2 = ((b*b) + alpha_1) / (1 + alpha_1 * (b*b));
	mF1.set("alpha", b);
	mF2.set("c1", c_1);
	mF2.set("c2", c_2);

	return kTTErrNone;
}


inline void TTMirror5::filterKernel(const TTFloat64& input, TTFloat64& outputPath0, TTFloat64& outputPath1, TTPtrSizedInt channel)
{
	TTFloat64 temp;

	TTBASE(mF0, TTAllpass2a)->calculateValue(input,	outputPath0,	channel);

	TTBASE(mF1, TTAllpass1a)->calculateValue(input,	temp,			channel);
	TTBASE(mF2, TTAllpass2a)->calculateValue(temp,	outputPath1,	channel);
}


TTErr TTMirror5::calculateLowpass(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel)
{
	TTFloat64 outputFromPath0;
	TTFloat64 outputFromPath1;

	filterKernel(x, outputFromPath0, outputFromPath1, channel);
	y = (outputFromPath0 + outputFromPath1) * 0.5;
	return kTTErrNone;
}


TTErr TTMirror5::calculateHighpass(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel)
{
	TTFloat64 outputFromPath0;
	TTFloat64 outputFromPath1;

	filterKernel(x, outputFromPath0, outputFromPath1, channel);
	y = (outputFromPath0 - outputFromPath1) * 0.5;
	return kTTErrNone;
}


TTErr TTMirror5::processLowpass(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateLowpass);
}


TTErr TTMirror5::processHighpass(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateHighpass);
}

