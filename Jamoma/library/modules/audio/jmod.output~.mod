max v2;
#N vpatcher 40 52 1116 816;
#P window setfont "Sans Serif" 9.;
#P comment 341 64 47 196617 Bypass;
#B frgb 198 198 198;
#P user radiogroup 326 62 65 16;
#X size 1;
#X offset 16;
#X inactive 0;
#X itemtype 1;
#X flagmode 0;
#X set 0;
#X done;
#P objectname LimiterToggle;
#P window linecount 2;
#P hidden newex 321 237 177 196617 jmod.parameter.gain.mxt $0_ /gain @description "master gain";
#B color 2;
#P objectname jmod.parameter.gain.mxt;
#P window linecount 1;
#P hidden comment 10 722 265 196617 - record 0: stops recording.;
#P window linecount 2;
#P hidden comment 10 693 258 196617 - record (filename): starts recording to the sound file specified;
#P hidden comment 10 663 265 196617 - record 1: starts recording to a previously specified sound file. If no sound file is psecified \, it's to bad...;
#P hidden comment 10 633 265 196617 - open with no argument: bring up the open dialog??? (Or should we forget about this one?);
#P hidden comment 10 604 265 196617 - open filename: open the soundfile specified \, but do not start recording;
#P window linecount 3;
#P hidden comment 10 562 265 196617 - samptype and filetype can be set beforehand using messages "samptype $1" and "filetype $1" \, and is remembered.;
#P window linecount 2;
#P hidden newex 321 442 215 196617 jmod.message.mxt $0_ /dsp_status @description " Open DSP Status window.";
#P window linecount 1;
#P hidden message 28 148 50 196617 /autodoc;
#P hidden newex 91 291 45 196617 pcontrol;
#P hidden newex 91 268 84 196617 jmod.pass /open;
#P hidden newex 177 131 90 196617 loadmess active 0;
#P hidden newex 321 216 89 196617 pvar gain_master;
#B color 7;
#P user pictslider 26 71 161 13 2 0 2 0 jmod.slider.ch.knob.bottom.pct 1 jmod.slider.ch.bg.pct 1 2657 0 0 157 1. 1.;
#P objectname gain_master;
#P hidden comment 608 689 244 196617 added the parameter object 2005.05.17 TAP;
#P hidden newex 443 685 164 196617 jmod.parameter.mxt $0_ /record;
#P objectname jmod.parameter.mxt[12];
#P window linecount 7;
#P hidden newex 9 172 175 196617 jmod.hub.mxt $0_ jmod.output~ @size 2U @module_type audio.no_panel @num_inputs 2 @num_outputs 0 @description "A generic module for stereo audio output. Includes saturation \\\, limiter and recording device";
#P objectname jmod.hub;
#P window linecount 1;
#P hidden comment 10 512 244 196617 - left channel jmod-meter~ tends to die;
#P hidden newex 321 706 90 196617 s $0_xxx_record;
#B color 14;
#P comment 479 71 25 196617 ms;
#B frgb 198 198 198;
#P comment 393 71 47 196617 Release;
#B frgb 198 198 198;
#P hidden newex 616 359 65 196617 pvar Preamp;
#P comment 480 56 24 196617 dB;
#B frgb 198 198 198;
#P comment 393 55 50 196617 Preamp;
#B frgb 198 198 198;
#P hidden newex 616 493 65 196617 pvar Release;
#P hidden user umenu 543 596 66 196647 1 64 612 1;
#X add exponential;
#X add linear;
#P hidden newex 616 301 95 196617 pvar LimiterToggle;
#P user jmod.meter~ 35 28 123 10;
#P user jmod.meter~ 35 44 123 10;
#P window linecount 2;
#P hidden newex 616 320 241 196617 jmod.parameter.mxt $0_ /limiter/bypass @type toggle @description "Limiter: Active or bypassed.";
#P objectname jmod.parameter.mxt[11];
#P hidden flonum 566 557 43 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;
#P flonum 443 70 37 9 0. 10000. 8227 3 198 198 198 221 221 221 222 222 222 0 0 0;
#P objectname Release;
#P hidden number 566 457 43 9 0 256 3 3 0 0 0 221 221 221 222 222 222 0 0 0;
#P hidden flonum 566 422 43 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;
#P flonum 443 54 36 9 0. 48. 8227 3 198 198 198 221 221 221 222 222 222 0 0 0;
#P objectname Preamp;
#P window setfont "Sans Serif" 12.;
#P window linecount 1;
#P hidden comment 298 492 210 196620 Sound File Record;
#B color 7;
#P window setfont "Sans Serif" 9.;
#P window linecount 2;
#P hidden newex 616 596 312 196617 jmod.parameter.mxt $0_ /limiter/mode @type menu @description "Limiter: Set the function to be used for calculating the scaling.";
#P objectname jmod.parameter.mxt[10];
#P hidden newex 616 554 363 196617 jmod.parameter.mxt $0_ /limiter/threshold @ramp 1 @range -24 48 @clipmode none @type msg_float @description "Limiter: Set threshold as dB.";
#P objectname jmod.parameter.mxt[9];
#P hidden newex 616 513 362 196617 jmod.parameter.mxt $0_ /limiter/release @ramp 1 @type msg_float @range 0 3000 @clipmode low @description "Limiter: Set release time as ms.";
#P objectname jmod.parameter.mxt[8];
#P hidden newex 616 456 380 196617 jmod.parameter.mxt $0_ /limiter/lookahead @ramp 1 @range 0 256 @clipmode both @type msg_int @description "Limiter: The number of samples to look ahead.";
#P objectname jmod.parameter.mxt[7];
#P hidden newex 616 420 341 196617 jmod.parameter.mxt $0_ /limiter/postamp @ramp 1 @range -24 48 @clipmode none @type msg_float @description "Limiter: Postamp as dB.";
#P objectname jmod.parameter.mxt[6];
#P hidden newex 616 380 357 196617 jmod.parameter.mxt $0_ /limiter/preamp @ramp 1 @range 0 48 @clipmode none @type msg_float @ramp 1 @description "Limiter: Preamp as dB.";
#P objectname jmod.parameter.mxt[5];
#P window linecount 1;
#P comment 261 97 60 196617 Record;
#B frgb 198 198 198;
#P comment 262 64 60 196617 Limiter;
#B frgb 198 198 198;
#P window setfont "Sans Serif" 12.;
#P hidden comment 594 275 353 196620 Limiter (not all parameters are exposed in the interface);
#B color 7;
#P hidden comment 594 103 210 196620 Saturation;
#B color 7;
#P window setfont "Sans Serif" 9.;
#P window linecount 2;
#P hidden newex 614 228 255 196617 jmod.parameter.mxt $0_ /saturation/bypass @type toggle @description "Saturation: Active or bypassed.";
#P objectname jmod.parameter.mxt[4];
#P window linecount 1;
#P hidden newex 614 208 109 196617 pvar SaturationToggle;
#P hidden newex 614 132 105 196617 pvar SaturationDepth;
#P window linecount 2;
#P hidden newex 614 153 353 196617 jmod.parameter.mxt $0_ /saturation/depth @ramp 1 @repetitions 0 @type msg_float @range 0 99 @clipmode both @description "Saturation: Depth.";
#P objectname jmod.parameter.mxt[2];
#P number 456 26 23 9 0 99 8227 3 198 198 189 221 221 221 222 222 222 0 0 0;
#P objectname SaturationDepth;
#P window linecount 1;
#P comment 341 28 45 196617 Bypass;
#B frgb 198 198 198;
#P comment 480 28 18 196617 %;
#B frgb 198 198 198;
#P hidden newex 321 604 109 196617 pvar SamptypeMenu 2;
#P window linecount 2;
#P hidden newex 321 627 275 196617 jmod.parameter.mxt $0_ /record/samptype @type menu @description "Recording: Set sample type for sound files.";
#P objectname jmod.parameter.mxt[3];
#P hidden newex 321 563 262 196617 jmod.parameter.mxt $0_ /record/filetype @type menu @description "Recording: Set file type for sound files.";
#B color 2;
#P objectname jmod.parameter.mxb[1];
#P window linecount 1;
#N vpatcher 14 59 614 459;
#P outlet 60 265 15 0;
#P window setfont "Sans Serif" 9.;
#P newex 60 218 75 196617 prepend append;
#P newex 60 60 55 196617 r jmod.init;
#P message 111 175 98 196617 aiff \, au \, raw \, wave;
#P message 60 192 121 196617 aiff \, au \, raw \, wave \, sd2;
#P newex 222 164 39 196617 t clear;
#P newex 60 151 112 196617 sel macintosh windows;
#P newex 60 130 45 196617 route os;
#P newex 60 99 123 196617 js jmod.js_systeminfo.js;
#P connect 6 0 0 0;
#P connect 0 0 1 0;
#P connect 1 0 2 0;
#P connect 2 0 4 0;
#P connect 5 0 7 0;
#P connect 4 0 7 0;
#P fasten 3 0 8 0 227 250 65 250;
#P connect 7 0 8 0;
#P connect 2 1 5 0;
#P fasten 6 0 3 0 65 89 227 89;
#P pop;
#P hidden newobj 321 512 60 196617 p FileTypes;
#P user umenu 377 96 61 196647 1 64 112 0;
#X add aiff;
#X add au;
#X add raw;
#X add wave;
#X add sd2;
#P objectname FiletypeMenu;
#P hidden newex 321 540 101 196617 pvar FiletypeMenu 2;
#P user umenu 439 96 61 196647 1 64 112 0;
#X add int8;
#X add int16;
#X add int24;
#X add int32;
#X add float32;
#X add float64;
#X add mulaw;
#X add alaw;
#P objectname SamptypeMenu;
#P hidden inlet 239 245 15 0;
#P hidden inlet 197 245 15 0;
#P hidden number 416 338 35 9 0 0 0 3 0 0 0 74 156 97 222 222 222 0 0 0;
#P hidden number 419 397 35 9 0 0 0 3 0 0 0 74 156 97 222 222 222 0 0 0;
#P hidden message 321 197 45 196617 set \$1 0;
#P hidden number 413 217 35 9 0 0 0 3 0 0 0 74 156 97 222 222 222 0 0 0;
#P user jsui 325 94 45 19 1 0 0 jmod.jsui_texttoggle.js Record Record 204 204 204 0 0 0 255 40 40;
#P objectname RecordButton;
#P window setfont "Sans Serif" 12.;
#P hidden comment 298 276 210 196620 DSP and dac~ settings;
#B color 7;
#P window setfont "Sans Serif" 9.;
#P hidden comment 9 497 100 196617 Bugs/required fixes:;
#P hidden newex 321 421 85 196617 pvar DSP_Status;
#B color 7;
#P hidden newex 321 396 95 196617 pvar Channel_Right;
#B color 7;
#P hidden newex 321 337 91 196617 pvar Channel_Left;
#B color 7;
#P window linecount 2;
#P hidden newex 321 364 243 196617 jmod.parameter.mxt $0_ /ch_2 @type msg_int @description " Set logical output for right channel.";
#B color 2;
#P objectname jmod.parameter.mxt[1];
#P hidden newex 321 305 237 196617 jmod.parameter.mxt $0_ /ch_1 @type msg_int @description " Set logical output for left channel.";
#B color 2;
#P objectname jmod.parameter.mxt;
#P user jsui 196 0 45 19 1 0 0 jsui_textbutton.js DSP;
#P objectname DSP_Status;
#P number 7 43 30 9 1 512 8227 3 198 198 198 221 221 221 222 222 222 0 0 0;
#P objectname Channel_Right;
#P number 7 26 30 9 1 512 8227 3 198 198 198 221 221 221 222 222 222 0 0 0;
#P objectname Channel_Left;
#P hidden toggle 86 367 15 0;
#P window linecount 1;
#P hidden message 48 367 35 196617 1 100;
#P hidden message 9 367 35 196617 0 100;
#P window linecount 2;
#P hidden message 9 451 69 196617 \; max refresh;
#P hidden message 9 419 72 196617 \; jmod.init bang;
#P window linecount 1;
#P hidden newex 9 391 84 196617 s jmod.dsptoggle;
#P window setfont "Sans Serif" 12.;
#P hidden comment 298 130 210 196620 Volume;
#B color 7;
#P hidden user led 416 684 17 17 1 150;
#P window setfont "Sans Serif" 9.;
#N vpatcher 41 276 701 729;
#P origin -88 11;
#P window setfont "Sans Serif" 9.;
#P newex 325 119 235 196617 jmod.oscroute /saturation /limiter /gain /record;
#P outlet 131 366 15 0;
#P outlet 111 366 15 0;
#N vpatcher 14 59 614 459;
#P window setfont "Sans Serif" 9.;
#P window linecount 1;
#P newex 230 163 35 196617 t open;
#P window linecount 0;
#P newex 30 186 75 196617 r $0_xxx_dac;
#B color 14;
#P inlet 180 55 15 0;
#P inlet 107 55 15 0;
#P outlet 434 255 15 0;
#P newex 366 163 61 196617 prepend set;
#P newex 298 163 61 196617 prepend set;
#P inlet 230 55 15 0;
#P newex 230 135 214 196617 jmod.oscroute dsp_status ch_1 ch_2;
#P newex 107 241 83 196617 dac~ 1 2;
#P connect 9 0 0 0;
#P connect 6 0 0 0;
#P connect 8 0 0 0;
#P connect 3 0 0 0;
#P connect 7 0 0 1;
#P connect 4 0 0 1;
#P connect 2 0 1 0;
#P connect 1 0 9 0;
#P connect 1 1 3 0;
#P connect 1 2 4 0;
#P connect 1 3 5 0;
#P pop;
#P newobj 179 366 157 196617 p dac;
#N vpatcher 78 86 703 387;
#P window setfont "Sans Serif" 9.;
#P newex 215 79 360 196617 jmod.pass /bypass /preamp /postamp /threshold /lookahead /release /mode;
#P inlet 215 46 15 0;
#P outlet 122 240 15 0;
#P outlet 72 240 15 0;
#P inlet 172 46 15 0;
#P inlet 72 46 15 0;
#P newex 72 186 110 196617 jmod.limiter~ @bypass_dcblocker 1;
#P connect 6 6 0 0;
#P connect 6 5 0 0;
#P connect 6 4 0 0;
#P connect 6 3 0 0;
#P connect 6 2 0 0;
#P connect 6 1 0 0;
#P connect 6 0 0 0;
#P connect 1 0 0 0;
#P connect 0 0 3 0;
#P connect 0 1 4 0;
#P connect 2 0 0 1;
#P connect 5 0 6 0;
#P pop;
#P newobj 179 198 156 196617 p limiter;
#N vpatcher 417 152 1017 552;
#P window setfont "Sans Serif" 9.;
#P window linecount 1;
#P newex 396 164 95 196617 jmod.pass /bypass;
#P window linecount 0;
#P newex 266 121 120 196617 expr 1./(1. - $f1*0.01);
#P outlet 136 278 15 0;
#P outlet 172 278 15 0;
#P inlet 208 50 15 0;
#P inlet 136 50 15 0;
#P newex 266 151 92 196617 prepend overdrive;
#P newex 266 75 140 196617 jmod.oscroute /depth;
#P inlet 266 50 15 0;
#P newex 136 237 82 196617 jmod.saturation~;
#P connect 9 0 0 0;
#P connect 4 0 0 0;
#P connect 3 0 0 0;
#P connect 0 0 7 0;
#P connect 0 1 6 0;
#P connect 5 0 0 1;
#P connect 1 0 2 0;
#P connect 2 0 8 0;
#P connect 8 0 3 0;
#P connect 2 1 9 0;
#P pop;
#P newobj 179 169 157 196617 p saturation;
#P inlet 27 32 15 0;
#P inlet 252 136 15 0;
#P inlet 179 136 15 0;
#N vpatcher 185 98 808 500;
#P window setfont "Sans Serif" 9.;
#P message 475 163 30 196617 0 10;
#P newex 410 140 31 196617 sel 1;
#P newex 319 270 27 196617 *~;
#P newex 284 270 27 196617 *~;
#P message 410 163 43 196617 0 \, 1 10;
#P newex 410 189 31 196617 line~;
#P newex 410 112 53 196617 dspstate~;
#P comment 94 334 202 196617 NOTE: This fade is not displayed in the GUI.;
#P comment 24 75 145 196617 Quick fade in when audio start;
#P inlet 319 91 15 0;
#P inlet 284 91 15 0;
#P outlet 319 305 15 0;
#P outlet 284 305 15 0;
#P newex 475 112 81 196617 r jmod.audio.off;
#P comment 24 59 145 196617 Quick fade out when audio stop;
#P comment 24 95 245 196617 line~ is able to handle this. gain~ and matrix~ is not.;
#P connect 5 0 12 0;
#P connect 12 0 3 0;
#P connect 10 0 12 1;
#P connect 6 0 13 0;
#P connect 13 0 4 0;
#P connect 10 0 13 1;
#P connect 9 0 14 0;
#P connect 14 0 11 0;
#P connect 11 0 10 0;
#P connect 15 0 10 0;
#P connect 2 0 15 0;
#P pop;
#P newobj 179 290 83 196617 p smooth_in_out;
#N vpatcher 759 82 1072 489;
#P inlet 177 42 15 0;
#P outlet 64 318 15 0;
#P outlet 93 318 15 0;
#P inlet 64 44 15 0;
#P inlet 93 44 15 0;
#P window setfont "Sans Serif" 9.;
#P newex 177 78 102 196617 jmod.oscroute /midi;
#P user gain~ 64 130 24 100 158 0 1.071519 7.94321 10.;
#P user gain~ 93 131 24 100 158 0 1.071519 7.94321 10.;
#P connect 2 0 1 0;
#P connect 4 0 1 0;
#P connect 1 0 6 0;
#P connect 2 0 0 0;
#P connect 3 0 0 0;
#P connect 0 0 5 0;
#P connect 7 0 2 0;
#P pop;
#P newobj 179 227 156 196617 p gain;
#N vpatcher 316 274 1264 806;
#P origin 0 80;
#P window setfont "Sans Serif" 9.;
#P window linecount 0;
#P newex 453 203 20 196617 t b;
#P newex 453 225 36 196617 zl reg;
#P newex 479 132 107 196617 jmod.pass /samptype;
#P comment 549 282 78 196617 FROM REMOTE:;
#P comment 549 459 265 196617 - record 0: stops recording.;
#P window linecount 2;
#P comment 549 430 265 196617 - record (filename): starts recording to the sound file specified;
#P comment 549 400 265 196617 - record 1: starts recording to a previously specified sound file. If no sound file has been specified \, it's to bad...;
#P comment 549 370 265 196617 - open with no argument: bring up the open dialog??? (Or should we forget about this one?);
#P comment 549 341 265 196617 - open filename: open the soundfile specified \, but do not start recording;
#P window linecount 3;
#P comment 549 299 265 196617 - samptype and filetype can be set beforehand using messages "samptype $1" and "filetype $1" \, and is remembered.;
#P window linecount 1;
#P newex 261 147 120 196617 pack open aiff;
#P newex 371 87 118 196617 jmod.oscroute /filetype;
#P newex 261 92 90 196617 r $0_xxx_record;
#B color 14;
#P newex 261 121 31 196617 sel 1;
#P inlet 371 60 15 0;
#P inlet 80 91 15 0;
#P inlet 153 91 15 0;
#P newex 80 278 83 196617 sfrecord~ 2;
#P comment 504 214 271 196617 <- required to avoid an error message during initialisation;
#P connect 8 0 1 0;
#P connect 6 0 1 0;
#P connect 3 0 1 0;
#P connect 17 0 1 0;
#P connect 2 0 1 1;
#P connect 6 0 5 0;
#P connect 5 0 8 0;
#P connect 4 0 7 0;
#P connect 7 0 8 1;
#P connect 8 0 18 0;
#P connect 18 0 17 0;
#P connect 7 1 16 0;
#P connect 16 0 17 1;
#P pop;
#P newobj 365 366 139 196617 p record;
#P connect 2 0 9 0;
#P connect 2 1 10 0;
#P connect 3 0 6 0;
#P connect 6 0 7 0;
#P connect 7 0 1 0;
#P connect 1 0 2 0;
#P connect 2 0 8 0;
#P connect 4 0 6 1;
#P fasten 6 1 7 1 331 192 257 192;
#P fasten 7 1 1 1 330 221 257 221;
#P fasten 1 1 2 1 330 267 257 267;
#P connect 2 1 8 1;
#P fasten 5 0 11 0 32 68 330 68;
#P connect 11 0 6 2;
#P connect 11 1 7 2;
#P connect 11 2 1 2;
#P connect 11 4 8 2;
#P connect 2 0 0 0;
#P connect 2 1 0 1;
#P connect 11 3 0 2;
#P pop;
#P hidden newobj 155 335 95 196617 p Sound_processing;
#P hidden newex 321 684 93 196617 pvar RecordButton;
#B color 7;
#P window linecount 3;
#P hidden newex 187 175 81 196617 pattrstorage @autorestore 0 @savemode 0;
#X client_rect 96 88 530 612;
#X storage_rect 0 0 640 240;
#P objectname jmod.output~;
#P user fpic 26 18 160 52 jmod.bg.hgain.pct 0 0 0 0. 0 0 0;
#P hidden outlet 9 269 15 0;
#P hidden inlet 9 148 15 0;
#P window setfont "Sans Serif" 12.;
#P window linecount 2;
#P hidden comment 627 41 210 196620 All communication with interface is done using pvar;
#B color 7;
#P window setfont "Sans Serif" 9.;
#P window linecount 3;
#P hidden comment 298 151 202 196617 The set message is important to prevent feedback into jmod.parameter.gain from killing ongoing ramps;
#P window linecount 1;
#P hidden comment 191 228 100 196617 -- audio in --;
#P comment 262 28 60 196617 Saturation;
#B frgb 198 198 198;
#P user pictctrl 253 87 253 32 jmod.bg.frame.black.pct 0 32 1 0 89 0 0 1 255 35 128 0 1 10 2 0 1 270;
#P user pictctrl 253 54 253 32 jmod.bg.frame.black.pct 0 32 1 0 89 0 0 1 255 35 128 0 1 10 2 0 1 270;
#P user radiogroup 326 26 65 16;
#X size 1;
#X offset 16;
#X inactive 0;
#X itemtype 1;
#X flagmode 0;
#X set 0;
#X done;
#P objectname SaturationToggle;
#P user pictctrl 253 21 253 32 jmod.bg.frame.black.pct 0 32 1 0 89 0 0 1 255 35 128 0 1 10 2 0 1 270;
#P bpatcher 0 0 510 121 0 0 jmod.gui.mxt 0 $0_;
#P objectname jmod.gui.mxt;
#P hidden connect 9 0 83 0;
#P hidden connect 91 0 83 0;
#P hidden connect 83 0 10 0;
#P hidden fasten 20 0 17 0 14 386 14 386;
#P hidden fasten 21 0 17 0 53 386 14 386;
#P hidden fasten 22 0 17 0 91 386 14 386;
#P hidden connect 14 0 72 0;
#P hidden connect 14 1 71 0;
#P hidden connect 83 1 89 0;
#P hidden connect 89 0 90 0;
#P hidden connect 89 1 14 0;
#P hidden fasten 90 0 14 0 96 312 160 312;
#P hidden connect 12 0 83 1;
#P hidden connect 83 2 12 0;
#P hidden connect 38 0 14 1;
#P lcolor 6;
#P hidden connect 39 0 14 2;
#P lcolor 6;
#P hidden connect 88 0 1 0;
#P hidden connect 88 0 3 0;
#P hidden connect 88 0 4 0;
#P hidden fasten 99 0 35 0 326 268 316 268 316 193 326 193;
#P hidden connect 35 0 87 0;
#P hidden connect 87 0 99 0;
#P hidden fasten 28 0 26 0 326 357 316 357 316 302 326 302;
#P hidden connect 26 0 28 0;
#P hidden fasten 29 0 27 0 326 416 316 416 316 360 326 360;
#P hidden connect 27 0 29 0;
#P hidden connect 30 0 92 0;
#P hidden fasten 44 0 41 0 326 595 314 595 314 533 326 533;
#P hidden connect 43 0 41 0;
#P hidden fasten 41 1 44 0 417 560 326 560;
#P hidden fasten 45 0 46 0 326 658 314 658 314 600 326 600;
#P hidden fasten 46 1 45 0 425 624 326 624;
#P hidden connect 84 0 13 0;
#P hidden connect 13 0 81 0;
#P hidden connect 87 0 34 0;
#P hidden connect 28 0 37 0;
#P hidden connect 13 0 15 0;
#P hidden connect 29 0 36 0;
#P hidden connect 13 0 84 0;
#P hidden connect 63 0 74 0;
#P hidden connect 59 0 66 0;
#P hidden connect 60 0 67 0;
#P hidden connect 62 0 69 0;
#P hidden fasten 50 0 51 0 619 186 609 186 609 126 619 126;
#P hidden connect 51 0 50 0;
#P hidden fasten 53 0 52 0 619 260 609 260 609 203 619 203;
#P hidden connect 52 0 53 0;
#P hidden fasten 70 0 73 0 621 352 610 352 610 299 621 299;
#P hidden connect 73 0 70 0;
#P hidden fasten 58 0 78 0 621 413 609 413 609 355 621 355;
#P hidden connect 78 0 58 0;
#P hidden connect 66 0 59 0;
#P hidden connect 67 0 60 0;
#P hidden fasten 61 0 75 0 621 545 611 545 611 489 621 489;
#P hidden connect 75 0 61 0;
#P hidden connect 69 0 62 0;
#P hidden connect 74 1 63 0;
#P pop;
