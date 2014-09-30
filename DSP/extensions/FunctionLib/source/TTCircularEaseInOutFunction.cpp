/** @file
 *
 * @ingroup dspFunctionLib
 *
 * @brief #TTCircularEaseInOutFunction Unit for Jamoms DSP
 *
 * @details
 *
 * @authors Timothy Place, Trond Lossius
 *
 * @copyright Copyright © 2007 by Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTCircularEaseInOutFunction.h"

#define thisTTClass			TTCircularEaseInOutFunction
#define thisTTClassName		"easeInOutCircular"
#define thisTTClassTags		"dspFunctionLib, audio, processor, function"


TT_AUDIO_CONSTRUCTOR
{
	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);
}


TTCircularEaseInOutFunction::~TTCircularEaseInOutFunction()
{
	;
}


TTErr TTCircularEaseInOutFunction::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	y = x;
	return kTTErrNone;
}


TTErr TTCircularEaseInOutFunction::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

