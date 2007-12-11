max v2;
#N vpatcher 104 141 745 713;
#P window setfont "Sans Serif" 9.;
#P window linecount 1;
#P newex 429 257 64 196617 patcherargs;
#P newex 483 281 57 196617 route done;
#N vpatcher 232 82 1136 518;
#P window setfont "Sans Serif" 9.;
#P newex 128 101 54 196617 jcom.thru;
#P message 294 168 42 196617 ramp 0;
#P newex 294 145 20 196617 t b;
#P window linecount 1;
#P newex 128 168 139 196617 expr ($f1 * (10./6.)) + 127;
#P window linecount 0;
#P newex 128 190 152 196617 zl join;
#P newex 128 146 152 196617 zl slice 1;
#P window linecount 1;
#P newex 128 73 91 196617 route int float list;
#P newex 50 50 89 196617 jcom.pass inc dec;
#P inlet 50 30 15 0;
#P outlet 50 288 15 0;
#P window linecount 0;
#P comment 368 170 172 196617 <- decibels to midi conversion;
#P connect 2 0 3 0;
#P connect 3 1 1 0;
#P connect 3 0 1 0;
#P connect 6 0 1 0;
#P connect 3 2 4 0;
#P connect 4 0 10 0;
#P connect 4 1 10 0;
#P connect 4 2 10 0;
#P connect 10 0 5 0;
#P connect 5 0 7 0;
#P connect 7 0 6 0;
#P connect 5 1 6 1;
#P connect 9 0 6 1;
#P fasten 10 0 8 0 133 131 299 131;
#P connect 8 0 9 0;
#P pop;
#P newobj 238 362 78 196617 p convert2midi;
#P comment 232 441 98 196617 Direct Output;
#N comlet Prepend "set" and connect to GUI inlet;
#P outlet 216 441 15 0;
#P comment 80 441 98 196617 Connect to GUI inlet;
#N comlet Prepend "set" and connect to GUI inlet;
#P outlet 64 441 15 0;
#P comment 80 275 104 196617 Connect to GUI outlet;
#P inlet 64 274 15 0;
#P window linecount 2;
#P newex 64 403 324 196617 jcom.parameter $1/midi @type msg_float @range 0. 158. @clipmode low @ramp.drive scheduler @description "Set gain as MIDI value.";
#P objectname $1/midi;
#P newex 88 320 345 196617 jcom.message $1 @type msg_float @slave 1 @range -144. 18. @clipmode none @ramp.drive scheduler @description "Set gain as dB value.";
#P window linecount 4;
#P comment 45 172 395 196617 For this component to work properly \, you have to avoid output from being fed back to the inlet \, else the output will kill any ongoing ramp. If jcom.parameter.gain outlet/inlet is connected to a GUI inlet/outlet \, use the "set" mesage for updating GUI display when jcom.parameter.gain value change.;
#P window linecount 1;
#P comment 45 157 395 196617 IMPORTANT:;
#P comment 45 85 311 196617 - $1/midi: gain as MIDI values;
#P comment 45 57 311 196617 Component for dealing with gain parameters. Incorporates;
#P comment 45 72 311 196617 - $1: gain as dB values;
#P window linecount 3;
#P comment 45 112 395 196617 jcom.parameter.gain is special in the sense that gain levels can be adjusted using various messages \, or by a GUI. All kinds of messages are mapped to MIDI values internally \, so that they can all be dealt with by the same ramping mechanism.;
#P fasten 15 1 7 0 535 394 69 394;
#P fasten 14 0 7 0 243 391 69 391;
#P connect 8 0 7 0;
#P connect 7 0 10 0;
#P fasten 15 1 6 0 535 312 93 312;
#P connect 7 1 12 0;
#P connect 6 1 14 0;
#P connect 16 1 15 0;
#P pop;
