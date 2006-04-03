max v2;
#N vpatcher 58 182 730 517;
#P window setfont "Sans Serif" 9.;
#P hidden newex 120 187 47 196617 pcontrol;
#P hidden newex 120 167 78 196617 jmod.pass open;
#P hidden message 103 87 50 196617 /autodoc;
#B color 3;
#P comment 115 20 32 196617 bleed;
#P comment 120 34 26 196617 gain;
#P comment 77 46 62 196617 normalize;
#P user radiogroup 62 44 79 16;
#X size 1;
#X offset 16;
#X inactive 0;
#X itemtype 1;
#X flagmode 0;
#X set 0;
#X done;
#P window linecount 2;
#P hidden newex 341 134 233 196617 jmod.parameter $0_ /normalize @type toggle @description "Switches normalization on and off";
#P objectname jmod.parameter.mxb;
#P flonum 143 18 35 9 0 0 8224 3 0 0 0 221 221 221 222 222 222 0 0 0;
#P flonum 143 32 35 9 0 0 8224 3 0 0 0 221 221 221 222 222 222 0 0 0;
#P hidden newex 341 6 275 196617 jmod.parameter $0_ /bleed @type msg_float @ramp 1 @description "Sets convolution kernel value for all colors";
#P objectname jmod.parameter.mxb[4];
#P hidden newex 341 38 244 196617 jmod.parameter $0_ /gain @type msg_float @ramp 1 @description "The gain level for all colors";
#P objectname jmod.parameter.mxb[3];
#P flonum 65 18 35 9 0 0 8224 3 0 0 0 221 221 221 222 222 222 0 0 0;
#P window linecount 1;
#P comment 5 20 65 196617 feedforward;
#P flonum 65 32 35 9 0 0 8224 3 0 0 0 221 221 221 222 222 222 0 0 0;
#P comment 22 34 48 196617 feedback;
#P window linecount 2;
#P hidden newex 341 102 265 196617 jmod.parameter $0_ /feedback @type msg_float @ramp 1 @description "The feedback value for all colors";
#P objectname jmod.parameter.mxb[1];
#P window linecount 1;
#P hidden comment 135 238 75 196617 VIDEO OUTPUT;
#P hidden outlet 120 238 13 0;
#P hidden inlet 241 187 13 0;
#P hidden comment 256 187 65 196617 VIDEO INPUT;
#P window linecount 2;
#P hidden message 17 195 72 196617 \; jmod.init bang;
#B color 3;
#P window linecount 1;
#P hidden comment 14 84 79 196617 command input;
#P window linecount 4;
#P hidden newex 0 109 250 196617 jmod.hub $0_ jmod.wake% $1 @size 1U-half @module_type video @algorithm_type jitter @num_inputs 1 @num_outputs 1 @description "Video feedback with convolution for trippy effects";
#P objectname jmod.hub;
#P hidden outlet 0 171 13 0;
#P hidden inlet 0 84 13 0;
#P bpatcher 0 0 256 60 0 0 jmod.gui.mxt 0 $0_;
#P objectname jmod.gui.1Uh.v.mxb;
#P window linecount 2;
#P hidden newex 341 70 282 196617 jmod.parameter $0_ /feedforward @type msg_float @ramp 1 @description "The feedforward value for all colors";
#P objectname jmod.parameter.mxb[2];
#P window linecount 1;
#P hidden newex 120 211 131 196617 jmod.wake%.alg;
#P window linecount 3;
#P hidden newex 254 113 79 196617 pattrstorage @autorestore 0 @savemode 0;
#X client_rect 25 70 581 503;
#X storage_rect 0 0 640 240;
#P objectname jmod.wake%;
#P hidden fasten 1 0 3 0 125 231 330 231 330 -18 5 -18;
#P hidden connect 4 0 6 0;
#P hidden fasten 27 0 6 0 108 105 5 105;
#P hidden connect 6 0 5 0;
#P hidden connect 22 0 23 0;
#P hidden connect 2 0 17 0;
#P hidden connect 13 0 15 0;
#P hidden connect 6 1 28 0;
#P hidden connect 28 0 29 0;
#P hidden fasten 28 1 1 0 193 206 125 206;
#P hidden connect 29 0 1 0;
#P hidden connect 1 0 11 0;
#P hidden connect 19 0 21 0;
#P hidden connect 18 0 20 0;
#P hidden connect 0 0 6 1;
#P hidden connect 10 0 1 1;
#P hidden connect 6 2 0 0;
#P hidden connect 21 0 19 0;
#P hidden connect 20 0 18 0;
#P hidden connect 17 0 2 0;
#P hidden connect 15 0 13 0;
#P hidden connect 23 0 22 0;
#P pop;
