max v2;
#N vpatcher 543 54 1314 853;
#P window setfont "Sans Serif" 9.;
#P window linecount 1;
#P hidden newex 615 633 47 196617 pcontrol;
#P hidden newex 482 609 143 196617 jcom.algorithm_control~.mxt;
#P hidden newex 432 692 64 196617 jcom.out~ 2;
#P hidden newex 432 586 87 196617 jcom.in~ 2;
#P hidden newex 250 195 40 196617 t 1 s 0;
#N vpatcher 564 189 1050 519;
#P window setfont "Sans Serif" 9.;
#P window linecount 2;
#P comment 34 260 415 196617 Else "Restore Default Settings" will not function properly as past values for q \, filtergain and cf maintained in FilterGraph will overrule the attempt to reset values to defaults.;
#P outlet 142 194 15 0;
#P outlet 88 194 15 0;
#P outlet 34 194 15 0;
#P window linecount 1;
#P newex 88 157 33 196617 atodb;
#P inlet 179 35 15 0;
#P inlet 125 35 15 0;
#P inlet 71 35 15 0;
#P newex 142 128 47 196617 gate 1 1;
#P newex 88 128 47 196617 gate 1 1;
#P window linecount 0;
#P newex 34 128 47 196617 gate 1 1;
#P inlet 263 35 15 0;
#P comment 34 238 315 196617 Output from FilterFraph has to be muted when filtertype is changes.;
#P connect 1 0 2 0;
#P connect 2 0 9 0;
#P connect 5 0 2 1;
#P connect 1 0 3 0;
#P connect 3 0 8 0;
#P connect 8 0 10 0;
#P connect 6 0 3 1;
#P connect 1 0 4 0;
#P connect 4 0 11 0;
#P connect 7 0 4 1;
#P pop;
#P hidden newobj 41 263 100 196617 p DecodeFilterGraph;
#P hidden message 135 609 125 196617 /documentation/generate;
#P window linecount 2;
#P hidden message 298 641 65 196617 \; max refresh;
#P user umenu 6 30 70 196647 1 64 46 1;
#X setrgb 225 225 225 68 68 68 91 91 91 17 17 17 58 58 58 0 0 0 50 50 50;
#X add lowpass;
#X add highpass;
#X add bandpass;
#X add bandstop;
#X add peaknotch;
#X add lowshelf;
#X add highshelf;
#P objectname FilterType;
#P window linecount 1;
#P hidden newex 262 21 124 196617 r $0_xxx_to_filtergraph;
#P hidden newex 23 508 124 196617 s $0_xxx_to_filtergraph;
#N vpatcher 91 247 688 576;
#P window setfont "Sans Serif" 9.;
#P window linecount 1;
#P newex 267 143 33 196617 dbtoa;
#P window linecount 0;
#P comment 401 232 119 196617 Set message to 6nd inlet;
#P outlet 96 274 15 0;
#P newex 96 232 215 196617 pak set 1200. 1. 1.;
#P newex 335 119 50 196617 route set;
#P inlet 199 50 15 0;
#P newex 267 119 50 196617 route set;
#P inlet 267 50 15 0;
#P newex 199 119 50 196617 route set;
#P inlet 335 50 15 0;
#P comment 405 121 100 196617 Get rid of set;
#P connect 7 0 8 0;
#P connect 2 0 7 1;
#P connect 1 0 2 0;
#P connect 10 0 7 2;
#P connect 3 0 4 0;
#P connect 4 0 10 0;
#P connect 6 0 7 3;
#P connect 5 0 6 0;
#P pop;
#P hidden newobj 23 484 124 196617 p PrepareForFiltergraph~;
#P flonum 113 19 40 9 30. 11025. 8227 3 198 198 198 221 221 221 222 222 222 0 0 0;
#P objectname CenterFreq;
#P hidden newex 182 339 75 196617 pvar FilterGain;
#P hidden newex 182 263 39 196617 pvar Q;
#P hidden newex 182 422 83 196617 pvar CenterFreq;
#P hidden newex 50 129 89 196617 pvar FilterType 2;
#P hidden newex 28 238 93 196617 pvar FilterGraph 7;
#P hidden message 262 609 37 196617 /init;
#P window linecount 2;
#P hidden newex 262 45 266 196617 jcom.message filtergraph @description "Messages to filtergraph. See the MSP reference for further details";
#P flonum 113 32 40 9 0. 100. 8227 3 198 198 198 221 221 221 222 222 222 0 0 0;
#P objectname Q;
#P hidden newex 50 154 410 196617 jcom.parameter filtertype @type msg_symbol @description "What kind of filter to use. Possible values: lowpass | highpass | bandpass | bandstop | peaknotch | lowshelf | highshelf";
#P objectname filtertype;
#P hidden newex 182 363 330 196617 jcom.parameter filtergain @type msg_float @range -24 24 @clipmode both @ramp.drive scheduler @repetitions 0 @description "Gain (dB)";
#P objectname filtergain;
#P hidden newex 182 287 311 196617 jcom.parameter q @type msg_float @ramp.drive scheduler @range 0. 100. @clipmode both @repetitions 0 @description "Resonance (Q)";
#P objectname q;
#P hidden newex 182 443 341 196617 jcom.parameter cf @type msg_float @range 30. 11025. @clipmode both @ramp.drive scheduler @repetitions 0 @description "Center frequency (Hz)";
#P objectname cf;
#P window linecount 1;
#P comment 90 34 27 196617 Q/S;
#B frgb 172 172 172;
#P flonum 113 45 40 9 -24. 24. 8227 3 198 198 198 221 221 221 222 222 222 0 0 0;
#P objectname FilterGain;
#P comment 98 21 18 196617 cf;
#B frgb 172 172 172;
#P comment 90 47 25 196617 gain;
#B frgb 172 172 172;
#P hidden newex 397 665 81 196617 jalg.filter~.mxt;
#P user filtergraph~ 166 20 88 39 3 9 20. 22050. 0.0625 16. 0 1 1 0 0 1 1;
#X frgb 99 99 99;
#X brgb 173 173 173;
#X rgb2 0 0 0;
#X rgb3 84 84 84;
#X rgb4 0 0 0;
#X rgb5 118 121 166;
#X rgb6 122 74 74;
#X rgb7 255 22 22;
#X linmarkers 5512.5 11025. 16537.5;
#X logmarkers 50. 500. 5000.;
#X nfilters 1;
#X setfilter 0 1 1 0 0 1559. 1. 1.010001 30. 11025. 0.0625 16. 0. 25.;
#X done;
#P objectname FilterGraph;
#P hidden comment 431 734 101 196617 ---signal outputs---;
#P hidden comment 46 610 79 196617 command input;
#P hidden outlet 459 718 13 0;
#P hidden inlet 432 568 13 0;
#P hidden comment 430 550 105 196617 ----signal inputs----;
#P hidden outlet 32 680 13 0;
#P hidden inlet 509 568 13 0;
#P hidden outlet 432 718 13 0;
#P hidden inlet 32 610 13 0;
#P window linecount 3;
#P hidden comment 183 487 257 196617 Convertion from freq \, gain and q to biquad coeffisients has to take place inside the poly~ (.alg) in case the poly is up- or downsampled.;
#P window linecount 2;
#P hidden newex 32 640 283 196617 jcom.hub jmod.filter~ @size 1U-half @module_type audio @description "Stereo 2nd order IIR filter based on biquad~";
#P objectname jcom.hub;
#P bpatcher 0 0 255 60 0 0 jcom.gui.mxt 0;
#P objectname jcom.gui.1Uh.a.stereo.mxb;
#P hidden connect 19 0 31 0;
#P hidden connect 31 0 32 0;
#P hidden fasten 38 1 25 0 270 222 33 222;
#P hidden fasten 36 0 1 0 140 631 37 631;
#P hidden connect 3 0 1 0;
#P hidden fasten 24 0 1 0 267 634 37 634;
#P hidden connect 1 0 6 0;
#P hidden connect 25 1 37 0;
#P hidden fasten 21 0 26 0 55 198 43 198 43 124 55 124;
#P hidden fasten 26 1 21 0 134 150 55 150;
#P hidden connect 25 2 37 1;
#P hidden connect 20 0 31 1;
#P hidden connect 25 3 37 2;
#P hidden fasten 38 2 37 3 285 236 136 236;
#P lcolor 1;
#P hidden fasten 38 0 37 3 255 236 136 236;
#P lcolor 1;
#P hidden connect 18 0 31 2;
#P hidden connect 23 0 12 0;
#P lcolor 6;
#P hidden fasten 19 0 28 0 187 319 176 319 176 254 187 254;
#P hidden connect 28 0 19 0;
#P hidden connect 37 2 19 0;
#P hidden fasten 20 0 29 0 187 395 175 395 175 335 187 335;
#P hidden connect 29 0 20 0;
#P hidden connect 37 1 20 0;
#P hidden fasten 18 0 27 0 187 475 178 475 178 416 187 416;
#P hidden connect 27 0 18 0;
#P hidden connect 37 0 18 0;
#P hidden connect 33 0 12 5;
#P lcolor 6;
#P hidden fasten 21 1 38 0 255 189 255 189;
#P hidden fasten 41 0 13 0 487 657 402 657;
#P hidden fasten 42 0 13 0 620 657 402 657;
#P hidden connect 8 0 39 0;
#P hidden connect 39 0 13 1;
#P hidden connect 13 1 40 0;
#P hidden connect 40 0 4 0;
#P hidden connect 40 1 9 0;
#P hidden connect 39 1 13 2;
#P hidden connect 39 2 41 0;
#P hidden connect 13 2 40 1;
#P hidden connect 5 0 39 1;
#P hidden connect 41 1 42 0;
#P pop;
