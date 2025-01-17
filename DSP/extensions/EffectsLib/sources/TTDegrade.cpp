/** @file
 *
 * @ingroup dspEffectsLib
 *
 * @brief #TTDegrade distorts signal by reducing bit resolution and/or sample rate.
 *
 * @authors Tim Place, Trond Lossius, Nathan Wolek
 *
 * @copyright Copyright © 2008, Tim Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTDegrade.h"

#define thisTTClass			TTDegrade
#define thisTTClassName		"degrade"
#define thisTTClassTags		"dspEffectsLib, audio, processor, distortion"

#define BIG_INT	0x00800000
#define ONE_OVER_BIG_INT 1.1920928955E-7


TT_AUDIO_CONSTRUCTOR
{
	TTChannelCount	initialMaxNumChannels = arguments;
	
	// register attributes
	addAttributeWithSetter(Bitdepth,	kTypeUInt8);
	addAttribute(SrRatio,				kTypeFloat64);

	// register for notifications from the parent class so we can allocate memory as required
	addUpdates(MaxNumChannels);

	// Set Defaults...
	setAttributeValue(kTTSym_maxNumChannels,	initialMaxNumChannels);
	setAttributeValue(TT("bitdepth"),		24);
	setAttributeValue(TT("srRatio"),		1.0);
	setProcessMethod(processAudio);
}


TTDegrade::~TTDegrade()
{;}


TTErr TTDegrade::updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&)
{
	mAccumulator.resize(mMaxNumChannels);
	mAccumulator.assign(mMaxNumChannels, 0.0);

	mOutput.resize(mMaxNumChannels);
	mOutput.assign(mMaxNumChannels, 0.0);

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
	TTChannelCount	numchannels = TTAudioSignal::getMinChannelCount(in, out);
	TTChannelCount	channel;
	TTInt32			l;

	for (channel=0; channel<numchannels; channel++) {
		inSample = in.mSampleVectors[channel];
		outSample = out.mSampleVectors[channel];
		vs = in.getVectorSizeAsInt();
		
		while (vs--) {
			// SampeRate Reduction
			mAccumulator[channel] += mSrRatio;
			if (mAccumulator[channel] >= 1.0) {
				mOutput[channel] = *inSample;
				mAccumulator[channel] -= 1.0;
			}
            inSample++;
		
			// BitDepth Reduction
			l = (TTInt32)(mOutput[channel] * BIG_INT);			// change float to long int
			l >>= mBitShift;									// shift away the least-significant bits
			l <<= mBitShift;									// shift back to the correct registers
			*outSample++ = (TTFloat32) l * ONE_OVER_BIG_INT;	// back to float
            
            // Even with mSrRatio 1. and mBitdepth 24., a 64-bit sample will be degraded to 32 bit
		}
	}
	return kTTErrNone;
}

