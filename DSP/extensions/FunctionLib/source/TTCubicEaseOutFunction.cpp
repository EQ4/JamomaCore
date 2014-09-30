/** @file
 *
 * @ingroup dspFunctionLib
 *
 * @brief #TTCubicEaseOutFunction Unit for Jamoms DSP
 *
 * @details
 *
 * @authors Timothy Place, Trond Lossius
 *
 * @copyright Copyright © 2007 by Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTCubicEaseOutFunction.h"

#define thisTTClass			TTCubicEaseOutFunction
#define thisTTClassName		"easeOutCubic"
#define thisTTClassTags		"dspFunctionLib, audio, processor, function"


TT_AUDIO_CONSTRUCTOR
{
	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);
}


TTCubicEaseOutFunction::~TTCubicEaseOutFunction()
{
	;
}


TTErr TTCubicEaseOutFunction::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	y = x;
	return kTTErrNone;
}


TTErr TTCubicEaseOutFunction::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

