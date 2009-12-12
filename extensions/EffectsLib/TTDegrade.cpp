/* 
 * TTBlue Degrade Object
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTDegrade.h"

#define thisTTClass			TTDegrade
#define thisTTClassName		"degrade"
#define thisTTClassTags		"audio, processor, distortion"

#define BIG_INT	0x00800000
#define ONE_OVER_BIG_INT 1.1920928955E-7


TT_AUDIO_CONSTRUCTOR
{
	TTUInt16	initialMaxNumChannels = arguments;
	
	// register attributes
	addAttributeWithSetter(Bitdepth,	kTypeUInt8);
	addAttribute(SrRatio,				kTypeFloat64);

	// register for notifications from the parent class so we can allocate memory as required
	addMessageWithArgument(updateMaxNumChannels);

	// Set Defaults...
	setAttributeValue(TT("maxNumChannels"),	initialMaxNumChannels);
	setAttributeValue(TT("Bitdepth"),		24);
	setAttributeValue(TT("SrRatio"),		1.0);
	setProcessMethod(processAudio);
}


TTDegrade::~TTDegrade()
{;}


TTErr TTDegrade::updateMaxNumChannels(const TTValue& oldMaxNumChannels)
{
	mAccumulator.resize(maxNumChannels);
	mAccumulator.assign(maxNumChannels, 0.0);

	mOutput.resize(maxNumChannels);
	mOutput.assign(maxNumChannels, 0.0);

	return kTTErrNone;
}


TTErr TTDegrade::setBitdepth(const TTValue& newValue)
{
	mBitdepth = TTClip<TTInt32>(newValue, 1, 24);
	mBitShift = 24 - mBitdepth;
	return kTTErrNone;
}


TTErr TTDegrade::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	in = inputs->getSignal(0);
	TTAudioSignal&	out = outputs->getSignal(0);
	TTUInt16		vs;
	TTSampleValue	*inSample,
					*outSample;
	TTUInt16		numchannels = TTAudioSignal::getMinChannelCount(in, out);
	TTUInt16		channel;
	long			l;

	for (channel=0; channel<numchannels; channel++) {
		inSample = in.sampleVectors[channel];
		outSample = out.sampleVectors[channel];
		vs = in.getVectorSize();
		
		while (vs--) {
			// SampeRate Reduction
			mAccumulator[channel] += mSrRatio;
			if (mAccumulator[channel] >= 1.0) {
				mOutput[channel] = *inSample++;
				mAccumulator[channel] -= 1.0;
			}
		
			// BitDepth Reduction
			l = (long)(mOutput[channel] * BIG_INT);			// change float to long int
			l >>= mBitShift;									// shift away the least-significant bits
			l <<= mBitShift;									// shift back to the correct registers
			*outSample++ = (float) l * ONE_OVER_BIG_INT;	// back to float
		}
	}
	return kTTErrNone;
}

