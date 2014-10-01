/** @file
 *
 * @ingroup dspFunctionLib
 *
 * @brief #TTBackEaseInFunction Unit for Jamoms DSP
 *
 * @details Modeled after the overshooting cubic y = x^3-x*sin(x*pi)
 *
 * @authors Timothy Place, Trond Lossius
 *
 * @copyright Copyright © 2007 by Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTBackEaseInFunction.h"

#define thisTTClass			TTBackEaseInFunction
#define thisTTClassName		"easeInBack"
#define thisTTClassTags		"dspFunctionLib, audio, processor, function"


TT_AUDIO_CONSTRUCTOR
{
	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);
}


TTBackEaseInFunction::~TTBackEaseInFunction()
{
	;
}


TTErr TTBackEaseInFunction::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	y = x * x * x - x * sin(x * kTTPi);;
	return kTTErrNone;
}


TTErr TTBackEaseInFunction::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

