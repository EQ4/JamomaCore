max v2;#N vpatcher 303 352 1123 694;#P origin 10 -64;#P window setfont "Sans Serif" 9.;#P hidden newex 105 161 43 196617 jcom.in;#P hidden newex 461 200 90 196617 pvar sample_rate;#P window linecount 2;#P hidden newex 461 222 335 196617 jcom.parameter status @type msg_int @ramp linear.sched @repetitions 0 @range -1 1000 @clipmode low @description "Turn polling on";#P objectname status[1];#P number 143 28 35 9 -1 0 8225 3 181 181 181 221 221 221 222 222 222 0 0 0;#P objectname sample_rate;#P user jsui 47 27 20 15 1 0 0 jcom.jsui_texttoggle.js off on;#P objectname status;#P user jsui 17 27 25 15 1 0 0 jsui_textbutton.js init;#P objectname init;#P window linecount 1;#P hidden newex 461 127 49 196617 pvar init;#P window linecount 2;#P hidden newex 461 149 257 196617 jcom.message init @type msg_generic @clipmode none @description "Initialization of devices";#P objectname jcom.parameter[3];#P window linecount 1;#P hidden newex 461 50 62 196617 pvar status;#P window linecount 2;#P hidden newex 461 72 223 196617 jcom.parameter status @type msg_toggle @clipmode none @description "Turn polling on";#P objectname status[2];#P window linecount 1;#P hidden newex 105 212 45 196617 pcontrol;#P hidden newex 105 188 91 196617 jcom.pass open;#P hidden message 38 69 125 196617 /documentation/generate;#P hidden newex 105 285 144 196617 jalg.phidgets.interfacekit.mxt;#P window linecount 2;#P hidden newex 16 94 329 196617 jcom.hub jmod.phidgets.interfacekit @size 1U-half @module_type control @description "Use phidgets interface kit.";#P objectname jcom.hub;#P hidden inlet 16 70 13 0;#P hidden outlet 16 167 13 0;#P window linecount 3;#P hidden newex 350 94 79 196617 pattrstorage @autorestore 0 @savemode 0;#X client_rect 14 59 654 299;#X storage_rect 0 0 640 240;#P objectname u051000818;#P window linecount 1;#P comment 88 30 63 196617 sample rate;#B frgb 149 149 149;#P bpatcher 0 0 256 62 0 0 jcom.gui.mxt 0 $0_;#P objectname jcom.gui.1Uh.a.stereo.mxt;#P hidden fasten 7 0 5 0 43 88 21 88;#P hidden connect 4 0 5 0;#P hidden connect 5 0 3 0;#P hidden connect 19 0 8 0;#P hidden connect 8 0 9 0;#P hidden connect 9 0 6 0;#P hidden fasten 8 1 6 0 191 247 110 247;#P hidden fasten 10 0 11 0 466 105 454 105 454 45 466 45;#P hidden connect 11 0 10 0;#P hidden connect 13 0 12 0;#P hidden fasten 17 0 18 0 466 255 454 255 454 195 466 195;#P hidden connect 18 0 17 0;#P pop;