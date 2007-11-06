max v2;#N vpatcher 43 44 1130 796;#P origin 0 -410;#P window setfont "Sans Serif" 9.;#P window linecount 2;#P newex 671 676 332 196617 jcom.parameter source/orientation/elevation @type msg_float @range 0. 90. @description "orientation of the sound source (elevation)";#P objectname source/orientation/elevation;#P newex 670 640 326 196617 jcom.parameter source/orientation/azimuth @type msg_float @range -180. 180. @description "orientation of the sound source (azimuth)";#P objectname source/orientation/azimuth;#P window linecount 1;#P hidden newex 590 682 75 196617 pvar source_E;#P objectname pvar_E;#P hidden newex 588 645 77 196617 pvar source_A;#P objectname pvar_A;#P newex 596 611 70 196617 pvar warning;#P window linecount 2;#P newex 669 605 306 196617 jcom.parameter warning @type msg_int @range 0 1 @clipmode both @description "turn on/off warnings inside the vimic module";#P objectname warning[1];#P user hint 107 3 120 15 "warnings on/off" 2500 1000 0 65535 65535 52428 9 3 0 1 0 0 0;#P user hint 122 3 135 15 "report on/off" 2500 1000 0 65535 65535 52428 9 3 0 1 0 0 0;#P toggle 109 3 13 0;#P objectname warning;#P newex 582 567 229 196617 jcom.message audio/meters/clear @type msg_none @description "clear the audio meters";#P objectname jcom.parameter[2];#P window linecount 1;#P newex 842 216 55 196617 pvar posD;#P newex 748 216 54 196617 pvar posE;#P newex 654 216 56 196617 pvar posA;#P newex 584 537 378 196617 jcom.message update @type msg_none @description "update from external clock";#P objectname jcom.parameter[1];#N vpatcher 10 59 610 459;#P window setfont "Sans Serif" 9.;#P newex 50 50 51 196617 route set;#P newex 51 71 68 196617 jcom.miditoa;#P inlet 50 30 15 0;#P outlet 51 93 15 0;#P connect 1 0 3 0;#P connect 3 0 2 0;#P connect 2 0 0 0;#P pop;#P newobj 521 39 48 196617 p midi2a;#P newex 449 6 68 196617 jcom.atomidi;#N vpatcher 10 59 610 459;#P window setfont "Sans Serif" 9.;#P newex 50 50 51 196617 route set;#P newex 51 71 68 196617 jcom.miditoa;#P inlet 50 30 15 0;#P outlet 51 93 15 0;#P connect 1 0 3 0;#P connect 3 0 2 0;#P connect 2 0 0 0;#P pop;#P newobj 494 94 48 196617 p midi2a;#P newex 424 60 68 196617 jcom.atomidi;#P message 157 284 30 196617 open;#N vpatcher 605 157 1205 557;#P origin -71 0;#P window setfont "Sans Serif" 9.;#P window linecount 0;#P message -8 168 90 196617 /rendermode mute;#P newex 79 129 41 196617 sel 1 0;#P message 84 168 104 196617 /rendermode unmute;#P window linecount 1;#P newex 198 54 134 196617 jcom.oscroute /audio/mute;#P newex 198 81 31 196617 == 0;#P message 198 127 62 196617 enable \$1 1;#P newex 116 54 78 196617 jcom.pass open;#P outlet 84 226 15 0;#P outlet 198 161 15 0;#N comlet Connect to 2nd last outlet of jcom.in~;#P inlet 116 33 15 0;#P connect 8 0 9 0;#P connect 6 0 8 0;#P connect 8 1 7 0;#P connect 7 0 2 0;#P fasten 6 1 2 0 327 190 89 190;#P fasten 9 0 2 0 -3 190 89 190;#P connect 0 0 3 0;#P connect 3 1 6 0;#P connect 6 0 5 0;#P connect 5 0 4 0;#P connect 4 0 1 0;#P connect 3 0 1 0;#P pop;#P newobj 298 283 105 196617 p algorithm_control~;#P user hint 42 26 102 40 "ViMiC render method" 2500 1000 0 65535 65535 52428 9 3 0 1 0 0 0;#P newex 610 501 68 196617 pvar order 2;#P window linecount 2;#P newex 685 494 349 196617 jcom.parameter reflections/order @type msg_int @range 0 2 @repetitions 0 @priority 1 @clipmode both @description "order of early reflections";#P objectname reflections/order;#P user ubumenu 128 24 22 196617 0 0 1 0;#X setrgb 181 181 181 25 25 25 50 50 50 4 4 4 141 141 141 112 112 112;#X add 0;#X add 1;#X add 2;#X prefix_set 0 0 <none> 0;#P objectname order;#P window linecount 1;#N vpatcher 351 66 820 599;#P origin 17 16;#P window setfont "Sans Serif" 9.;#P number 244 448 47 9 10 0 8225 3 181 181 181 221 221 221 222 222 222 0 0 0;#P objectname early_lowcut;#P window linecount 0;#P comment 194 449 51 196617 air filter:;#B frgb 149 149 149;#P flonum 266 431 28 9 0. 40. 8227 3 181 181 181 221 221 221 255 255 255 0 0 0;#P objectname roomsizeZ;#P flonum 238 431 28 9 0. 40. 8227 3 181 181 181 221 221 221 255 255 255 0 0 0;#P objectname roomsizeY;#P flonum 210 431 28 9 0. 40. 8227 3 181 181 181 221 221 221 255 255 255 0 0 0;#P objectname roomsizeX;#P comment 146 433 61 196617 Size x/y/z;#B frgb 149 149 149;#P window linecount 2;#P newex 1052 785 404 196617 jcom.parameter room/absorption/ceiling/high @type msg_float @repetitions 0 @range 0. 100. @clipmode low @description "absorption for the high frequencies of the ceiling";#P objectname room/absorption/ceiling/high;#P newex 1052 740 402 196617 jcom.parameter room/absorption/ceiling/mid @type msg_float @repetitions 0 @range 0. 100. @clipmode low @description "absorption for the mid frequencies of the ceiling";#P objectname room/absorption/ceiling/mid;#P newex 1052 694 402 196617 jcom.parameter room/absorption/ceiling/low @type msg_float @repetitions 0 @range 0. 100. @clipmode low @description "absorption for the low frequencies of the ceiling";#P objectname room/absorption/ceiling/low;#P window linecount 1;#P newex 973 799 66 196617 pvar ceil_hg;#P newex 973 760 69 196617 pvar ceil_mg;#P newex 973 708 64 196617 pvar ceil_lg;#P window linecount 3;#P newex 1050 651 292 196617 jcom.parameter room/absorption/floor/high @type msg_float @repetitions 0 @range 0. 100. @clipmode low @description "absorption for the high frequencies of the floor wall";#P objectname room/absorption/floor/high;#P newex 1050 606 290 196617 jcom.parameter room/absorption/floor/mid @type msg_float @repetitions 0 @range 0. 100. @clipmode low @description "absorption for the mid frequencies of the floor wall";#P objectname room/absorption/floor/mid;#P newex 1050 560 290 196617 jcom.parameter room/absorption/floor/low @type msg_float @repetitions 0 @range 0. 100. @clipmode low @description "absorption for the low frequencies of the floor wall";#P objectname room/absorption/floor/low;#P window linecount 1;#P newex 971 665 72 196617 pvar floor_hg;#P newex 971 626 75 196617 pvar floor_mg;#P newex 971 574 70 196617 pvar floor_lg;#P window linecount 3;#P newex 1049 517 292 196617 jcom.parameter room/absorption/right/high @type msg_float @repetitions 0 @range 0. 100. @clipmode low @description "absorption for the high frequencies of the right wall";#P objectname room/absorption/right/high;#P newex 1049 472 290 196617 jcom.parameter room/absorption/right/mid @type msg_float @repetitions 0 @range 0. 100. @clipmode low @description "absorption for the mid frequencies of the right wall";#P objectname room/absorption/right/mid;#P newex 1049 426 290 196617 jcom.parameter room/absorption/right/low @type msg_float @repetitions 0 @range 0. 100. @clipmode low @description "absorption for the low frequencies of the right wall";#P objectname room/absorption/right/low;#P window linecount 1;#P newex 970 531 72 196617 pvar right_hg;#P newex 970 492 75 196617 pvar right_mg;#P newex 970 440 70 196617 pvar right_lg;#P window linecount 3;#P newex 1047 380 286 196617 jcom.parameter room/absorption/left/high @type msg_float @repetitions 0 @range 0. 100. @clipmode low @description "absorption for the high frequencies of the left wall";#P objectname room/absorption/left/high;#P newex 1047 335 284 196617 jcom.parameter room/absorption/left/mid @type msg_float @repetitions 0 @range 0. 100. @clipmode low @description "absorption for the mid frequencies of the left wall";#P objectname room/absorption/left/mid;#P newex 1047 289 284 196617 jcom.parameter room/absorption/left/low @type msg_float @repetitions 0 @range 0. 100. @clipmode low @description "absorption for the low frequencies of the left wall";#P objectname room/absorption/left/low;#P window linecount 1;#P newex 968 394 66 196617 pvar left_hg;#P newex 968 355 69 196617 pvar left_mg;#P newex 968 303 64 196617 pvar left_lg;#P comment 230 363 45 196617 mid/high;#B frgb 149 149 149;#P comment 174 363 45 196617 low/mid;#B frgb 149 149 149;#P comment 103 363 26 196617 high;#B frgb 149 149 149;#P comment 72 363 26 196617 mids;#B frgb 149 149 149;#P comment 42 363 24 196617 low;#B frgb 149 149 149;#P window linecount 3;#P newex 1047 244 290 196617 jcom.parameter room/absorption/rear/high @type msg_float @repetitions 0 @range 0. 100. @clipmode low @description "absorption for the high frequencies of the rear wall";#P objectname room/absorption/rear/high;#P newex 1047 198 288 196617 jcom.parameter room/absorption/rear/mid @type msg_float @repetitions 0 @range 0. 100. @clipmode low @description "absorption for the mid frequencies of the rear wall";#P objectname room/absorption/rear/mid;#P newex 1047 152 288 196617 jcom.parameter room/absorption/rear/low @type msg_float @repetitions 0 @range 0. 100. @clipmode low @description "absorption for the low frequencies of the rear wall";#P objectname room/absorption/rear/low;#P window linecount 1;#P newex 968 258 70 196617 pvar back_hg;#P newex 968 218 73 196617 pvar back_mg;#P newex 968 166 68 196617 pvar back_lg;#P window linecount 3;#P newex 1047 106 293 196617 jcom.parameter room/absorption/front/high @type msg_float @repetitions 0 @range 0. 100. @clipmode low @description "absorption for the high frequencies of the front wall";#P objectname room/absorption/front/high;#P newex 1047 59 291 196617 jcom.parameter room/absorption/front/mid @type msg_float @repetitions 0 @range 0. 100. @clipmode low @description "absorption for the mid frequencies of the front wall";#P objectname room/absorption/front/mid;#P newex 1047 13 294 196617 jcom.parameter room/absorption/front/low @type msg_float @repetitions 0 @range 0. 100. @clipmode low @description "absorption for the low frequencies of the front wall";#P objectname room/absorption/front/low;#P window linecount 1;#P newex 968 120 73 196617 pvar front_hg;#P newex 968 74 76 196617 pvar front_mg;#P window linecount 0;#P newex 968 27 71 196617 pvar front_lg;#P flonum 105 446 28 9 0. 100. 8227 3 181 181 181 221 221 221 255 255 255 0 0 0;#P objectname ceil_hg;#P flonum 105 432 28 9 0. 100. 8227 3 181 181 181 221 221 221 255 255 255 0 0 0;#P objectname flor_hg;#P flonum 105 418 28 9 0. 100. 8227 3 181 181 181 221 221 221 255 255 255 0 0 0;#P objectname right_hg;#P flonum 105 404 28 9 0. 100. 8227 3 181 181 181 221 221 221 255 255 255 0 0 0;#P objectname left_hg;#P flonum 105 390 28 9 0. 100. 8227 3 181 181 181 221 221 221 255 255 255 0 0 0;#P objectname back_hg;#P flonum 105 376 28 9 0. 100. 8227 3 181 181 181 221 221 221 255 255 255 0 0 0;#P objectname front_hg;#P flonum 75 446 28 9 0. 100. 8227 3 181 181 181 221 221 221 255 255 255 0 0 0;#P objectname ceil_mg;#P flonum 75 432 28 9 0. 100. 8227 3 181 181 181 221 221 221 255 255 255 0 0 0;#P objectname floor_mg;#P flonum 75 418 28 9 0. 100. 8227 3 181 181 181 221 221 221 255 255 255 0 0 0;#P objectname right_mg;#P flonum 75 404 28 9 0. 100. 8227 3 181 181 181 221 221 221 255 255 255 0 0 0;#P objectname left_mg;#P flonum 75 390 28 9 0. 100. 8227 3 181 181 181 221 221 221 255 255 255 0 0 0;#P objectname back_mg;#P flonum 75 376 28 9 0. 100. 8227 3 181 181 181 221 221 221 255 255 255 0 0 0;#P objectname front_mg;#P flonum 44 446 28 9 0. 100. 8227 3 181 181 181 221 221 221 255 255 255 0 0 0;#P objectname ceil_lg;#P flonum 44 432 28 9 0. 100. 8227 3 181 181 181 221 221 221 255 255 255 0 0 0;#P objectname floor_lg;#P flonum 44 418 28 9 0. 100. 8227 3 181 181 181 221 221 221 255 255 255 0 0 0;#P objectname right_lg;#P flonum 44 404 28 9 0. 100. 8227 3 181 181 181 221 221 221 255 255 255 0 0 0;#P objectname left_lg;#P flonum 44 390 28 9 0. 100. 8227 3 181 181 181 221 221 221 255 255 255 0 0 0;#P objectname back_lg;#P window linecount 1;#P comment 4 447 40 196617 Ceiling:;#B frgb 149 149 149;#P comment 10 433 34 196617 Floor:;#B frgb 149 149 149;#P comment 10 420 34 196617 Right:;#B frgb 149 149 149;#P comment 14 406 29 196617 Left:;#B frgb 149 149 149;#P comment 12 391 31 196617 Back:;#B frgb 149 149 149;#P comment 9 376 34 196617 front:;#B frgb 149 149 149;#P window setfont "Sans Serif" 12.;#P comment 2 37 86 196620 Microphones:;#B frgb 149 149 149;#P window setfont "Sans Serif" 10.;#P comment 36 347 104 196618 wall absorption [%];#B frgb 149 149 149;#P window setfont "Sans Serif" 9.;#P flonum 44 375 28 9 0. 100. 8227 3 181 181 181 221 221 221 255 255 255 0 0 0;#P objectname front_lg;#P user panel 1 345 296 125;#X brgb 80 80 80;#X frgb 255 255 255;#X border 1;#X rounded 0;#X shadow 0;#X done;#P window linecount 0;#P newex 440 612 107 196617 pvar xfade_threshold;#P number 416 384 32 9 0 0 8225 3 181 181 181 221 221 221 222 222 222 0 0 0;#P objectname xfade_threshold;#P comment 301 386 83 196617 fading threshold:;#B frgb 149 149 149;#P newex 457 571 92 196617 pvar xfade_length;#P number 416 368 32 9 0 0 8225 3 181 181 181 221 221 221 222 222 222 0 0 0;#P objectname xfade_length;#P window linecount 1;#P comment 324 370 61 196617 fading time:;#B frgb 149 149 149;#P window setfont "Sans Serif" 12.;#P comment 302 348 111 196620 X-FADE settings:;#B frgb 149 149 149;#P window setfont "Sans Serif" 9.;#P comment 308 402 77 196617 fading function:;#B frgb 149 149 149;#P user ubumenu 388 401 63 196617 0 0 1 0;#X setrgb 181 181 181 25 25 25 50 50 50 4 4 4 141 141 141 112 112 112;#X add cosine;#X add cosine_squared;#X add linear;#X add equal_power;#X prefix_set 0 0 <none> 0;#P objectname fadefunction;#P user panel 299 344 157 81;#X brgb 80 80 80;#X frgb 255 255 255;#X border 1;#X rounded 0;#X shadow 0;#X done;#P newex 444 656 98 196617 pvar fadefunction 2;#P window linecount 2;#P newex 553 650 403 196617 jcom.parameter rendermode/xfade/fadefunction @type msg_symbol @description "fading function of the crossfade for the x-fade mode";#P objectname rendermode/xfade/fadefunction;#P window linecount 3;#P newex 554 600 329 196617 jcom.parameter rendermode/xfade/threshold @type msg_int @range 0 4096 @repetitions 0 @clipmode low @description "distance in samples before a crossfade in the x-fade mode is activated";#P objectname rendermode/xfade/threshold;#P window linecount 2;#P newex 553 563 408 196617 jcom.parameter rendermode/xfade/fadelength @type msg_int @repetitions 0 @range 0 512 @clipmode low @description "length of the crossfade for the x-fade mode in ms";#P objectname rendermode/xfade/fadelength;#P window linecount 0;#P hidden newex 402 10 417 196617 jcom.multi.out~;#P bpatcher 3 321 448 16 0 0 jcom.sur.vimic_mic.mxt 0 16;#P objectname jcom.sur.vimic_mic.mxt[8];#P bpatcher 3 304 448 16 0 0 jcom.sur.vimic_mic.mxt 0 15;#P objectname jcom.sur.vimic_mic.mxt[9];#P bpatcher 3 287 448 16 0 0 jcom.sur.vimic_mic.mxt 0 14;#P objectname jcom.sur.vimic_mic.mxt[10];#P bpatcher 3 270 448 16 0 0 jcom.sur.vimic_mic.mxt 0 13;#P objectname jcom.sur.vimic_mic.mxt[11];#P bpatcher 3 253 448 16 0 0 jcom.sur.vimic_mic.mxt 0 12;#P objectname jcom.sur.vimic_mic.mxt[12];#P bpatcher 3 236 448 16 0 0 jcom.sur.vimic_mic.mxt 0 11;#P objectname jcom.sur.vimic_mic.mxt[13];#P bpatcher 3 219 448 16 0 0 jcom.sur.vimic_mic.mxt 0 10;#P objectname jcom.sur.vimic_mic.mxt[14];#P bpatcher 3 202 448 16 0 0 jcom.sur.vimic_mic.mxt 0 9;#P objectname jcom.sur.vimic_mic.mxt[15];#P window linecount 2;#P message 54 684 64 196617 \; max refresh;#P window linecount 1;#P newex 55 663 45 196617 onebang;#P inlet 831 6 15 0;#P hidden inlet 402 -8 15 0;#P bpatcher 3 185 448 16 0 0 jcom.sur.vimic_mic.mxt 0 8;#P objectname jcom.sur.vimic_mic.mxt[7];#P bpatcher 3 168 448 16 0 0 jcom.sur.vimic_mic.mxt 0 7;#P objectname jcom.sur.vimic_mic.mxt[6];#P bpatcher 3 151 448 16 0 0 jcom.sur.vimic_mic.mxt 0 6;#P objectname jcom.sur.vimic_mic.mxt[5];#P bpatcher 3 134 448 16 0 0 jcom.sur.vimic_mic.mxt 0 5;#P objectname jcom.sur.vimic_mic.mxt[4];#P bpatcher 3 117 448 16 0 0 jcom.sur.vimic_mic.mxt 0 4;#P objectname jcom.sur.vimic_mic.mxt[3];#P bpatcher 3 100 448 16 0 0 jcom.sur.vimic_mic.mxt 0 3;#P objectname jcom.sur.vimic_mic.mxt[2];#P bpatcher 3 83 448 16 0 0 jcom.sur.vimic_mic.mxt 0 2;#P objectname jcom.sur.vimic_mic.mxt[1];#P flonum 400 493 27 9 0. 40. 8227 3 181 181 181 221 221 221 255 255 255 0 0 0;#P objectname dirPow;#P flonum 399 476 27 9 0. 40. 8227 3 181 181 181 221 221 221 255 255 255 0 0 0;#P objectname disPow;#P window linecount 0;#P comment 313 14 108 196617 Report state of ViMiC:;#B frgb 149 149 149;#P comment 316 428 111 196617 ViMiC update rate [Hz]:;#B frgb 149 149 149;#P number 427 427 28 9 1 50 8227 3 181 181 181 221 221 221 255 255 255 0 0 0;#P objectname Updaterate;#P hidden newex 458 492 83 196617 pvar Updaterate;#P window linecount 2;#P newex 547 485 393 196617 jcom.parameter updaterate @type msg_int @range 1 50 @clipmode low @description "vimic updaterate - tells how often the parameter settings are getting updated";#P objectname updaterate;#P window linecount 1;#P newex 248 650 50 196617 deferlow;#P window linecount 2;#P newex 490 250 467 196617 jcom.parameter reflections/lowpass/frequency @type msg_int @range 0 16000 @clipmode low @repetitions 0 @ramp linear.sched @description "damping frequency of the early reflections";#P objectname reflections/lowpass/frequency;#P window linecount 1;#P newex 490 228 94 196617 pvar early_lowcut;#P comment 355 52 56 196617 gain;#B frgb 181 181 181;#P newex 479 416 144 196617 jcom.list2parameter 3;#P newex 645 441 80 196617 pvar roomsizeZ;#P newex 562 441 81 196617 pvar roomsizeY;#P newex 479 441 81 196617 pvar roomsizeX;#P window linecount 2;#P newex 628 406 362 196617 jcom.parameter room/size @type msg_list @ramp linear.sched @range 0. 40. @repetitions 0 @clipmode both @description "Size of the virtual room in XYZ";#P objectname room/size;#P window linecount 1;#P comment 205 477 201 196617 power law for attenuation due to distance:;#B frgb 149 149 149;#P comment 194 495 211 196617 power law for attenuation due to directivity:;#B frgb 149 149 149;#P newex 470 149 66 196617 pvar dirPow;#P newex 471 90 66 196617 pvar disPow;#P window linecount 2;#P newex 470 169 440 196617 jcom.parameter microphones/direct/power @type msg_float @repetitions 0 @range 0. 8. @clipmode both @description "power law for attenuation due to microphone directivity";#P objectname microphones/direct/power;#P newex 471 109 374 196617 jcom.parameter room/distance/power @type msg_float @range 0. 8. @clipmode both @repetitions 0 @description "power law for attenuation due to distance";#P objectname room/distance/power;#P window linecount 1;#P comment 204 52 87 196617 Azimut/Elevation;#B frgb 181 181 181;#P comment 171 52 14 196617 Z;#B frgb 181 181 181;#P comment 137 52 14 196617 Y;#B frgb 181 181 181;#P comment 99 51 14 196617 X;#B frgb 181 181 181;#P comment 291 53 56 196617 directivity;#B frgb 181 181 181;#P comment 215 39 87 196617 Orientation;#B frgb 181 181 181;#P comment 96 38 99 196617 Microphone position;#B frgb 181 181 181;#P bpatcher 3 66 448 16 0 0 jcom.sur.vimic_mic.mxt 0 1;#P objectname jcom.sur.vimic_mic.mxt;#P hidden newex 666 51 74 196617 pvar allreport;#P window linecount 2;#P hidden newex 667 71 296 196617 jcom.message report_all @type msg_int @range 0 1 @clipmode both @description "report inner state of the vimic module";#P objectname direct/gain[2];#P button 419 13 15 0;#P objectname allreport;#P flonum 613 325 29 9 0 0 8224 3 181 181 181 221 221 221 222 222 222 0 0 0;#P objectname bb6;#P flonum 613 307 29 9 0 0 8224 3 181 181 181 221 221 221 222 222 222 0 0 0;#P objectname bb5;#P window linecount 1;#P hidden newex 248 626 117 196617 loadmess patcher ViMiC;#P hidden newex 6 662 40 196617 t front;#P hidden newex 6 636 151 196617 jcom.oscroute /open_inspector;#P hidden inlet 6 609 15 0;#N thispatcher;#Q window flags nogrow close zoom nofloat;#Q window size 351 66 820 599;#Q window title;#Q window exec;#Q savewindow 1;#Q end;#P hidden newobj 178 673 59 196617 thispatcher;#P hidden newex 512 316 88 196617 bgcolor 80 80 80;#P window linecount 2;#P hidden message 8 498 157 196617 window flags nogrow \, savewindow 1 \, window exec;#P hidden message 8 469 130 196617 window flags grow \, window exec;#P window setfont "Sans Serif" 18.;#P window linecount 1;#P comment 122 2 211 196626 Extended settings;#B frgb 181 181 181;#P user panel 1 34 455 308;#X brgb 80 80 80;#X frgb 255 255 255;#X border 2;#X rounded 0;#X shadow 0;#X done;#P hidden connect 64 0 15 0;#P hidden connect 64 1 45 0;#P hidden connect 64 2 46 0;#P hidden connect 64 3 47 0;#P hidden connect 64 4 48 0;#P hidden connect 64 5 49 0;#P hidden connect 64 6 50 0;#P hidden connect 64 7 51 0;#P hidden connect 64 8 56 0;#P hidden connect 64 9 57 0;#P hidden connect 64 10 58 0;#P hidden connect 64 11 59 0;#P hidden connect 64 12 60 0;#P hidden connect 64 13 61 0;#P hidden connect 64 14 62 0;#P hidden connect 64 15 63 0;#P connect 6 0 7 0;#P connect 7 0 8 0;#P connect 54 0 55 0;#P connect 7 0 54 0;#P connect 8 0 5 0;#P connect 37 0 5 0;#P hidden connect 3 0 5 0;#P hidden connect 2 0 5 0;#P connect 9 0 37 0;#P hidden connect 52 0 64 0;#P connect 66 0 78 0;#P hidden connect 53 0 15 1;#P hidden connect 53 0 45 1;#P hidden connect 53 0 46 1;#P hidden connect 53 0 47 1;#P hidden connect 53 0 48 1;#P hidden connect 53 0 49 1;#P hidden connect 53 0 50 1;#P hidden connect 53 0 51 1;#P hidden connect 53 0 56 1;#P hidden connect 53 0 57 1;#P hidden connect 53 0 58 1;#P hidden connect 53 0 59 1;#P hidden connect 53 0 60 1;#P hidden connect 53 0 61 1;#P hidden connect 53 0 62 1;#P hidden connect 53 0 63 1;#P connect 67 0 68 0;#P connect 65 0 75 0;#P connect 38 0 39 0;#P fasten 24 0 26 0 475 200 467 200 467 146 475 146;#P connect 26 0 24 0;#P fasten 23 0 25 0 476 140 468 140 468 87 476 87;#P connect 25 0 23 0;#P fasten 30 0 33 0 484 463 476 463 476 409 484 409;#P connect 33 0 30 0;#P fasten 36 0 35 0 495 284 481 284 481 223 495 223;#P connect 35 0 36 0;#P fasten 31 0 33 1 567 467 470 467 470 404 497 404;#P hidden fasten 32 0 33 2 650 466 465 466 465 399 510 399;#P connect 39 0 38 0;#P connect 75 0 65 0;#P connect 68 1 67 0;#P connect 78 0 66 0;#P connect 33 1 31 0;#P connect 29 0 33 10;#P lcolor 15;#P connect 33 10 29 0;#P lcolor 15;#P connect 33 2 32 0;#P hidden connect 14 0 13 0;#P connect 109 0 106 0;#P connect 110 0 107 0;#P connect 111 0 108 0;#P connect 115 0 112 0;#P connect 116 0 113 0;#P connect 117 0 114 0;#P connect 126 0 123 0;#P connect 127 0 124 0;#P connect 128 0 125 0;#P connect 132 0 129 0;#P connect 133 0 130 0;#P connect 134 0 131 0;#P connect 138 0 135 0;#P connect 139 0 136 0;#P connect 140 0 137 0;#P connect 144 0 141 0;#P connect 145 0 142 0;#P connect 146 0 143 0;#P connect 106 0 109 0;#P connect 107 0 110 0;#P connect 108 0 111 0;#P connect 112 0 115 0;#P connect 113 0 116 0;#P connect 114 0 117 0;#P connect 123 0 126 0;#P connect 124 0 127 0;#P connect 125 0 128 0;#P connect 129 0 132 0;#P connect 130 0 133 0;#P connect 131 0 134 0;#P connect 135 0 138 0;#P connect 136 0 139 0;#P connect 137 0 140 0;#P connect 141 0 144 0;#P connect 142 0 145 0;#P connect 143 0 146 0;#P pop;#P newobj 157 333 67 196617 p inspector;#B color 4;#P objectname inspector;#P newex 544 314 62 196617 prepend set;#P newex 615 366 27 196617 - 1;#P newex 614 295 27 196617 + 1;#P newex 614 347 51 196617 route set;#P newex 614 454 102 196617 pvar render_mode 2;#P window linecount 2;#P newex 722 448 242 196617 jcom.parameter rendermode @type msg_symbol @repetitions 0 @description "Rendertype of ViMiC";#P objectname rendermode;#P user ubumenu 42 24 63 196617 0 0 1 0;#X setrgb 181 181 181 25 25 25 50 50 50 4 4 4 141 141 141 112 112 112;#X add ViMiC;#X add ViMiC_Filter;#X add Panning;#X add X-fade;#X add X-fade-prime;#X add Static;#X prefix_set 0 0 <none> 0;#P objectname render_mode;#P window linecount 1;#N vpatcher 497 319 1097 719;#P outlet 56 179 15 0;#P button 137 29 15 0;#P window setfont "Sans Serif" 9.;#P hidden message 60 91 64 196617 rgb2 66 0 2;#P hidden message 221 89 92 196617 frgb 181 181 181;#P hidden message 138 91 75 196617 brgb 47 46 36;#P newex 83 58 50 196617 deferlow;#P newex 83 24 48 196617 loadbang;#P connect 4 0 6 0;#P connect 2 0 6 0;#P connect 3 0 6 0;#P connect 1 0 4 0;#P connect 5 0 1 0;#P connect 0 0 1 0;#P connect 1 0 2 0;#P connect 1 0 3 0;#P pop;#P newobj 351 76 46 196617 p colors;#N thispatcher;#Q end;#P hidden newobj 351 122 61 196617 thispatcher;#N vpatcher 188 431 335 589;#P button 41 33 15 0;#P window setfont "Sans Serif" 9.;#P newex 41 54 50 196617 deferlow;#P newex 41 75 50 196617 t front;#P outlet 41 103 15 0;#P inlet 41 15 15 0;#P connect 0 0 4 0;#P connect 4 0 3 0;#P connect 3 0 2 0;#P connect 2 0 1 0;#P pop;#P hidden newobj 351 100 14 196617 p;#P bpatcher 153 39 100 12 0 0 jcom.textslider.mxt 1 0. 0. 1. @size 100 12 @text early reflections;#P bpatcher 153 24 100 13 0 0 jcom.textslider.mxt 1 0. 0. 1. @size 100 12 @text direct sound @frgb;#P user ubumenu 106 24 22 196617 0 0 1 0;#X setrgb 181 181 181 25 25 25 50 50 50 4 4 4 141 141 141 112 112 112;#X add 1;#X add 2;#X add 3;#X add 4;#X add 5;#X add 6;#X add 7;#X add 8;#X add 9;#X add 10;#X add 11;#X add 12;#X add 13;#X add 14;#X add 15;#X add 16;#X add 17;#X add 18;#X add 19;#X add 20;#X add 21;#X add 22;#X add 23;#X add 24;#X prefix_set 0 0 <none> 0;#P objectname mics;#P window linecount 2;#P newex 614 315 377 196617 jcom.parameter microphones/amount @type msg_int @range 1 32 @repetitions 0 @clipmode low @priority 2 @description "Number of used virtual microphones";#P objectname microphones/amount;#P window linecount 1;#P newex 614 275 64 196617 pvar mics 2;#P comment 5 26 34 196617 setup:;#B frgb 149 149 149;#P hidden newex 157 254 221 196617 jcom.oscroute /open_inspector /audio/meters;#P newex 157 302 44 196617 pcontrol;#P outlet 133 626 15 0;#P newex 133 532 430 196617 jcom.multi.in~;#P newex 606 388 63 196617 pvar report;#P toggle 122 3 13 0;#P objectname report;#P window linecount 2;#P newex 606 408 288 196617 jcom.parameter report @type msg_int @range 0 1 @clipmode both @description "report changes inside the vimic module";#P objectname report[1];#P newex 495 62 239 196617 jcom.parameter.gain reflections/gain @repetitions 0 @description "gain of the early reflections";#P objectname reflections/gain;#P newex 521 7 236 196617 jcom.parameter.gain direct/gain @repetitions 0 @description "gain of the direct sound component";#P objectname direct/gain;#P window linecount 1;#P newex 439 179 144 196617 jcom.list2parameter 3;#P newex 553 203 54 196617 pvar posZ;#P newex 496 203 55 196617 pvar posY;#P newex 439 204 55 196617 pvar posX;#P window linecount 2;#P newex 654 177 325 196617 jcom.parameter.spatdif source/position/absolute @ramp linear.sched @description "Sourceposition in the virtual room - spatDIF compliant";#P objectname source/position/absolute;#P flonum 127 42 26 9 0. 25. 8227 3 181 181 181 221 221 221 255 255 255 0 0 0;#P objectname posD;#P flonum 101 42 27 9 0 90. 8226 3 181 181 181 221 221 221 255 255 255 0 0 0;#P objectname posE;#P flonum 69 42 33 9 -180. 180. 8227 3 181 181 181 221 221 221 255 255 255 0 0 0;#P objectname posA;#P window linecount 1;#P newex 393 309 47 196617 pcontrol;#P message 105 81 191 196617 /preset/store 1 default \, /preset/write;#B color 3;#P newex 134 448 339 196617 jcom.out~ 25;#P newex 133 232 58 196617 jcom.in~ 1;#P message 113 103 125 196617 /documentation/generate;#B color 3;#P window linecount 2;#P message 113 176 65 196617 \; max refresh;#P newex 15 137 323 196617 jcom.hub jmod.sur.vimic~ @inspector 1 @size 1U-half @module_type audio.ambisonic @description "Virtual Microphone Control (ViMiC)";#P objectname jcom.hub;#P window linecount 1;#P comment 29 104 79 196617 command input;#P inlet 15 104 13 0;#P message 244 103 31 196617 /init;#P inlet 133 213 13 0;#P comment -1 44 75 196617 Position A/E/D;#B frgb 149 149 149;#P newex 133 359 313 196617 jalg.sur.vimic_8_1~.mxt;#P outlet 15 180 13 0;#P comment 92 655 101 196617 multicable output;#P user hint 130 24 149 40 "order of early reflections" 4000 1000 0 65535 65535 52428 9 3 0 1 0 0 0;#P user hint 106 25 125 41 "number of microphones" 4000 1000 0 65535 65535 52428 9 3 0 1 0 0 0;#P user hint 611 106 655 124 "ViMiC render type" 4000 1000 0 65535 65535 52428 9 3 0 1 0 0 0;#P bpatcher 0 0 256 60 0 0 jcom.gui.mxt 0 $0_;#P objectname jmod.gui.1Uh.a.stereo.mxt;#P fasten 17 0 12 0 110 124 20 124;#P connect 10 0 12 0;#P fasten 14 0 12 0 118 124 20 124;#P fasten 9 0 12 0 249 125 20 125;#P connect 12 0 5 0;#P connect 8 0 15 0;#P connect 15 0 6 0;#P connect 16 1 32 0;#P connect 32 0 33 0;#P lcolor 6;#P connect 16 2 32 1;#P connect 6 0 16 1;#P hidden connect 44 0 40 0;#P hidden connect 62 0 40 0;#P hidden connect 44 0 41 0;#P hidden connect 60 0 41 0;#P connect 15 1 35 0;#P connect 35 0 58 0;#P connect 58 0 34 0;#P connect 34 0 52 0;#P connect 16 3 32 2;#P connect 6 1 16 2;#P connect 16 4 32 3;#P connect 6 2 16 3;#P fasten 32 0 52 1 138 577 22 577 22 328 190 328;#P lcolor 6;#P connect 16 5 32 4;#P connect 6 3 16 4;#P connect 16 6 32 5;#P connect 6 4 16 5;#P connect 16 7 32 6;#P connect 6 5 16 6;#P fasten 35 1 52 2 267 302 218 302;#P connect 16 8 32 7;#P connect 6 6 16 7;#P connect 16 9 32 8;#P connect 6 7 16 8;#P connect 16 10 32 9;#P connect 6 8 16 9;#P connect 16 11 32 10;#P connect 6 9 16 10;#P connect 16 12 32 11;#P connect 6 10 16 11;#P connect 16 13 32 12;#P connect 6 11 16 12;#P fasten 35 2 57 0 372 277 303 277;#P connect 16 14 32 13;#P connect 6 12 16 13;#P connect 16 15 32 14;#P connect 6 13 16 14;#P connect 16 16 32 15;#P connect 6 14 16 15;#P connect 16 17 32 16;#P connect 6 15 16 16;#P connect 44 0 42 0;#P hidden connect 42 0 43 0;#P connect 16 18 32 17;#P connect 16 19 32 18;#P connect 16 20 32 19;#P connect 57 1 18 0;#P connect 16 21 32 20;#P connect 16 22 32 21;#P connect 16 23 32 22;#P hidden connect 41 0 59 0;#P connect 16 24 32 23;#P fasten 57 0 6 1 303 338 441 338;#P fasten 18 0 6 1 398 338 441 338;#P fasten 23 0 26 0 444 226 436 226 436 172 444 172;#P connect 26 0 23 0;#P hidden connect 40 0 61 0;#P fasten 24 0 26 1 501 230 430 230 430 167 457 167;#P fasten 25 0 26 2 558 234 425 234 425 162 470 162;#P connect 28 0 60 0;#P connect 59 0 28 0;#P connect 26 1 24 0;#P connect 61 0 27 0;#P connect 27 0 62 0;#P connect 50 0 51 0;#P connect 26 2 25 0;#P connect 75 0 73 0;#P connect 76 0 74 0;#P connect 71 0 72 0;#P fasten 29 0 31 0 611 441 601 441 601 383 611 383;#P connect 31 0 29 0;#P fasten 54 0 55 0 690 527 606 527 606 495 615 495;#P connect 51 0 37 0;#P connect 37 0 49 0;#P connect 49 0 38 0;#P connect 38 0 48 0;#P fasten 46 0 47 0 727 480 608 480 608 445 619 445;#P connect 48 0 50 0;#P fasten 64 0 22 0 659 238 652 238 652 171 659 171;#P connect 22 0 64 0;#P connect 72 0 71 0;#P connect 73 0 75 0;#P connect 74 0 76 0;#P connect 55 1 54 0;#P fasten 65 0 22 1 753 248 641 248 641 167 722 167;#P connect 47 1 46 0;#P connect 22 1 65 0;#P fasten 66 0 22 2 847 256 627 256 627 160 785 160;#P connect 22 2 66 0;#P pop;