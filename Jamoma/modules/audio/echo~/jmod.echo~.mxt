max v2;#N vpatcher 31 58 944 730;#P window setfont "Sans Serif" 9.;#P window linecount 1;#P hidden newex 351 412 47 196617 pcontrol;#P hidden newex 218 388 143 196617 jcom.algorithm_control~.mxt;#P hidden newex 38 454 82 196617 jalg.echo~.mxt;#P hidden message 187 621 86 196617 /preset/recall 1;#P hidden message 109 621 70 196617 /preset/post;#P hidden newex 74 484 82 196617 jcom.out~ 2;#P hidden newex 74 365 228 196617 jcom.in~ 2;#P hidden message 119 574 125 196617 /documentation/generate;#P flonum 53 44 40 9 0. 1. 8227 3 198 198 198 221 221 221 222 222 222 0 0 0;#P objectname Feedback;#P number 53 31 41 9 0 10000 8227 3 198 198 198 221 221 221 222 222 222 0 0 0;#P objectname Right;#P number 53 17 41 9 0 10000 8227 3 198 198 198 221 221 221 222 222 222 0 0 0;#P objectname Left;#P hidden newex 18 241 74 196617 pvar Feedback;#P window linecount 2;#P hidden newex 18 265 333 196617 jcom.parameter feedback @type msg_float @ramp.drive scheduler @repetitions 0 @range 0. 1. @clipmode both @description "Feedback.";#P objectname feedback;#P window linecount 1;#P hidden newex 18 161 57 196617 pvar Right;#P window linecount 2;#P hidden newex 18 184 392 196617 jcom.parameter right @type msg_int @ramp.drive scheduler @repetitions 0 @range 0 10000 @clipmode both @description "Delay time in milliseconds for right channel.";#P objectname right;#P window linecount 1;#P comment 4 46 50 196617 Feedback;#B frgb 172 172 172;#P hidden newex 606 160 40 196617 t 1 s 0;#N vpatcher 564 189 1050 519;#P window setfont "Sans Serif" 9.;#P window linecount 2;#P comment 34 260 415 196617 Else "Restore Default Settings" will not function properly as past values for q \, filtergain and cf maintained in FilterGraph will overrule the attempt to reset values to defaults.;#P outlet 142 194 15 0;#P outlet 88 194 15 0;#P outlet 34 194 15 0;#P window linecount 1;#P newex 88 157 33 196617 atodb;#P inlet 179 35 15 0;#P inlet 125 35 15 0;#P inlet 71 35 15 0;#P newex 142 128 47 196617 gate 1 1;#P newex 88 128 47 196617 gate 1 1;#P window linecount 0;#P newex 34 128 47 196617 gate 1 1;#P inlet 263 35 15 0;#P comment 34 238 315 196617 Output from FilterFraph has to be muted when filtertype is changes.;#P connect 1 0 2 0;#P connect 2 0 9 0;#P connect 5 0 2 1;#P connect 1 0 3 0;#P connect 3 0 8 0;#P connect 8 0 10 0;#P connect 6 0 3 1;#P connect 1 0 4 0;#P connect 4 0 11 0;#P connect 7 0 4 1;#P pop;#P hidden newobj 436 226 100 196617 p DecodeFilterGraph;#P user umenu 95 20 70 196647 1 64 36 1;#X add lowpass;#X add highpass;#X add bandpass;#X add bandstop;#X add peaknotch;#X add lowshelf;#X add highshelf;#P objectname FilterType;#P hidden newex 261 2 124 196617 r $0_xxx_to_filtergraph;#P hidden newex 399 373 124 196617 s $0_xxx_to_filtergraph;#N vpatcher 91 247 688 576;#P window setfont "Sans Serif" 9.;#P window linecount 1;#P newex 267 143 33 196617 dbtoa;#P window linecount 0;#P comment 401 232 119 196617 Set message to 6nd inlet;#P outlet 131 219 15 0;#P newex 131 177 215 196617 pak set 1200. 1. 1.;#P newex 335 119 50 196617 route set;#P inlet 199 50 15 0;#P newex 267 119 50 196617 route set;#P inlet 267 50 15 0;#P newex 199 119 50 196617 route set;#P inlet 335 50 15 0;#P comment 405 121 100 196617 Get rid of set;#P connect 7 0 8 0;#P connect 1 0 2 0;#P connect 2 0 7 1;#P connect 3 0 4 0;#P connect 4 0 10 0;#P connect 10 0 7 2;#P connect 5 0 6 0;#P connect 6 0 7 3;#P pop;#P hidden newobj 399 349 124 196617 p PrepareForFiltergraph~;#P hidden newex 458 85 89 196617 pvar FilterType 2;#P hidden newex 423 201 93 196617 pvar FilterGraph 7;#P window linecount 2;#P hidden newex 261 26 266 196617 jcom.message filtergraph @description "Messages to filtergraph. See the MSP reference for further details";#P window linecount 3;#P hidden newex 458 110 306 196617 jcom.parameter filtertype @type msg_symbol @repetitions 0 @description "What kind of filter to use. Possible values: lowpass | highpass | bandpass | bandstop | peaknotch | lowshelf | highshelf";#P objectname filtertype;#P window linecount 2;#P hidden newex 550 296 330 196617 jcom.parameter filtergain @type msg_float @range -24 24 @clipmode both @ramp.drive scheduler @repetitions 0 @description "Gain (dB)";#P objectname filtergain;#P hidden newex 549 252 311 196617 jcom.parameter q @type msg_float @ramp.drive scheduler @range 0. 100. @clipmode both @repetitions 0 @description "Resonance (Q)";#P objectname q;#P hidden newex 549 336 341 196617 jcom.parameter cf @type msg_float @range 30. 11025. @clipmode both @ramp.drive scheduler @repetitions 0 @description "Center frequency (Hz)";#P objectname cf;#P user filtergraph~ 165 19 88 39 3 9 20. 22050. 0.0625 16. 0 1 1 0 0 1 1;#X frgb 99 99 99;#X brgb 173 173 173;#X rgb2 0 0 0;#X rgb3 84 84 84;#X rgb4 0 0 0;#X rgb5 118 121 166;#X rgb6 122 74 74;#X rgb7 255 22 22;#X linmarkers 5512.5 11025. 16537.5;#X logmarkers 50. 500. 5000.;#X nfilters 1;#X setfilter 0 1 1 0 0 8571.957031 0.938949 0.801651 30. 11025. 0.0625 16. 0. 25.;#X done;#P objectname FilterGraph;#P window linecount 3;#P hidden comment 546 387 257 196617 Convertion from freq \, gain and q to biquad coeffisients has to take place inside the poly~ (.alg) in case the poly is up- or downsampled.;#P window linecount 1;#P comment 4 33 36 196617 Right;#B frgb 172 172 172;#P window linecount 2;#P hidden message 319 564 65 196617 \; max refresh;#P window linecount 1;#P hidden newex 18 87 52 196617 pvar Left;#P hidden newex 19 600 436 196617 jcom.hub jmod.echo~ @size 1U-half @module_type audio @description "Stereo echo module.";#P objectname jcom.hub;#P hidden comment 33 574 79 196617 command input;#P hidden inlet 19 575 13 0;#P hidden message 248 574 37 196617 /init;#P hidden inlet 74 344 13 0;#P hidden outlet 74 508 13 0;#P window linecount 2;#P hidden newex 18 110 383 196617 jcom.parameter left @type msg_int @ramp.drive scheduler @repetitions 0 @range 0 10000 @clipmode both @description "Delay time in milliseconds for left channel.";#P objectname left;#P hidden inlet 292 344 13 0;#P window linecount 1;#P comment 4 19 36 196617 Left;#B frgb 172 172 172;#P hidden comment 93 344 113 196617 ----signal inputs----;#P hidden outlet 19 629 13 0;#P hidden outlet 110 508 13 0;#P hidden comment 74 522 101 196617 ---signal outputs---;#P bpatcher 0 0 256 60 0 0 jcom.gui.mxt 0;#P objectname jcom.gui.1Uh.a.stereo.mxt;#P hidden fasten 7 0 14 0 23 148 13 148 13 80 23 80;#P hidden connect 14 0 7 0;#P hidden fasten 33 0 34 0 23 222 13 222 13 154 23 154;#P hidden connect 34 0 33 0;#P hidden fasten 35 0 36 0 23 303 13 303 13 235 23 235;#P hidden connect 36 0 35 0;#P hidden fasten 10 0 13 0 253 596 24 596;#P hidden fasten 40 0 13 0 124 594 24 594;#P hidden connect 11 0 13 0;#P hidden connect 43 0 13 0;#P hidden connect 44 0 13 0;#P hidden connect 13 0 3 0;#P hidden fasten 47 0 45 0 356 441 43 441;#P hidden fasten 46 0 45 0 223 438 43 438;#P hidden connect 9 0 41 0;#P hidden connect 41 0 45 1;#P hidden connect 45 1 42 0;#P hidden connect 42 0 8 0;#P hidden fasten 41 1 45 2 151 391 115 391;#P hidden connect 42 1 2 0;#P hidden fasten 45 2 42 1 115 477 151 477;#P hidden connect 23 0 18 0;#P hidden connect 41 2 46 0;#P hidden connect 28 0 18 5;#P hidden connect 6 0 41 1;#P hidden connect 46 1 47 0;#P hidden connect 20 0 26 0;#P hidden connect 26 0 27 0;#P hidden fasten 31 1 24 0 626 187 428 187;#P hidden connect 24 1 30 0;#P hidden connect 21 0 26 1;#P hidden fasten 22 0 25 0 463 159 454 159 454 77 463 77;#P hidden fasten 25 1 22 0 542 106 463 106;#P hidden connect 24 2 30 1;#P hidden connect 24 3 30 2;#P hidden connect 19 0 26 2;#P hidden fasten 31 0 30 3 611 201 531 201;#P lcolor 1;#P hidden fasten 31 2 30 3 641 201 531 201;#P lcolor 1;#P hidden connect 30 2 20 0;#P hidden connect 30 0 19 0;#P hidden connect 30 1 21 0;#P hidden connect 22 1 31 0;#P pop;