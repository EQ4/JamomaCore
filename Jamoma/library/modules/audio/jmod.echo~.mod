max v2;#N vpatcher 45 58 1230 845;#P window setfont "Sans Serif" 9.;#P message 100 119 50 196617 /autodoc;#P flonum 53 44 40 9 0. 1. 8227 3 198 198 198 221 221 221 222 222 222 0 0 0;#P objectname Feedback;#P number 53 31 41 9 0 10000 8227 3 198 198 198 221 221 221 222 222 222 0 0 0;#P objectname Right;#P number 53 17 41 9 0 10000 8227 3 198 198 198 221 221 221 222 222 222 0 0 0;#P objectname Left;#P newex 716 631 74 196617 pvar Feedback;#P window linecount 2;#P newex 716 656 325 196617 jmod.parameter.mxt $0_ /feedback @type msg_float @ramp 1 @repetitions 0 @range 0. 1. @clipmode both @description "Feedback.";#P objectname jmod.parameter[1];#P window linecount 1;#P newex 716 550 57 196617 pvar Right;#P window linecount 2;#P newex 716 575 384 196617 jmod.parameter.mxt $0_ /right @type msg_int @ramp 1 @repetitions 0 @range 0 10000 @clipmode both @description "Delay time in milliseconds for right channel.";#P objectname jmod.parameter[2];#P window linecount 1;#P comment 4 46 50 196617 Feedback;#B frgb 172 172 172;#P newex 997 89 40 196617 t 1 s 0;#N vpatcher 564 189 1050 519;#P window setfont "Sans Serif" 9.;#P window linecount 2;#P comment 34 260 415 196617 Else "Restore Default Settings" will not function properly as past values for q \, filtergain and cf maintained in FilterGraph will overrule the attempt to reset values to defaults.;#P outlet 142 194 15 0;#P outlet 88 194 15 0;#P outlet 34 194 15 0;#P window linecount 1;#P newex 88 157 33 196617 atodb;#P inlet 179 35 15 0;#P inlet 125 35 15 0;#P inlet 71 35 15 0;#P newex 142 128 47 196617 gate 1 1;#P newex 88 128 47 196617 gate 1 1;#P window linecount 0;#P newex 34 128 47 196617 gate 1 1;#P inlet 263 35 15 0;#P comment 34 238 315 196617 Output from FilterFraph has to be muted when filtertype is changes.;#P connect 1 0 2 0;#P connect 2 0 9 0;#P connect 5 0 2 1;#P connect 1 0 3 0;#P connect 3 0 8 0;#P connect 8 0 10 0;#P connect 6 0 3 1;#P connect 1 0 4 0;#P connect 4 0 11 0;#P connect 7 0 4 1;#P pop;#P newobj 575 162 100 196617 p DecodeFilterGraph;#P user umenu 95 20 70 196647 1 64 36 1;#X add lowpass;#X add highpass;#X add bandpass;#X add bandstop;#X add peaknotch;#X add lowshelf;#X add highshelf;#P objectname FilterType;#P newex 261 2 124 196617 r $0_xxx_to_filtergraph;#P newex 557 407 124 196617 s $0_xxx_to_filtergraph;#N vpatcher 91 247 688 576;#P window setfont "Sans Serif" 9.;#P window linecount 1;#P newex 267 143 33 196617 dbtoa;#P window linecount 0;#P comment 401 232 119 196617 Set message to 6nd inlet;#P outlet 131 219 15 0;#P newex 131 177 215 196617 pak set 1200. 1. 1.;#P newex 335 119 50 196617 route set;#P inlet 199 50 15 0;#P newex 267 119 50 196617 route set;#P inlet 267 50 15 0;#P newex 199 119 50 196617 route set;#P inlet 335 50 15 0;#P comment 405 121 100 196617 Get rid of set;#P connect 7 0 8 0;#P connect 1 0 2 0;#P connect 2 0 7 1;#P connect 3 0 4 0;#P connect 4 0 10 0;#P connect 10 0 7 2;#P connect 5 0 6 0;#P connect 6 0 7 3;#P pop;#P newobj 557 383 124 196617 p PrepareForFiltergraph~;#P newex 716 14 89 196617 pvar FilterType 2;#P newex 562 137 93 196617 pvar FilterGraph 7;#P window linecount 2;#P newex 261 26 271 196617 jmod.message $0_ /filtergraph @description "Messages to filtergraph. See the MSP reference for further details";#P window linecount 3;#P newex 716 39 291 196617 jmod.parameter $0_ /filtertype @type menu @description "What kind of filter to use. Possible values: lowpass | highpass | bandpass | bandstop | peaknotch | lowshelf | highshelf";#P objectname jmod.parameter.mxb;#P window linecount 2;#P newex 716 262 306 196617 jmod.parameter $0_ /filtergain @type msg_float @range -24 24 @clipmode both @ramp 1 @repetitions 0 @description "Gain (dB)";#P objectname jmod.parameter.mxb[3];#P newex 716 186 309 196617 jmod.parameter $0_ /q @type msg_float @ramp 1 @range 0. 100. @clipmode both @repetitions 0 @description "Resonance (Q)";#P objectname jmod.parameter.mxb[2];#P newex 716 342 341 196617 jmod.parameter $0_ /cf @type msg_float @range 30. 11025. @clipmode both @ramp 1 @repetitions 0 @description "Center frequency (Hz)";#P objectname jmod.parameter.mxb[1];#P user filtergraph~ 165 19 88 39 3 9 20. 22050. 0.0625 16. 0 1 1 0 0 1 1;#X frgb 99 99 99;#X brgb 173 173 173;#X rgb2 0 0 0;#X rgb3 84 84 84;#X rgb4 0 0 0;#X rgb5 118 121 166;#X rgb6 122 74 74;#X rgb7 255 22 22;#X linmarkers 5512.5 11025. 16537.5;#X logmarkers 50. 500. 5000.;#X nfilters 1;#X setfilter 0 1 1 0 0 8571.957031 0.938949 0.80165 30. 11025. 0.0625 16. 0. 25.;#X done;#P objectname FilterGraph;#P window linecount 3;#P comment 712 390 257 196617 Convertion from freq \, gain and q to biquad coeffisients has to take place inside the poly~ (.alg) in case the poly is up- or downsampled.;#P window linecount 1;#P comment 4 33 36 196617 Right;#B frgb 172 172 172;#P window linecount 2;#P message 76 297 65 196617 \; max refresh;#P window linecount 1;#P newex 716 476 52 196617 pvar Left;#P window linecount 4;#P newex 0 140 169 196617 jmod.hub $0_ jmod.echo~ @size 1U-half @module_type audio @num_inputs 2 @num_outputs 2 @description "Stereo echo module.";#P objectname jmod.hub;#P window linecount 1;#P comment 14 121 79 196617 command input;#P inlet 0 121 13 0;#P window linecount 2;#P message 76 265 72 196617 \; jmod.init bang;#P window linecount 3;#P newex 173 140 79 196617 pattrstorage @autorestore 0 @savemode 0;#X client_rect 0 0 640 240;#X storage_rect 0 0 640 240;#P objectname jmod.echo~;#P hidden inlet 20 -20 13 0;#P hidden outlet 164 67 13 0;#P window linecount 2;#P newex 716 501 378 196617 jmod.parameter.mxt $0_ /left @type msg_int @ramp 1 @repetitions 0 @range 0 10000 @clipmode both @description "Delay time in milliseconds for left channel.";#P objectname jmod.parameter;#P hidden inlet 82 -18 13 0;#P window linecount 1;#P comment 4 19 36 196617 Left;#B frgb 172 172 172;#P newex 265 221 105 196617 poly~ jmod.echo~.alg;#P hidden comment 15 -30 105 196617 ----signal inputs----;#P outlet 0 215 13 0;#P hidden outlet 246 67 13 0;#P bpatcher 0 0 256 60 0 0 jmod.gui.mxt 0 $0_;#P objectname jmod.gui.1Uh.a.stereo.mxt;#P hidden comment 164 79 101 196617 ---signal outputs---;#P hidden connect 10 0 1 0;#P lcolor 6;#P connect 13 0 15 0;#P fasten 42 0 15 0 105 136 5 136;#P connect 15 0 3 0;#P hidden connect 7 0 1 1;#P lcolor 6;#P connect 11 0 15 1;#P hidden fasten 5 0 1 2 270 255 546 255 546 -13 169 -13;#P hidden connect 1 2 9 0;#P hidden connect 25 0 20 0;#P lcolor 6;#P connect 15 2 11 0;#P hidden connect 30 0 20 5;#P hidden fasten 5 1 1 3 365 250 539 250 539 -9 251 -9;#P hidden connect 1 3 2 0;#P fasten 15 1 5 0 84 211 270 211;#P hidden fasten 1 0 5 0 5 101 270 101;#P lcolor 6;#P hidden fasten 1 1 5 1 87 98 365 98;#P lcolor 6;#P connect 22 0 28 0;#P connect 28 0 29 0;#P fasten 33 1 26 0 1017 121 567 121;#P connect 26 1 32 0;#P connect 26 2 32 1;#P connect 23 0 28 1;#P connect 26 3 32 2;#P fasten 33 0 32 3 1002 135 670 135;#P lcolor 1;#P fasten 33 2 32 3 1032 135 670 135;#P lcolor 1;#P connect 21 0 28 2;#P fasten 24 0 27 0 721 83 709 83 709 9 721 9;#P fasten 27 1 24 0 800 35 721 35;#P connect 32 2 22 0;#P connect 32 1 23 0;#P connect 32 0 21 0;#P fasten 8 0 16 0 721 537 711 537 711 469 721 469;#P connect 16 0 8 0;#P fasten 35 0 36 0 721 611 711 611 711 543 721 543;#P connect 36 0 35 0;#P fasten 37 0 38 0 721 692 711 692 711 624 721 624;#P connect 38 0 37 0;#P connect 24 1 33 0;#P pop;