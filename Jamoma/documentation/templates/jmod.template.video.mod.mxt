max v2;
#N vpatcher 75 37 929 521;
#P window setfont "Sans Serif" 9.;
#P message 140 342 142 9109513 param_a 0;
#P newex 140 319 57 9109513 prepend set;
#P window linecount 2;
#P message 27 220 65 9109513 \; max refresh;
#P comment 492 287 324 9109513 If you need to send messages to or within the patch \, but it's not required that they be stored or retrieveable \, use jmod.message.;
#B color 12;
#P window linecount 1;
#P comment 473 272 300 9109513 jmod.message:;
#B color 12;
#P window linecount 2;
#P comment 492 218 317 9109513 Use this for any parameters that you'd like to be able to store and retrieve.;
#B color 12;
#P window linecount 1;
#P comment 473 203 235 9109513 jmod.parameter:;
#B color 12;
#P comment 575 428 241 9109513 for html autodoc of module;
#B color 12;
#P comment 575 383 241 9109513 1 (default)/0;
#B color 12;
#P comment 575 368 241 9109513 1/0 (default);
#B color 12;
#P comment 575 413 241 9109513 none \, low \, high \, both (default);
#B color 12;
#P window linecount 0;
#P comment 575 398 241 9109513;
#B color 12;
#P window linecount 1;
#P comment 575 353 241 9109513 generic (default) \, msg_int \, msg_float \, menu \, toggle;
#B color 12;
#P comment 492 428 79 9109513 @description;
#B color 12;
#P comment 492 383 79 9109513 @repetitions;
#B color 12;
#P comment 492 368 79 9109513 @ramp;
#B color 12;
#P comment 492 413 79 9109513 @clipmode;
#B color 12;
#P comment 492 398 79 9109513 @range;
#B color 12;
#P comment 492 353 79 9109513 @type;
#B color 12;
#P comment 473 338 235 9109513 Attributes for jmod.parameter and jmod.message:;
#B color 12;
#P comment 9 43 65 9109513 Message B;
#B frgb 255 255 255;
#P number 78 42 35 9 0 0 8224 139 255 255 255 221 221 221 222 222 222 0 0 0;
#P objectname MessageB;
#P comment 9 21 65 9109513 Parameter A;
#B frgb 255 255 255;
#P number 77 21 35 9 0 0 8224 139 255 255 255 221 221 221 222 222 222 0 0 0;
#P objectname ParameterA;
#P newex 477 111 75 9109513 pvar MessageB;
#P newex 477 133 235 9109513 jmod.message.mxt $0_ message_b @type msg_int;
#P newex 477 51 88 9109513 pvar ParameterA;
#P newex 477 71 305 9109513 jmod.parameter.mxt $0_ param_a @repetitions 0 @type msg_int;
#P objectname jmod.parameter.mxt;
#P message 106 87 43 9109513 autodoc;
#B color 3;
#P window linecount 3;
#P newex 0 109 344 9109513 jmod.hub $0_ jmod.video.template $1 @size 1U-half @module_type video @algorithm_type jitter @num_inputs 1 @num_outputs 1 @description "This module doesn't do much yet.";
#P objectname jmod.hub;
#P window linecount 1;
#P comment 182 231 75 9109513 VIDEO OUTPUT;
#P outlet 167 231 13 0;
#P inlet 234 166 13 0;
#P comment 249 166 65 9109513 VIDEO INPUT;
#P newex 167 188 77 9109513 jmod.mblur%.alg;
#P window linecount 2;
#P message 27 185 72 9109513 \; jmod.init bang;
#P window linecount 1;
#P comment 14 84 79 9109513 command input;
#P outlet 0 171 13 0;
#P inlet 0 84 13 0;
#P window linecount 3;
#P newex 348 109 79 9109513 pattrstorage @autorestore 0 @savemode 0;
#X client_rect 0 0 640 240;
#X storage_rect 0 0 640 240;
#P objectname jmod.video.template;
#P bpatcher 0 0 256 60 0 0 jmod.gui.mxt 0 $0_;
#P objectname jmod.gui.1Uh.v.mxb;
#P window linecount 1;
#P comment 249 190 145 9109513 <- substitute for desired algorithm;
#B frgb 102 102 204;
#P hidden fasten 7 0 1 0 172 215 442 215 442 -12 5 -12;
#P connect 3 0 12 0;
#P fasten 13 0 12 0 111 106 5 106;
#P connect 12 0 4 0;
#P fasten 12 1 40 0 172 167 145 167;
#P connect 40 0 41 0;
#P fasten 12 1 7 0 172 171 172 171;
#P connect 7 0 10 0;
#P connect 9 0 7 1;
#P connect 2 0 12 1;
#P connect 12 2 2 0;
#P fasten 14 0 15 0 482 94 470 94 470 46 482 46;
#P connect 15 0 14 0;
#P fasten 16 0 17 0 482 157 470 157 470 104 482 104;
#P connect 17 0 16 0;
#P pop;
