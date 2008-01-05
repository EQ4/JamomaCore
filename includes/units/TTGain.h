/* 
 * TTBlue Gain Control Object
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_GAIN_H__
#define __TT_GAIN_H__


#include "TTAudioObject.h"

/**	TTGain is an exceptionally simple audio processor scales an input audio signal */
class TTGain : public TTAudioObject {
private:
	TTFloat32		gain;	///< linear gain to be applied to the input signal

	/** setter for converting gain input from db to linear. */
	TTErr setGain(const TTValue& newValue);

	/** getter for converting gain input from linear to db. */
	TTErr getGain(TTValue& value);

	/**	A standard audio processing method as used by TTBlue objects.*/
	TTErr processAudio(TTAudioSignal& in, TTAudioSignal& out);

public:

	/**	Constructor. */
	TTGain(TTUInt8 newMaxNumChannels);

	/**	Destructor. */
	~TTGain();
};


#endif // __TT_GAIN_H__
