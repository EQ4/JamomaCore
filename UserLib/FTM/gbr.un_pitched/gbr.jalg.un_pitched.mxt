max v2;#N vpatcher 73 133 875 623;#P inlet 275 54 15 0;#P window setfont "Sans Serif" 9.;#P window linecount 1;#N gbr.ola~ 1 1000 @interp 1 --> 0;#T _#ftm version 2 3;#T _#scope begin;#T _#absargs $0_ $1_ $2_ $3_ $4_ $5_ $6_ $7_ $8_ $9_;#P newobj 533 334 130 196617 gbr.ola~ 1 1000 @interp 1;#N gbr.ola~ 1 1000 --> 0;#P newobj 275 334 83 196617 gbr.ola~ 1 1000;#P newex 67 79 161 196617 jcom.oscroute /range /transpose;#N comlet unvoiced signal;#P outlet 275 360 15 0;#P comment 354 168 236 196617 window two analysed periods to obtain wave form;#P comment 330 214 176 196617 separate voiced and unvoiced periods;#N ftm.copy fmat $wave --> 0;#P newobj 234 416 105 196617 ftm.copy fmat $wave;#N vpatcher 643 165 1176 673;#P window setfont "Sans Serif" 9.;#P newex 129 98 31 196617 mtof;#P newex 75 98 31 196617 mtof;#P window linecount 1;#P newex 75 73 64 196617 unpack 0. 0.;#P inlet 75 25 15 0;#P newex 75 48 40 196617 zl sort;#P window linecount 0;#P newex 292 313 50 196617 f;#P newex 292 199 50 196617 t f f;#P window linecount 1;#P message 353 171 23 196617 0.;#P newex 292 147 71 196617 split 50. 400.;#P outlet 292 381 15 0;#P inlet 179 25 15 0;#P inlet 292 25 15 0;#P outlet 196 381 15 0;#P outlet 119 381 15 0;#P window linecount 0;#P newex 119 285 27 196617 + 1;#P newex 119 313 87 196617 gate 2;#P newex 119 262 34 196617 == 0.;#P window linecount 1;#P newex 179 199 27 196617 t b l;#P connect 14 0 13 0;#P connect 13 0 15 0;#P connect 15 0 16 0;#P connect 11 0 1 0;#P connect 1 0 3 0;#P connect 3 0 2 0;#P connect 2 0 4 0;#P connect 15 1 17 0;#P connect 7 0 0 0;#P connect 0 1 2 1;#P connect 2 1 5 0;#P connect 6 0 9 0;#P connect 10 0 11 0;#P connect 9 0 11 0;#P connect 0 0 12 0;#P connect 12 0 8 0;#P fasten 16 0 9 1 80 127 327 127;#P connect 11 1 12 1;#P fasten 17 0 9 2 134 122 357 122;#P connect 9 1 10 0;#P pop;#P newobj 234 211 92 196617 p voiced/unvoiced;#P user ftm.object 234 440 37 19 3 10 --> 0;#T _#obj 1 fmat;#T _#def 0 _fmat wave local;#N gbr.wind= hann --> 0;#P newobj 275 166 75 196617 gbr.wind= hann;#N gbr.psy~ --> 0;#P newobj 275 114 134 196617 gbr.psy~;#P comment 247 400 166 196617 store voiced period to fmat $wave;#P comment 67 29 317 196617 yin-based PSOLA analysis is used to split voiced and unvoiced signal;#P comment 629 299 113 196617 wave of voiced periods;#P inlet 67 53 15 0;#N comlet voiced signal;#P outlet 533 360 15 0;#P newex 573 266 50 196617 * 1.;#P user ftm.mess 613 242 110 15 3 9 255 255 255 0 0 0 1 2 1 0 --> 0;#T _#init "_0 1";#T _#line "_(pow 2 ($1 / 1200.) )";#N gbr.fire~ 0 $wave --> 0;#T _#scope end;#P newobj 533 296 93 196617 gbr.fire~ 0 $wave;#P newex 533 242 50 196617 split 0.;#P connect 5 0 17 0;#P lcolor 6;#P fasten 17 0 12 0 72 199 239 199;#P connect 12 0 13 0;#P connect 20 0 9 0;#P connect 9 0 10 0;#P connect 10 0 12 1;#P connect 12 1 18 0;#P connect 18 0 16 0;#P connect 9 1 12 2;#P fasten 12 2 0 0 321 234 538 234;#P connect 3 0 1 0;#P connect 0 0 1 0;#P connect 1 0 19 0;#P connect 19 0 4 0;#P connect 0 1 3 0;#P fasten 17 1 2 0 147 107 618 107;#P connect 2 0 3 1;#P pop;