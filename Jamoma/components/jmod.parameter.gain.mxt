max v2;
#N vpatcher 179 165 820 794;
#P window setfont "Sans Serif" 9.;
#P newex 443 92 137 196617 send $1_register;
#P message 443 74 145 196617 $2 \, $2_midi \, $2_inc \, $2_dec;
#P newex 443 54 140 196617 receive $1_query;
#P newex 53 508 51 196617 tap.round;
#P newex 467 498 124 196617 sprintf send %s_xxx_%s;
#P newex 467 463 124 196617 t $1 $2;
#P newex 467 439 45 196617 loadbang;
#P newex 202 544 45 196617 forward;
#P newex 202 518 170 196617 scale 0. 158. 0. 7.94321 1.071519;
#P comment 70 134 100 196617 Connect to GUI outlet;
#P comment 70 559 100 196617 Connect to GUI inlet;
#P comment 50 94 311 196617 - $2_dec: decrease MIDI gain value by one;
#P comment 50 81 311 196617 - $2_inc: increase MIDI gain value by one;
#P comment 50 68 311 196617 - $2_midi: gain as MIDI values;
#N comlet Connect to GUI inlet;
#P outlet 53 556 15 0;
#N comlet Connect to GUI outlet;
#P inlet 53 133 15 0;
#P newex 110 414 103 196617 loadmess -2000000.;
#P newex 53 414 55 196617 tap.change;
#P newex 53 437 145 196617 pattr $2_midi @autorestore 0;
#X prestore 1 0 0;
#P objectname $2_midi;
#P newex 53 356 71 196617 jmod.line.mxt;
#P newex 126 159 139 196617 receive $1_instruction;
#P newex 126 273 73 196617 pack 0. 0.;
#P newex 202 228 21 196617 t 0;
#P newex 126 228 73 196617 unpack 0. 0;
#N vpatcher 10 59 410 359;
#P window setfont "Sans Serif" 9.;
#P newex 144 85 64 196617 expr ($f1 * (10./6.)) + 127;
#B color 3;
#P comment 212 91 80 196617 decibels to midi conversion;
#P outlet 144 145 15 0;
#P inlet 144 36 15 0;
#P connect 0 0 3 0;
#P connect 3 0 1 0;
#P pop;
#P newobj 126 251 65 196617 p db_to_midi;
#P newex 348 277 27 196617 +;
#P newex 459 214 26 196617 t -1;
#P newex 348 214 21 196617 t 1;
#P newex 126 182 455 196617 route $2 $2_midi $2_inc $2_dec;
#P comment 50 40 311 196617 Component for dealing with gain parameters. Incorporates;
#P comment 50 55 311 196617 - $2: gain as dB values;
#P fasten 5 0 11 0 353 303 58 303;
#P fasten 2 1 11 0 242 300 58 300;
#P fasten 9 0 11 0 131 297 58 297;
#P fasten 15 0 13 0 20 321;
#P connect 11 0 13 0;
#P connect 13 0 12 0;
#P connect 12 0 27 0;
#P connect 27 0 16 0;
#P connect 14 0 13 1;
#P fasten 12 0 11 1 58 479 237 479 237 351 119 351;
#P connect 10 0 2 0;
#P connect 2 0 7 0;
#P connect 7 0 6 0;
#P connect 6 0 9 0;
#P connect 8 0 9 1;
#P connect 7 1 9 1;
#P connect 2 0 8 0;
#P fasten 12 0 22 0 58 487 207 487;
#P connect 22 0 23 0;
#P fasten 26 0 23 0 472 539 207 539;
#P connect 2 2 3 0;
#P connect 3 0 5 0;
#P fasten 4 0 5 0 464 245 353 245;
#P fasten 12 0 5 1 58 481 383 481 383 270 370 270;
#P connect 28 0 29 0;
#P connect 29 0 30 0;
#P connect 2 3 4 0;
#P connect 24 0 25 0;
#P connect 25 0 26 0;
#P connect 25 1 26 1;
#P pop;
