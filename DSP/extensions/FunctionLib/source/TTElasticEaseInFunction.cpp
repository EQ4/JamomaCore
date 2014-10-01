/** @file
 *
 * @ingroup dspFunctionLib
 *
 * @brief #TTElasticEaseInFunction Unit for Jamoms DSP
 *
 * @details Modeled after the damped sine wave y = sin(13pi/2*x)*pow(2, 10 * (x - 1))
 *
 * @authors Timothy Place, Trond Lossius
 *
 * @copyright Copyright © 2007 by Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTElasticEaseInFunction.h"

#define thisTTClass			TTElasticEaseInFunction
#define thisTTClassName		"easeInElastic"
#define thisTTClassTags		"dspFunctionLib, audio, processor, function"


TT_AUDIO_CONSTRUCTOR
{
	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);
}


TTElasticEaseInFunction::~TTElasticEaseInFunction()
{
	;
}


TTErr TTElasticEaseInFunction::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	y = sin(6.5 * kTTPi * x) * pow(2, 10 * (x - 1));;
	return kTTErrNone;
}


TTErr TTElasticEaseInFunction::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

