max v2;
#N vpatcher 261 123 869 739;
#P window setfont Verdana 9.;
#P window linecount 1;
#P newex 273 151 48 472055817 r limiter;
#P newex 273 60 51 472055817 r edge%;
#P newex 18 150 84 472055817 r my_degrade2;
#P newex 18 59 76 472055817 r my_degrade;
#P window setfont "Sans Serif" 9.;
#P window linecount 2;
#P comment 18 386 443 196617 This example of using qlist is actually derived from the qlist help patch. Please that help patch for more information!;
#P window linecount 11;
#P comment 18 419 436 196617 This example shows one possible interface to qlist for sending variable values to corresponding receives and for separating groups of variables and their values into successive events. This example also allows for time-delayed variable sends within an event. The syntax created via the patcher 'qlist_control' is the following: in the qlist object connected to 'qlist_control' \, if there are two numbers at the beginning of a line which are not related to a variable send \, they represent a delay time in milliseconds and an event number. A single number at the beginning of a line \, before any variable send on the same line \, represents a delay time in milliseconds. Thus \, event 2 starts at time 0 with a send of the value 7500 to var1. After a delay of 2000 milliseconds \, var2 is sent the value 20. Click successively from event 0 \, which rewinds the qlist \, through event 10 and compare the values in the Max window with the values in the qlist. Note that events 2 \, 5 \, and 9 all have time-delayed sends after time zero.;
#P window linecount 1;
#P comment 54 252 272 196617 0 = 'next' message advances and executes (See Nota Bene);
#P comment 54 269 235 196617 1 = 'next' message advances but does not executes;
#P comment 133 293 242 196617 click on event numbers (zero does a rewind of qlist);
#P message 342 307 22 196617 8;
#P message 316 307 22 196617 7;
#P message 289 307 22 196617 6;
#P message 263 307 22 196617 5;
#P message 237 307 22 196617 4;
#P message 211 307 22 196617 3;
#P message 185 307 22 196617 2;
#P message 159 307 22 196617 1;
#P message 133 307 22 196617 0;
#P message 369 307 22 196617 9;
#P message 396 307 28 196617 10;
#N qlist;
#X append ------------------------ 1 \; 0 1 my_degrade /audio/mute 0 \; my_degrade /audio/gain 0 2000 \; ------------------------ 2 \; 0;
#X append 2 my_degrade2 /audio/gain 0 2000 \; 2000 limiter /audio/mute 0 \; limiter /audio/gain 0 3500 \; ------------------------ 3;
#X append \; 0 3 edge% /thresh 0.75 500 \; ------------------------ 4 \; 0 4 var2 8600 \; ------------------------ 5;
#X append \; 0 5 var2 7100 \; 1000 var1 1 \; ------------------------ 6 \; 0 6 var1 8400 \;;
#X append ------------------------ 7 \; 0 7 var2 6800 \; ------------------------ 8 \; 0 8 var1 9100 \; ------------------------ 9;
#X append \; 0 9 var1 7300 \; 2500 var2 100 \; ------------------------ 10 \; 0 10 var1 7200 \;;
#X append var2 3 \; ------------------------ 11 \; 0 11 \;;
#P newobj 41 354 40 196617 qlist;
#B color 5;
#N vpatcher 156 164 711 648;
#P window setfont "Sans Serif" 9.;
#P newex 147 244 40 196617 t b i b;
#P newex 147 220 75 196617 split 0 100000;
#P newex 147 197 27 196617 -;
#P newex 162 285 75 196617 split 1 100000;
#P message 83 190 27 196617 stop;
#P newex 311 58 30 196617 sel 0;
#P newex 311 86 28 196617 t b b;
#P message 311 156 65 196617 rewind \, next;
#P comment 331 30 61 196617 events inlet;
#P inlet 311 29 15 0;
#P message 162 318 14 196617 0;
#P message 241 318 43 196617 next \$1;
#P newex 241 285 27 196617 i 0;
#P comment 82 406 145 196617 gets time delays from the qlist;
#P inlet 127 29 15 0;
#P newex 127 94 47 196617 unpack;
#P comment 263 348 192 196617 outlet for 'rewind' and 'next' messages which are sent to the qlist;
#P comment 294 254 226 196617 If negative \, do nothing. If zero \, send a 'next' to the qlist and 'bang' the delay object. If positive \, send a 'next' to the qlist \, a delay time of zero to the delay object \, and 'bang' the delay object.;
#P comment 181 28 77 196617 executable or nonexecutable 'next' inlet;
#P comment 188 432 215 196617 dummy variable which should not be removed!;
#P newex 49 431 135 196617 r ------------------------;
#P comment 34 50 78 196617 separate the time delays and event numbers being output from the qlist and send time delays to the delay object;
#P comment 319 199 150 196617 send the present event number for comparison with any incoming event numbers;
#P comment 348 115 150 196617 if the event number is 0 \, initalize by sending a 'rewind' and 'next' message to qlist;
#P message 329 118 14 196617 0;
#P newex 83 384 54 196617 del;
#P inlet 258 28 15 0;
#P outlet 241 355 15 0;
#P connect 22 0 23 0;
#P connect 27 0 2 0;
#P connect 23 0 2 0;
#P connect 13 0 12 0;
#P connect 17 0 2 1;
#P connect 12 0 2 1;
#P connect 22 1 25 0;
#P connect 2 0 25 0;
#P connect 25 0 26 0;
#P connect 26 0 27 0;
#P connect 27 1 24 0;
#P connect 24 0 17 0;
#P connect 12 1 25 1;
#P connect 3 0 25 1;
#P connect 27 2 15 0;
#P connect 15 0 16 0;
#P connect 20 0 0 0;
#P connect 16 0 0 0;
#P connect 1 0 15 1;
#P connect 18 0 22 0;
#P connect 22 0 21 0;
#P connect 21 0 20 0;
#P connect 21 1 3 0;
#P pop;
#P newobj 41 327 103 196617 patcher qlist_control;
#P newex 320 342 38 196617 r var2;
#P newex 217 342 38 196617 r var1;
#P newex 217 368 55 196617 print var1;
#P newex 320 368 55 196617 print var2;
#P message 34 251 14 196617 0;
#P message 34 268 14 196617 1;
#P bpatcher 273 172 255 60 0 0 jmod.limiter~.mxt 0;
#P objectname /limiter~;
#P bpatcher 273 83 255 60 0 0 jmod.edge%.mxt 0;
#P objectname /edge%;
#P bpatcher 18 172 255 60 0 0 jmod.degrade~.mxt 0;
#P objectname degrade_also~;
#P bpatcher 18 83 255 60 0 0 jmod.degrade~.mxt 0;
#P objectname degrade~;
#P window setfont Verdana 9.;
#P window linecount 2;
#P comment 88 350 100 472055817 � DOUBLE-CLICK TO EDIT!;
#P connect 29 0 1 0;
#P connect 30 0 2 0;
#P fasten 12 0 11 0 46 378 33 378 33 320 46 320;
#P connect 11 0 12 0;
#P connect 6 0 11 1;
#P connect 5 0 11 1;
#P connect 23 0 11 2;
#P connect 22 0 11 2;
#P connect 21 0 11 2;
#P connect 20 0 11 2;
#P connect 19 0 11 2;
#P connect 18 0 11 2;
#P connect 17 0 11 2;
#P connect 16 0 11 2;
#P connect 15 0 11 2;
#P connect 14 0 11 2;
#P connect 13 0 11 2;
#P connect 9 0 8 0;
#P connect 31 0 3 0;
#P connect 32 0 4 0;
#P connect 10 0 7 0;
#P pop;
