/* 
 * TTBlue Cycling Ramp Generator
 * Copyright © 2008, Timothy Place & Dave Watson
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_ADSR_H__
#define __TT_ADSR_H__

#include "TTAudioObject.h"

/**	TTAdsr is an attack-decay-sustain-release envelope generator */
class TTEXPORT TTAdsr : public TTAudioObject {
protected:
	TTFloat64	attack_ms;
	TTInt32		attack_samples;
	TTFloat64	attack_step;
	TTFloat64	attack_step_db;
	
	TTFloat64	decay_ms;
	TTInt32		decay_samples;
	TTFloat64	decay_step;
	TTFloat64	decay_step_db;
	
	TTFloat64	sustain_amp;
	TTFloat64	sustain_db;
	
	TTFloat64	release_ms;
	TTInt32		release_samples;
	TTFloat64	release_step;
	TTFloat64	release_step_db;
	
	TTSampleValue output;
	TTSampleValue output_db;
	
	TTInt16		eg_state;
	TTBoolean	trigger;
	
	TTSymbol*	attrMode;
	
	TTErr updateSr();

	TTErr processAudioLinear(TTAudioSignal& in, TTAudioSignal& out);
	TTErr processAudioExponential(TTAudioSignal& in, TTAudioSignal& out);
	
	enum constants {
		NOISE_FLOOR = -120
	};
	
	enum eg_states {
		k_eg_inactive,
		k_eg_attack,
		k_eg_decay,
		k_eg_sustain,
		k_eg_release
	};
		
	
public:
	TTAdsr(TTUInt16 newMaxNumChannels);
	virtual ~TTAdsr();
	
	TTErr setAttack(const TTValue& newValue);
	TTErr setDecay(const TTValue& newValue);
	TTErr setSustainDb(const TTValue& newValue);
	TTErr getSustainDb(TTValue& newValue);	
	TTErr setSustainAmp(const TTValue& value);
	TTErr setRelease(const TTValue& newValue);
	TTErr setMode(const TTValue& newValue);
};

#endif

