/** @file
 *
 * @ingroup dspFunctionLib
 *
 * @brief #TTSineEaseOutFunction Unit for Jamoms DSP
 *
 * @details Modeled after quarter-cycle of sine wave (different phase)
 *
 * @authors Timothy Place, Trond Lossius
 *
 * @copyright Copyright © 2007 by Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTSineEaseOutFunction.h"

#define thisTTClass			TTSineEaseOutFunction
#define thisTTClassName		"easeOutSine"
#define thisTTClassTags		"dspFunctionLib, audio, processor, function"


TT_AUDIO_CONSTRUCTOR
{
	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);
}


TTSineEaseOutFunction::~TTSineEaseOutFunction()
{
	;
}


TTErr TTSineEaseOutFunction::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	y = sin(x * kTTPi * 0.5);
	return kTTErrNone;
}


TTErr TTSineEaseOutFunction::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

