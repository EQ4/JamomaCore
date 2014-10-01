/** @file
 *
 * @ingroup dspFunctionLib
 *
 * @brief #TTQuinticEaseInOutFunction Unit for Jamoms DSP
 *
 * @details  Modeled after the piecewise quintic @n
 *  y = (1/2)((2x)^5)       ; [0, 0.5) @n
 *  y = (1/2)((2x-2)^5 + 2) ; [0.5, 1]
 *
 * @authors Timothy Place, Trond Lossius
 *
 * @copyright Copyright © 2007 by Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __TTQUINTICEASEINOUTFUNCTION_H__
#define __TTQUINTICEASEINOUTFUNCTION_H__

#include "TTDSP.h"


/**	This implements a function which basically does nothing: 
	y = f(x)
 */
class TTQuinticEaseInOutFunction : TTAudioObjectBase {
	TTCLASS_SETUP(TTQuinticEaseInOutFunction)

protected:

	/** y = f(x) for a single value */
	inline TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	
	/**	A standard audio processing method as used by TTBlue objects.*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

	/**	Unit Tests	*/
	virtual TTErr test(TTValue& returnedTestInfo);	
};


#endif // __TTQUINTICEASEINOUTFUNCTION_H__
