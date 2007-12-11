max v2;
#N vpatcher 123 70 1185 814;
#P window setfont "Sans Serif" 9.;
#P hidden newex 380 473 47 196617 pcontrol;
#P hidden newex 247 451 143 196617 jcom.algorithm_control~.mxt;
#P hidden newex 247 520 78 196617 r $0__monitor;
#P hidden newex 113 539 77 196617 jcom.out~ 2;
#P hidden newex 113 428 212 196617 jcom.in~ 2;
#P hidden inlet 315 408 13 0;
#P hidden outlet 113 565 13 0;
#P hidden message 127 629 125 196617 /documentation/generate;
#P comment 206 43 22 196617 ms;
#B frgb 172 172 172;
#P comment 85 42 39 196617 dB;
#B frgb 172 172 172;
#P comment 85 26 39 196617 samps;
#B frgb 172 172 172;
#P number 53 41 35 9 -90 24 8227 3 198 198 198 221 221 221 222 222 222 0 0 0;
#P objectname THRESHOLD;
#P hidden newex 14 158 86 196617 pvar THRESHOLD;
#P window linecount 3;
#P hidden newex 14 181 318 196617 jcom.parameter threshold @type msg_int @ramp.drive scheduler @repetitions 0 @range -90 24 @clipmode both @description "The threshold sets the level at which the Noise Gate opens and closes..";
#P objectname threshold;
#P window linecount 1;
#P comment 1 41 58 196617 Threshold;
#B frgb 172 172 172;
#P window linecount 3;
#P hidden newex 14 345 330 196617 jcom.parameter release @type msg_int @ramp.drive scheduler @repetitions 0 @range 0 1000 @clipmode both @description "When the gate closes\\\, this parameter sets how many milliseconds it will take to fade out.";
#P objectname release;
#P window linecount 1;
#P hidden newex 14 322 73 196617 pvar RELEASE;
#P number 172 42 35 9 0 1000 8227 3 198 198 198 221 221 221 222 222 222 0 0 0;
#P objectname RELEASE;
#P comment 127 43 48 196617 Release;
#B frgb 172 172 172;
#P comment 206 27 22 196617 ms;
#B frgb 172 172 172;
#P window linecount 3;
#P hidden newex 14 265 323 196617 jcom.parameter attack @type msg_int @ramp.drive scheduler @repetitions 0 @range 0 1000 @clipmode low @description "When the gate opens\\\, this parameter sets how many milliseconds it will take to fade in.";
#P objectname attack;
#P window linecount 1;
#P hidden newex 14 242 72 196617 pvar ATTACK;
#N vpatcher 541 69 948 424;
#P window setfont "Sans Serif" 9.;
#P window linecount 0;
#P newex 50 77 31 196617 == 0;
#P newex 50 176 29 196617 qlim;
#P message 225 195 93 196617 brgb 100 100 100;
#P newex 225 166 32 196617 sel 0;
#P newex 225 141 54 196617 dspstate~;
#P window linecount 1;
#P newex 50 104 149 196617 gate 1 1;
#P newex 50 54 110 196617 r $0__freeze_display;
#P newex 50 198 41 196617 sel 0 1;
#P message 65 253 69 196617 brgb 0 220 0;
#P message 50 231 81 196617 brgb 200 20 20;
#P inlet 189 34 15 0;
#P outlet 50 290 15 0;
#P connect 5 0 11 0;
#P connect 11 0 6 0;
#P connect 6 0 10 0;
#P connect 10 0 4 0;
#P connect 4 0 2 0;
#P connect 9 0 0 0;
#P connect 3 0 0 0;
#P connect 2 0 0 0;
#P connect 4 1 3 0;
#P connect 1 0 6 1;
#P connect 7 0 8 0;
#P connect 8 0 9 0;
#P pop;
#P hidden newobj 247 543 58 196617 p visualize;
#P hidden newex 247 565 67 196617 pvar ACTIVE;
#P user panel 234 32 16 16;
#X brgb 100 100 100;
#X frgb 0 0 0;
#X border 0;
#X rounded 50;
#X shadow 0;
#X done;
#P objectname ACTIVE;
#P number 172 25 35 9 0 1000 8227 3 198 198 198 221 221 221 222 222 222 0 0 0;
#P objectname ATTACK;
#P hidden newex 14 76 88 196617 pvar LOOKAHEAD;
#P hidden newex 14 656 408 196617 jcom.hub jmod.noisegate~ @size 1U-half @module_type audio @description "noise gate.";
#P objectname jcom.hub;
#P hidden comment 33 629 79 196617 command input;
#P hidden inlet 14 630 13 0;
#P hidden message 254 629 37 196617 /init;
#P hidden inlet 113 408 13 0;
#P hidden outlet 146 565 13 0;
#P window linecount 3;
#P hidden newex 14 98 304 196617 jcom.parameter lookahead @type msg_int @ramp.drive scheduler @repetitions 0 @range 0 100 @clipmode low @description "How many samples to look ahead while monitoring incoming signal.";
#P objectname lookahead;
#P window linecount 1;
#P comment 127 26 48 196617 Attack;
#B frgb 172 172 172;
#P number 53 24 35 9 0 1000 8227 3 198 198 198 221 221 221 222 222 222 0 0 0;
#P objectname LOOKAHEAD;
#P comment 1 25 58 196617 Lookahead;
#B frgb 172 172 172;
#P hidden newex 46 506 145 196617 jalg.noisegate~.mxt $0_;
#P hidden comment 182 407 105 196617 ----signal inputs----;
#P hidden outlet 14 683 13 0;
#P hidden comment 113 582 103 196617 ---signal output---;
#P bpatcher 0 0 255 60 0 0 jcom.gui.mxt 0;
#P objectname jcom.gui.1Uh.a.stereo.mxt;
#P hidden fasten 8 0 15 0 19 142 9 142 9 72 19 72;
#P hidden connect 15 0 8 0;
#P hidden fasten 28 0 29 0 19 225 8 225 8 149 19 149;
#P hidden connect 29 0 28 0;
#P hidden fasten 21 0 20 0 19 310 7 310 7 239 19 239;
#P hidden connect 20 0 21 0;
#P hidden fasten 26 0 25 0 19 390 6 390 6 315 19 315;
#P hidden connect 25 0 26 0;
#P hidden fasten 11 0 14 0 259 649 19 649;
#P hidden fasten 34 0 14 0 132 649 19 649;
#P hidden connect 12 0 14 0;
#P hidden connect 14 0 2 0;
#P hidden fasten 41 0 4 0 385 498 51 498;
#P hidden fasten 40 0 4 0 252 498 51 498;
#P hidden connect 10 0 37 0;
#P hidden connect 37 0 4 1;
#P hidden connect 4 1 38 0;
#P hidden connect 38 0 35 0;
#P hidden connect 38 1 9 0;
#P hidden connect 37 1 4 2;
#P hidden connect 4 2 38 1;
#P hidden connect 37 2 40 0;
#P hidden connect 39 0 19 0;
#P hidden connect 19 0 18 0;
#P hidden connect 36 0 37 1;
#P hidden connect 40 1 41 0;
#P pop;
