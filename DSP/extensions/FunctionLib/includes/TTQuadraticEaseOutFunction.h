/** @file
 *
 * @ingroup dspFunctionLib
 *
 * @brief #TTQuadraticEaseOutFunction Unit for Jamoms DSP
 *
 * @details Modeled after the parabola y = -x^2 + 2x
 *
 * @authors Timothy Place, Trond Lossius
 *
 * @copyright Copyright © 2007 by Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __TTQUADRATICEASEOUTFUNCTION_H__
#define __TTQUADRATICEASEOUTFUNCTION_H__

#include "TTDSP.h"


/**	This implements a function which basically does nothing: 
	y = f(x)
 */
class TTQuadraticEaseOutFunction : TTAudioObjectBase {
	TTCLASS_SETUP(TTQuadraticEaseOutFunction)

protected:

	/** y = f(x) for a single value */
	inline TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	
	/**	A standard audio processing method as used by TTBlue objects.*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

	/**	Unit Tests	*/
	virtual TTErr test(TTValue& returnedTestInfo);	
};


#endif // __TTQUADRATICEASEOUTFUNCTION_H__
