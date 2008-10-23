{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 100.0, 163.0, 1152.0, 547.0 ],
		"bglocked" : 0,
		"defrect" : [ 100.0, 163.0, 1152.0, 547.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 5.0, 5.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "hue_angle[1]",
					"text" : "jcom.parameter fullscreen @repetitions/allow 0 @type msg_int @description \"turn patch to fullscreen mode\"",
					"linecount" : 4,
					"id" : "obj-9",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 5.0, 300.0, 175.0, 55.0 ],
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate 1 1",
					"id" : "obj-53",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 600.0, 84.0, 46.5, 18.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t 1 i 0",
					"id" : "obj-52",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 785.0, 445.0, 36.0, 18.0 ],
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"outlettype" : [ "int", "int", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p",
					"id" : "obj-19",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 310.0, 265.0, 32.5, 18.0 ],
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "int", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 25.0, 69.0, 342.0, 266.0 ],
						"bglocked" : 0,
						"defrect" : [ 25.0, 69.0, 342.0, 266.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 5.0, 5.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-4",
									"numinlets" : 1,
									"patching_rect" : [ 160.0, 170.0, 20.0, 20.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-3",
									"numinlets" : 1,
									"patching_rect" : [ 255.0, 170.0, 20.0, 20.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "deferlow",
									"id" : "obj-1",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 45.0, 115.0, 48.0, 18.0 ],
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 1 i 0",
									"id" : "obj-9",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 55.0, 85.0, 218.0, 18.0 ],
									"numoutlets" : 3,
									"fontsize" : 10.0,
									"outlettype" : [ "int", "int", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-14",
									"numinlets" : 0,
									"patching_rect" : [ 55.0, 40.0, 25.0, 25.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-9", 1 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 2 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Arial",
						"default_fontface" : 0,
						"globalpatchername" : "",
						"default_fontname" : "Arial",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate 1 1",
					"id" : "obj-13",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 190.0, 70.0, 46.5, 18.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t 1 i 0",
					"id" : "obj-10",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 213.0, 261.0, 36.0, 18.0 ],
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"outlettype" : [ "int", "int", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate 1 1",
					"id" : "obj-49",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 755.0, 390.0, 46.5, 18.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "- 1",
					"id" : "obj-48",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 610.0, 145.0, 32.5, 18.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t 1 i 0",
					"id" : "obj-15",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 600.0, 110.0, 36.0, 18.0 ],
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"outlettype" : [ "int", "int", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "select 1 $1",
					"id" : "obj-12",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 610.0, 175.0, 59.0, 16.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameter layout @type msg_int @repetitions/allow 0",
					"id" : "obj-8",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 240.0, 35.0, 272.0, 18.0 ],
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "del 1000",
					"id" : "obj-44",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 895.0, 59.0, 70.0, 18.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "deferlow",
					"id" : "obj-41",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 895.0, 39.0, 70.0, 18.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"id" : "obj-28",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 895.0, 18.0, 70.0, 18.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"hint" : "set main patcher to fullscreen",
					"id" : "obj-23",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 186.0, 324.0, 63.0, 15.0 ],
					"presentation" : 1,
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"mode" : 1,
					"outlettype" : [ "", "", "int" ],
					"text" : "fullscreen",
					"texton" : "! fullscreen !",
					"presentation_rect" : [ 74.0, 189.0, 70.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "zl nth 3",
					"id" : "obj-45",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 785.0, 415.0, 100.0, 18.0 ],
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "del 100",
					"id" : "obj-40",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 785.0, 157.0, 48.0, 18.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b l",
					"id" : "obj-36",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 785.0, 95.0, 39.0, 18.0 ],
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "bang", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b clear",
					"id" : "obj-35",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 846.0, 83.0, 100.0, 18.0 ],
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "bang", "clear" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /preset",
					"id" : "obj-34",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 724.0, 40.0, 112.0, 18.0 ],
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "refer #0-layout.presets, col 0 width 20, col 1 width 150",
					"id" : "obj-30",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 785.0, 181.0, 283.0, 16.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.cellblock",
					"hint" : "layouts presets (click to recall)",
					"cols" : 2,
					"id" : "obj-25",
					"outmode" : 1,
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 785.0, 205.0, 173.0, 178.0 ],
					"rows" : 6,
					"presentation" : 1,
					"numoutlets" : 4,
					"fontsize" : 10.0,
					"outlettype" : [ "list", "", "", "" ],
					"selmode" : 3,
					"hscroll" : 0,
					"presentation_rect" : [ 1.0, 20.0, 147.0, 168.0 ],
					"coldef" : [ [ 0, 20, 1, 1.0, 1.0, 1.0, 1, 1.0, 1.0, 1.0, -1, -1, -1 ], [ 1, 150, 1, 1.0, 1.0, 1.0, 1, 1.0, 1.0, 1.0, -1, -1, -1 ] ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "coll #0-layout.presets 1",
					"id" : "obj-21",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 805.0, 134.5, 189.0, 18.0 ],
					"numoutlets" : 4,
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "", "" ],
					"save" : [ "#N", "coll", "$0-layout.presets", 1, ";" ],
					"saved_object_attributes" : 					{
						"embed" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /recall /dump",
					"id" : "obj-20",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 724.0, 60.0, 141.0, 18.0 ],
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/dump",
					"id" : "obj-5",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 846.0, 105.0, 84.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "js jmod.layout.locate_patcher.js",
					"id" : "obj-11",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 381.0, 324.0, 174.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "fullscreen",
					"id" : "obj-18",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 208.0, 344.0, 54.0, 18.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "fullscreen $1",
					"id" : "obj-7",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 186.0, 366.0, 76.0, 18.0 ],
					"numoutlets" : 1,
					"fontsize" : 11.595187,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"id" : "obj-46",
					"numinlets" : 1,
					"patching_rect" : [ 186.0, 343.0, 20.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /preset/recall /preset/store",
					"linecount" : 2,
					"id" : "obj-3",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 225.0, 225.0, 147.0, 28.0 ],
					"numoutlets" : 3,
					"fontsize" : 9.0,
					"outlettype" : [ "", "", "" ],
					"color" : [ 1.0, 0.52549, 0.05098, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"id" : "obj-1",
					"numinlets" : 0,
					"patching_rect" : [ 484.0, 342.0, 25.0, 25.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"comment" : "from hover"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-6",
					"numinlets" : 1,
					"patching_rect" : [ 276.0, 405.0, 22.0, 22.0 ],
					"numoutlets" : 0,
					"comment" : "to thispatcher"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"hint" : "current layout",
					"annotation" : "",
					"id" : "obj-4",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 191.0, 34.0, 46.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"fontsize" : 11.040068,
					"triangle" : 0,
					"outlettype" : [ "int", "bang" ],
					"minimum" : 1,
					"presentation_rect" : [ 2.0, 188.0, 28.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/recall $1",
					"id" : "obj-2",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 190.0, 100.0, 94.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\"/filter~ 0 70 1 /degrade~ 0 140 1 /limiter~ 0 210 1 /noise~ 300 70 1 /output~ 300 140 1\"",
					"linecount" : 2,
					"id" : "obj-31",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 375.0, 455.0, 319.0, 27.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "hue_angle",
					"text" : "jcom.parameter positions @repetitions/allow 1 @type msg_list @description \"list of modules + position + show/hide\"",
					"linecount" : 2,
					"id" : "obj-29",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 375.0, 413.0, 334.0, 31.0 ],
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"id" : "obj-22",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 226.0, 128.0, 251.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"id" : "obj-24",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 275.0, 295.0, 56.0, 19.0 ],
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"id" : "obj-26",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 276.0, 346.0, 55.0, 19.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"id" : "obj-27",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 276.0, 321.0, 95.0, 19.0 ],
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"id" : "obj-32",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 286.0, 97.0, 40.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p LAYOUTS",
					"id" : "obj-33",
					"fontname" : "Verdana",
					"numinlets" : 3,
					"patching_rect" : [ 276.0, 381.0, 228.0, 19.0 ],
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "bang" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 699.0, 98.0, 182.0, 265.0 ],
						"bgcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 699.0, 98.0, 182.0, 265.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 1,
						"default_fontsize" : 9.3,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 5.0, 5.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 0,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 1",
									"id" : "obj-36",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 11.0, 427.0, 30.0, 17.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.3,
									"outlettype" : [ "int" ],
									"presentation_rect" : [ 11.0, 427.0, 0.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"id" : "obj-39",
									"numinlets" : 1,
									"patching_rect" : [ 390.0, 604.0, 20.0, 20.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "auto refresh list of module wen recalling a preset (only when inspector is opened)",
									"linecount" : 3,
									"id" : "obj-38",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 433.0, 521.0, 150.0, 39.0 ],
									"numoutlets" : 0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontsize" : 9.3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate",
									"id" : "obj-31",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 389.0, 523.0, 40.0, 17.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.3,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b",
									"id" : "obj-29",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 389.0, 543.0, 30.0, 17.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.3,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "del 500",
									"id" : "obj-28",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 389.0, 564.0, 61.0, 17.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.3,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 0",
									"id" : "obj-25",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 60.0, 428.0, 30.0, 17.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.3,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 1",
									"id" : "obj-24",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 388.0, 32.0, 30.0, 17.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.3,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-23",
									"numinlets" : 1,
									"patching_rect" : [ 467.0, 605.0, 25.0, 25.0 ],
									"numoutlets" : 0,
									"comment" : "to js.locate.patcher"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "refresh",
									"id" : "obj-8",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 485.0, 359.0, 41.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontsize" : 9.0,
									"presentation_rect" : [ 128.0, 243.0, 38.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"hint" : "refresh list of modules",
									"id" : "obj-19",
									"numinlets" : 1,
									"patching_rect" : [ 464.608063, 358.560425, 17.216118, 17.216118 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"presentation_rect" : [ 161.608063, 242.560425, 17.216118, 17.216118 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"prototypename" : "Arial9",
									"id" : "obj-58",
									"numinlets" : 1,
									"patching_rect" : [ 148.0, 121.0, 18.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"hidden" : 1,
									"outlettype" : [ "int" ],
									"presentation_rect" : [ 82.0, 164.0, 18.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "NoFloat",
									"id" : "obj-61",
									"fontname" : "Arial Bold Italic",
									"numinlets" : 1,
									"patching_rect" : [ 137.0, 96.0, 56.0, 21.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"hidden" : 1,
									"textcolor" : [ 1.0, 0.501961, 0.0, 1.0 ],
									"frgb" : [ 1.0, 0.501961, 0.0, 1.0 ],
									"fontsize" : 12.754706,
									"presentation_rect" : [ 102.0, 163.0, 56.0, 21.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"prototypename" : "Arial9",
									"id" : "obj-117",
									"numinlets" : 1,
									"patching_rect" : [ 111.0, 121.0, 18.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"hidden" : 1,
									"outlettype" : [ "int" ],
									"presentation_rect" : [ 21.0, 164.0, 18.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "View",
									"id" : "obj-115",
									"fontname" : "Arial Bold Italic",
									"numinlets" : 1,
									"patching_rect" : [ 100.0, 96.0, 41.0, 21.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"hidden" : 1,
									"textcolor" : [ 1.0, 0.501961, 0.0, 1.0 ],
									"frgb" : [ 1.0, 0.501961, 0.0, 1.0 ],
									"fontsize" : 12.754706,
									"presentation_rect" : [ 40.0, 163.0, 41.0, 21.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p View",
									"id" : "obj-140",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 111.0, 143.0, 56.0, 20.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"hidden" : 1,
									"fontsize" : 11.595187,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 60.0, 187.0, 56.0, 20.0 ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 449.0, 484.0, 657.0, 488.0 ],
										"bglocked" : 0,
										"defrect" : [ 449.0, 484.0, 657.0, 488.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 9.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t l",
													"id" : "obj-13",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 466.0, 378.0, 19.0, 18.0 ],
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"prototypename" : "Arial9",
													"id" : "obj-5",
													"numinlets" : 0,
													"patching_rect" : [ 466.0, 257.0, 18.0, 18.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "toggle",
													"prototypename" : "Arial9",
													"id" : "obj-6",
													"numinlets" : 1,
													"patching_rect" : [ 466.0, 279.0, 18.0, 18.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1 0",
													"id" : "obj-8",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 466.0, 301.0, 46.0, 18.0 ],
													"numoutlets" : 3,
													"fontsize" : 10.435669,
													"outlettype" : [ "bang", "bang", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "savewindow 1",
													"id" : "obj-1",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 362.0, 428.0, 76.0, 16.0 ],
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "qlim",
													"id" : "obj-63",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 43.0, 301.0, 32.5, 18.0 ],
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "qlim",
													"id" : "obj-62",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 283.0, 301.0, 32.5, 18.0 ],
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t l",
													"id" : "obj-37",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 43.0, 378.0, 19.0, 18.0 ],
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "window flags nofloat, window exec",
													"id" : "obj-38",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 466.0, 323.0, 170.0, 16.0 ],
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "window exec",
													"id" : "obj-39",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 43.0, 323.0, 70.0, 16.0 ],
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b l b",
													"id" : "obj-40",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 43.0, 279.0, 46.0, 18.0 ],
													"numoutlets" : 3,
													"fontsize" : 10.435669,
													"outlettype" : [ "bang", "", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "window flags grow, window flags zoom, window flags close",
													"linecount" : 3,
													"id" : "obj-42",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 70.0, 343.0, 102.0, 40.0 ],
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend window size",
													"id" : "obj-43",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 43.0, 257.0, 108.0, 18.0 ],
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Ymax",
													"id" : "obj-45",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 208.0, 186.0, 37.0, 18.0 ],
													"numoutlets" : 0,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"fontsize" : 10.435669
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Xmax",
													"id" : "obj-46",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 157.0, 186.0, 37.0, 18.0 ],
													"numoutlets" : 0,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"fontsize" : 10.435669
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Ymin",
													"id" : "obj-47",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 105.0, 186.0, 34.0, 18.0 ],
													"numoutlets" : 0,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"fontsize" : 10.435669
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Xmin",
													"id" : "obj-48",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 54.0, 186.0, 34.0, 18.0 ],
													"numoutlets" : 0,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"fontsize" : 10.435669
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "pref.",
													"id" : "obj-49",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 180.0, 147.0, 31.0, 18.0 ],
													"numoutlets" : 0,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"fontsize" : 10.435669
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "unpack 0 0 0 0",
													"id" : "obj-51",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 43.0, 167.0, 173.0, 18.0 ],
													"numoutlets" : 4,
													"fontsize" : 10.435669,
													"outlettype" : [ "int", "int", "int", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "278 50 1247 600",
													"id" : "obj-52",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 43.0, 147.0, 89.0, 16.0 ],
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"id" : "obj-53",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 197.0, 205.0, 50.0, 18.0 ],
													"numoutlets" : 2,
													"fontsize" : 10.435669,
													"outlettype" : [ "int", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"id" : "obj-54",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 146.0, 205.0, 50.0, 18.0 ],
													"numoutlets" : 2,
													"fontsize" : 10.435669,
													"outlettype" : [ "int", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pak 0 0 0 0",
													"id" : "obj-55",
													"fontname" : "Arial",
													"numinlets" : 4,
													"patching_rect" : [ 43.0, 227.0, 173.0, 18.0 ],
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"id" : "obj-56",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 94.0, 205.0, 51.0, 18.0 ],
													"numoutlets" : 2,
													"fontsize" : 10.435669,
													"outlettype" : [ "int", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"id" : "obj-57",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 43.0, 205.0, 50.0, 18.0 ],
													"numoutlets" : 2,
													"fontsize" : 10.435669,
													"outlettype" : [ "int", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t l",
													"id" : "obj-35",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 283.0, 395.0, 19.0, 18.0 ],
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "window flags float, window exec",
													"id" : "obj-32",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 480.0, 343.0, 158.0, 16.0 ],
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "window exec",
													"id" : "obj-31",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 283.0, 323.0, 70.0, 16.0 ],
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b l b",
													"id" : "obj-30",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 283.0, 279.0, 46.0, 18.0 ],
													"numoutlets" : 3,
													"fontsize" : 10.435669,
													"outlettype" : [ "bang", "", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "window flags nogrow, window flags nozoom, window flags noclose",
													"linecount" : 3,
													"id" : "obj-29",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 310.0, 343.0, 114.0, 40.0 ],
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend window size",
													"id" : "obj-28",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 283.0, 257.0, 108.0, 18.0 ],
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Ymax",
													"id" : "obj-27",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 448.0, 186.0, 37.0, 18.0 ],
													"numoutlets" : 0,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"fontsize" : 10.435669
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Xmax",
													"id" : "obj-26",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 397.0, 186.0, 37.0, 18.0 ],
													"numoutlets" : 0,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"fontsize" : 10.435669
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Ymin",
													"id" : "obj-23",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 345.0, 186.0, 34.0, 18.0 ],
													"numoutlets" : 0,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"fontsize" : 10.435669
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Xmin",
													"id" : "obj-22",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 294.0, 186.0, 34.0, 18.0 ],
													"numoutlets" : 0,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"fontsize" : 10.435669
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "pref.",
													"id" : "obj-20",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 411.0, 147.0, 31.0, 18.0 ],
													"numoutlets" : 0,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"fontsize" : 10.435669
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "unpack 0 0 0 0",
													"id" : "obj-18",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 283.0, 167.0, 173.0, 18.0 ],
													"numoutlets" : 4,
													"fontsize" : 10.435669,
													"outlettype" : [ "int", "int", "int", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "699 98 881 363",
													"id" : "obj-16",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 283.0, 147.0, 127.0, 16.0 ],
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"id" : "obj-12",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 437.0, 205.0, 50.0, 18.0 ],
													"numoutlets" : 2,
													"fontsize" : 10.435669,
													"outlettype" : [ "int", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"id" : "obj-15",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 386.0, 205.0, 50.0, 18.0 ],
													"numoutlets" : 2,
													"fontsize" : 10.435669,
													"outlettype" : [ "int", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pak 0 0 0 0",
													"id" : "obj-7",
													"fontname" : "Arial",
													"numinlets" : 4,
													"patching_rect" : [ 283.0, 227.0, 173.0, 18.0 ],
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"id" : "obj-4",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 334.0, 205.0, 51.0, 18.0 ],
													"numoutlets" : 2,
													"fontsize" : 10.435669,
													"outlettype" : [ "int", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"id" : "obj-3",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 283.0, 205.0, 50.0, 18.0 ],
													"numoutlets" : 2,
													"fontsize" : 10.435669,
													"outlettype" : [ "int", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "view",
													"id" : "obj-11",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 284.0, 69.0, 31.0, 18.0 ],
													"numoutlets" : 0,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"fontsize" : 10.435669
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "presentation $1",
													"id" : "obj-10",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 250.0, 90.0, 82.0, 16.0 ],
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "== 0",
													"id" : "obj-9",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 250.0, 69.0, 32.5, 18.0 ],
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"prototypename" : "Arial9",
													"id" : "obj-44",
													"numinlets" : 0,
													"patching_rect" : [ 153.0, 17.0, 18.0, 18.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "toggle",
													"prototypename" : "Arial9",
													"id" : "obj-41",
													"numinlets" : 1,
													"patching_rect" : [ 153.0, 52.0, 18.0, 18.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1 0",
													"id" : "obj-25",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 153.0, 74.0, 46.0, 18.0 ],
													"numoutlets" : 3,
													"fontsize" : 10.435669,
													"outlettype" : [ "bang", "bang", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"prototypename" : "Arial9",
													"id" : "obj-21",
													"numinlets" : 1,
													"patching_rect" : [ 250.0, 443.0, 18.0, 18.0 ],
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-30", 2 ],
													"destination" : [ "obj-29", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-29", 0 ],
													"destination" : [ "obj-35", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-40", 2 ],
													"destination" : [ "obj-42", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-42", 0 ],
													"destination" : [ "obj-37", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-41", 0 ],
													"destination" : [ "obj-25", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-44", 0 ],
													"destination" : [ "obj-41", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-41", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-7", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-7", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-7", 3 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 1 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 2 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 3 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-16", 1 ],
													"hidden" : 0,
													"midpoints" : [ 292.5, 251.0, 274.0, 251.0, 274.0, 139.0, 400.5, 139.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-31", 0 ],
													"destination" : [ "obj-35", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-35", 0 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-39", 0 ],
													"destination" : [ "obj-37", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-55", 0 ],
													"destination" : [ "obj-52", 1 ],
													"hidden" : 0,
													"midpoints" : [ 52.5, 251.0, 34.0, 251.0, 34.0, 139.0, 122.5, 139.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-52", 0 ],
													"destination" : [ "obj-51", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-51", 3 ],
													"destination" : [ "obj-53", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-51", 2 ],
													"destination" : [ "obj-54", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-51", 1 ],
													"destination" : [ "obj-56", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-51", 0 ],
													"destination" : [ "obj-57", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-53", 0 ],
													"destination" : [ "obj-55", 3 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-54", 0 ],
													"destination" : [ "obj-55", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-56", 0 ],
													"destination" : [ "obj-55", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-57", 0 ],
													"destination" : [ "obj-55", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-37", 0 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-55", 0 ],
													"destination" : [ "obj-43", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-28", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-62", 0 ],
													"destination" : [ "obj-31", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-63", 0 ],
													"destination" : [ "obj-39", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-52", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 1 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 0 ],
													"destination" : [ "obj-62", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 1 ],
													"destination" : [ "obj-35", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-28", 0 ],
													"destination" : [ "obj-30", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-38", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-40", 0 ],
													"destination" : [ "obj-63", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-43", 0 ],
													"destination" : [ "obj-40", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-40", 1 ],
													"destination" : [ "obj-37", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 1 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-38", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-32", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Arial",
										"default_fontface" : 0,
										"globalpatchername" : "",
										"default_fontname" : "Arial",
										"fontface" : 0,
										"fontsize" : 9.0,
										"default_fontsize" : 9.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textbutton",
									"id" : "obj-17",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 182.0, 13.0, 37.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 3,
									"fontsize" : 9.3,
									"outlettype" : [ "", "", "int" ],
									"bgcolor" : [ 0.74902, 0.74902, 0.827451, 1.0 ],
									"text" : "done",
									"presentation_rect" : [ 66.0, 245.0, 49.0, 17.0 ],
									"bgovercolor" : [ 0.239216, 0.643137, 0.709804, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "wclose",
									"id" : "obj-15",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 68.0, 70.0, 50.0, 15.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.3,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b",
									"id" : "obj-13",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 230.0, 85.0, 38.0, 17.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.3,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "col 0 width 100, col 1 width 30, col 2 width 30, col 3 width 20",
									"linecount" : 4,
									"id" : "obj-12",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 230.0, 110.0, 76.0, 47.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.3,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "column",
									"id" : "obj-26",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 559.0, 92.0, 46.0, 20.0 ],
									"numoutlets" : 0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontsize" : 11.595187
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-32",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 552.0, 111.0, 35.0, 20.0 ],
									"numoutlets" : 2,
									"fontsize" : 11.595187,
									"outlettype" : [ "int", "bang" ],
									"minimum" : 0,
									"triscale" : 0.9,
									"maximum" : 4
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-33",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 513.0, 112.0, 35.0, 20.0 ],
									"numoutlets" : 2,
									"fontsize" : 11.595187,
									"outlettype" : [ "int", "bang" ],
									"minimum" : 0,
									"triscale" : 0.9,
									"maximum" : 100
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack 0 0",
									"id" : "obj-34",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 513.0, 137.0, 58.0, 20.0 ],
									"numoutlets" : 1,
									"fontsize" : 11.595187,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "col $2 width $1",
									"id" : "obj-6",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 513.0, 159.0, 86.0, 18.0 ],
									"numoutlets" : 1,
									"fontsize" : 11.595187,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "width",
									"id" : "obj-7",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 512.0, 93.0, 37.0, 20.0 ],
									"numoutlets" : 0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontsize" : 11.595187
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess 0",
									"id" : "obj-5",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 317.0, 34.0, 64.0, 17.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.3,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "click & drag modules in the main patcher",
									"linecount" : 2,
									"id" : "obj-30",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 516.0, 211.0, 173.0, 28.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"hidden" : 1,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontsize" : 9.3,
									"presentation_rect" : [ 6.0, 20.0, 177.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "if $i1 == 1 then bang else out2 bang",
									"linecount" : 2,
									"id" : "obj-27",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 331.0, 96.0, 104.0, 28.0 ],
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "== 1",
									"id" : "obj-20",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 113.0, 433.0, 36.0, 17.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.3,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"id" : "obj-16",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 27.0, 277.0, 72.0, 17.0 ],
									"numoutlets" : 2,
									"fontsize" : 9.3,
									"outlettype" : [ "", "" ],
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "if $i1 == 0 then bang else out2 bang",
									"linecount" : 3,
									"id" : "obj-18",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 27.0, 182.0, 78.0, 39.0 ],
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "script hide add_modules",
									"id" : "obj-21",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 43.0, 244.0, 124.0, 15.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "script show add_modules",
									"id" : "obj-14",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 27.0, 227.0, 125.0, 15.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "hidden 0",
									"id" : "obj-11",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 331.0, 129.0, 50.0, 15.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.3,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "hidden 1",
									"id" : "obj-9",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 416.0, 129.0, 50.0, 15.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.3,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "add_modules",
									"id" : "obj-10",
									"numinlets" : 1,
									"patching_rect" : [ 26.0, 301.0, 213.0, 95.0 ],
									"presentation" : 1,
									"args" : [  ],
									"numoutlets" : 1,
									"embed" : 1,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 0.0, 49.0, 182.0, 105.0 ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 0.0, 49.0, 182.0, 105.0 ],
										"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
										"bglocked" : 0,
										"defrect" : [ 0.0, 49.0, 182.0, 105.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 1,
										"default_fontsize" : 9.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "loadmess 0",
													"id" : "obj-10",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"patching_rect" : [ 78.0, 34.0, 100.0, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "tab",
													"id" : "obj-32",
													"fontname" : "Verdana",
													"multiline" : 0,
													"numinlets" : 1,
													"patching_rect" : [ 21.0, 71.0, 200.0, 20.0 ],
													"presentation" : 1,
													"valign" : 2,
													"numoutlets" : 3,
													"fontsize" : 9.0,
													"spacing_y" : 0.0,
													"outlettype" : [ "int", "", "" ],
													"presentation_rect" : [ 6.0, 1.0, 171.0, 18.0 ],
													"tabs" : [ "Jamoma", "User_Lib" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "strippath",
													"id" : "obj-22",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"patching_rect" : [ 164.0, 188.0, 100.0, 17.0 ],
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"outlettype" : [ "", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "umenu",
													"id" : "obj-21",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"types" : "JSON",
													"patching_rect" : [ 88.5, 166.0, 169.0, 17.0 ],
													"presentation" : 1,
													"numoutlets" : 3,
													"depth" : 4,
													"fontsize" : 9.0,
													"outlettype" : [ "int", "", "" ],
													"items" : [ "jmod.10_harmonics~", ",", "jmod.crossfade~", ",", "jmod.degrade~", ",", "jmod.delay~", ",", "jmod.echo~", ",", "jmod.equalizer~", ",", "jmod.filter~", ",", "jmod.fluidsynth~", ",", "jmod.input~", ",", "jmod.limiter~", ",", "jmod.multidelay~", ",", "jmod.noisegate~", ",", "jmod.noise~", ",", "jmod.output~", ",", "jmod.rissetGlissando~", ",", "jmod.saturation~", ",", "jmod.scope~", ",", "jmod.sine~", ",", "jmod.tremolo~", ",", "jmod.vst~" ],
													"presentation_rect" : [ 7.5, 42.0, 169.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p module-folders",
													"id" : "obj-20",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"patching_rect" : [ 89.0, 145.0, 87.0, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "clear" ],
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 817.0, 81.0, 435.0, 520.0 ],
														"bglocked" : 0,
														"defrect" : [ 817.0, 81.0, 435.0, 520.0 ],
														"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
														"openinpresentation" : 0,
														"default_fontsize" : 9.0,
														"default_fontface" : 0,
														"default_fontname" : "Verdana",
														"gridonopen" : 0,
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 0,
														"toolbarvisible" : 1,
														"boxanimatetime" : 200,
														"imprint" : 0,
														"metadata" : [  ],
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "remove extension",
																	"id" : "obj-10",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"patching_rect" : [ 224.0, 396.0, 150.0, 17.0 ],
																	"numoutlets" : 0,
																	"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "zl slice 1",
																	"id" : "obj-7",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"patching_rect" : [ 150.5, 391.0, 61.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontsize" : 9.0,
																	"outlettype" : [ "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "regexp (.*)(\\\\..*)",
																	"id" : "obj-8",
																	"fontname" : "Arial",
																	"numinlets" : 1,
																	"patching_rect" : [ 118.87439, 362.060303, 147.0, 20.0 ],
																	"numoutlets" : 5,
																	"fontsize" : 11.595187,
																	"outlettype" : [ "", "", "", "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"id" : "obj-6",
																	"numinlets" : 1,
																	"patching_rect" : [ 194.0, 453.0, 25.0, 25.0 ],
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "prepend append",
																	"id" : "obj-2",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"patching_rect" : [ 188.0, 416.0, 100.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "starting by jmod.",
																	"id" : "obj-68",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"patching_rect" : [ 295.5, 284.0, 97.0, 17.0 ],
																	"numoutlets" : 0,
																	"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "gate",
																	"id" : "obj-69",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"patching_rect" : [ 187.5, 319.0, 49.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t l l",
																	"id" : "obj-70",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"patching_rect" : [ 173.5, 236.0, 51.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontsize" : 9.0,
																	"outlettype" : [ "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t 0",
																	"id" : "obj-71",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"patching_rect" : [ 271.5, 285.0, 23.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"outlettype" : [ "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "regexp jmod[\\\\w]*",
																	"id" : "obj-73",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"patching_rect" : [ 205.5, 256.0, 105.0, 17.0 ],
																	"numoutlets" : 5,
																	"fontsize" : 9.0,
																	"outlettype" : [ "", "", "", "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "only .maxpat",
																	"id" : "obj-74",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"patching_rect" : [ 275.5, 213.0, 69.0, 17.0 ],
																	"numoutlets" : 0,
																	"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "regexp .+\\\\.(maxpat)",
																	"id" : "obj-75",
																	"fontname" : "Arial",
																	"numinlets" : 1,
																	"patching_rect" : [ 124.87439, 211.060303, 147.0, 20.0 ],
																	"numoutlets" : 5,
																	"fontsize" : 11.595187,
																	"outlettype" : [ "", "", "", "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "regexp .+/(.+)",
																	"id" : "obj-76",
																	"fontname" : "Arial",
																	"numinlets" : 1,
																	"patching_rect" : [ 109.5, 187.0, 80.0, 20.0 ],
																	"numoutlets" : 5,
																	"fontsize" : 11.595187,
																	"outlettype" : [ "", "", "", "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t count l clear",
																	"id" : "obj-77",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"patching_rect" : [ 94.5, 92.0, 311.0, 17.0 ],
																	"numoutlets" : 3,
																	"fontsize" : 9.0,
																	"outlettype" : [ "count", "", "clear" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t 1",
																	"id" : "obj-78",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"patching_rect" : [ 247.5, 285.0, 23.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"outlettype" : [ "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "- 1",
																	"id" : "obj-79",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"patching_rect" : [ 46.5, 95.0, 42.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"outlettype" : [ "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "uzi",
																	"id" : "obj-80",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"patching_rect" : [ 23.5, 74.0, 42.0, 17.0 ],
																	"numoutlets" : 3,
																	"fontsize" : 9.0,
																	"outlettype" : [ "bang", "bang", "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "route count",
																	"id" : "obj-82",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"patching_rect" : [ 149.5, 147.0, 70.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontsize" : 9.0,
																	"outlettype" : [ "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "umenu",
																	"id" : "obj-84",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"types" : "JSON",
																	"patching_rect" : [ 68.5, 125.0, 100.0, 17.0 ],
																	"autopopulate" : 1,
																	"numoutlets" : 3,
																	"depth" : 4,
																	"fontsize" : 9.0,
																	"outlettype" : [ "int", "", "" ],
																	"prefix" : "Moc:/Users/mathieuchamagne/Documents/_MAX/Jamoma_active/Jamoma/modules/audio/",
																	"items" : [ "10harmonics~/jalg.10_harmonics~.maxpat", ",", "10harmonics~/jmod.10_harmonics~.maxhelp", ",", "10harmonics~/jmod.10_harmonics~.maxpat", ",", "crossfade~/jalg.crossfade~.maxpat", ",", "crossfade~/jmod.crossfade~.maxhelp", ",", "crossfade~/jmod.crossfade~.maxpat", ",", "degrade~/jalg.degrade~.maxpat", ",", "degrade~/jmod.degrade~.maxhelp", ",", "degrade~/jmod.degrade~.maxpat", ",", "delay~/jalg.delay~.maxpat", ",", "delay~/jmod.delay~.maxhelp", ",", "delay~/jmod.delay~.maxpat", ",", "echo~/jalg.echo~.maxpat", ",", "echo~/jmod.echo~.maxhelp", ",", "echo~/jmod.echo~.maxpat", ",", "equalizer~/jalg.equalizer~.maxpat", ",", "equalizer~/jalg.equalizer~_params.maxpat", ",", "equalizer~/jmod.equalizer~.maxhelp", ",", "equalizer~/jmod.equalizer~.maxpat", ",", "filter~/jalg.filter~.maxpat", ",", "filter~/jmod.filter~.maxhelp", ",", "filter~/jmod.filter~.maxpat", ",", "fluidsynth~/jalg.fluidsynth~.maxpat", ",", "fluidsynth~/jmod.fluidsynth~.maxhelp", ",", "fluidsynth~/jmod.fluidsynth~.maxpat", ",", "input~/jmod.input~.maxhelp", ",", "input~/jmod.input~.maxpat", ",", "limiter~/jmod.limiter~.maxhelp", ",", "limiter~/jmod.limiter~.maxpat", ",", "multidelay~/jalg.multidelay~.maxpat", ",", "multidelay~/jmod.multidelay~.maxhelp", ",", "multidelay~/jmod.multidelay~.maxpat", ",", "noisegate~/jalg.noisegate~.maxpat", ",", "noisegate~/jmod.noisegate~.maxhelp", ",", "noisegate~/jmod.noisegate~.maxpat", ",", "noise~/jalg.noise~.maxpat", ",", "noise~/jmod.noise~.maxhelp", ",", "noise~/jmod.noise~.maxpat", ",", "output~/jmod.output~.maxhelp", ",", "output~/jmod.output~.maxpat", ",", "rissetGlissando/jalg.rissetGlissando~.maxpat", ",", "rissetGlissando/jmod.rissetGlissando~.maxhelp", ",", "rissetGlissando/jmod.rissetGlissando~.maxpat", ",", "saturation~/jalg.saturation~.maxpat", ",", "saturation~/jmod.saturation~.maxhelp", ",", "saturation~/jmod.saturation~.maxpat", ",", "scope~/jmod.scope~.maxhelp", ",", "scope~/jmod.scope~.maxpat", ",", "sine~/jalg.sine~.maxpat", ",", "sine~/jmod.sine~.maxhelp", ",", "sine~/jmod.sine~.maxpat", ",", "tremolo~/jalg.tremolo~.maxpat", ",", "tremolo~/jmod.tremolo~.maxhelp", ",", "tremolo~/jmod.tremolo~.maxpat", ",", "vst~/jalg.vst~.maxpat", ",", "vst~/jmod.vst~.maxhelp", ",", "vst~/jmod.vst~.maxpat" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "prepend prefix",
																	"id" : "obj-85",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"patching_rect" : [ 94.5, 71.0, 75.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"id" : "obj-17",
																	"numinlets" : 0,
																	"patching_rect" : [ 94.5, 18.0, 25.0, 25.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-70", 0 ],
																	"destination" : [ "obj-69", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-71", 0 ],
																	"destination" : [ "obj-69", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-78", 0 ],
																	"destination" : [ "obj-69", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-70", 1 ],
																	"destination" : [ "obj-73", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-75", 2 ],
																	"destination" : [ "obj-70", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-73", 3 ],
																	"destination" : [ "obj-71", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-73", 2 ],
																	"destination" : [ "obj-78", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-76", 1 ],
																	"destination" : [ "obj-75", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-84", 1 ],
																	"destination" : [ "obj-76", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-80", 2 ],
																	"destination" : [ "obj-79", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-82", 0 ],
																	"destination" : [ "obj-80", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 159.0, 171.0, 15.5, 171.0, 15.5, 41.0, 33.0, 41.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-84", 2 ],
																	"destination" : [ "obj-82", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-85", 0 ],
																	"destination" : [ "obj-77", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-77", 1 ],
																	"destination" : [ "obj-84", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 250.0, 121.0, 78.0, 121.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-77", 0 ],
																	"destination" : [ "obj-84", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 104.0, 109.0, 90.0, 109.0, 90.0, 118.0, 78.0, 118.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-79", 0 ],
																	"destination" : [ "obj-84", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 56.0, 118.0, 78.0, 118.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-17", 0 ],
																	"destination" : [ "obj-85", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-77", 2 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 396.0, 445.0, 203.5, 445.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 1 ],
																	"destination" : [ "obj-7", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-69", 0 ],
																	"destination" : [ "obj-8", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"fontname" : "Verdana",
														"default_fontface" : 0,
														"globalpatchername" : "",
														"default_fontname" : "Verdana",
														"fontface" : 0,
														"fontsize" : 9.0,
														"default_fontsize" : 9.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "umenu",
													"id" : "obj-84",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"types" : "fold",
													"patching_rect" : [ 20.5, 123.0, 155.0, 17.0 ],
													"autopopulate" : 1,
													"presentation" : 1,
													"numoutlets" : 3,
													"fontsize" : 9.0,
													"outlettype" : [ "int", "", "" ],
													"prefix" : "Moc:/Users/mathieuchamagne/Documents/_MAX/Jamoma_active/Jamoma/modules/",
													"items" : [ "audio", ",", "control", ",", "data", ",", "spatialization", ",", "video" ],
													"presentation_rect" : [ 90.5, 22.0, 86.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t l l l",
													"id" : "obj-19",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"patching_rect" : [ 100.0, 482.0, 100.0, 17.0 ],
													"numoutlets" : 3,
													"fontsize" : 9.0,
													"outlettype" : [ "", "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "deferlow",
													"id" : "obj-17",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"patching_rect" : [ 100.0, 562.0, 49.0, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "deferlow",
													"id" : "obj-14",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"patching_rect" : [ 100.0, 577.0, 49.0, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf script bringtofront %s",
													"id" : "obj-8",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 100.0, 607.0, 140.937729, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.295724,
													"outlettype" : [ "" ],
													"color" : [ 0.082353, 0.25098, 0.431373, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p auto.name",
													"id" : "obj-35",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"patching_rect" : [ 164.0, 228.0, 100.0, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"color" : [ 0.317647, 0.709804, 0.321569, 1.0 ],
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 50.0, 94.0, 640.0, 480.0 ],
														"bglocked" : 0,
														"defrect" : [ 50.0, 94.0, 640.0, 480.0 ],
														"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
														"openinpresentation" : 0,
														"default_fontsize" : 9.0,
														"default_fontface" : 0,
														"default_fontname" : "Verdana",
														"gridonopen" : 0,
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 0,
														"toolbarvisible" : 1,
														"boxanimatetime" : 200,
														"imprint" : 0,
														"metadata" : [  ],
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "be sure that name start with a /",
																	"id" : "obj-41",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"patching_rect" : [ 164.0, 195.0, 156.0, 17.0 ],
																	"numoutlets" : 0,
																	"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "replace . by _",
																	"id" : "obj-36",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"patching_rect" : [ 188.0, 133.0, 150.0, 17.0 ],
																	"numoutlets" : 0,
																	"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "regexp (\\\\.) @substitute _",
																	"id" : "obj-35",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"patching_rect" : [ 50.0, 132.0, 136.0, 17.0 ],
																	"numoutlets" : 5,
																	"fontsize" : 9.0,
																	"outlettype" : [ "", "", "", "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "regexp (jmod.) @substitute %0",
																	"id" : "obj-33",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"patching_rect" : [ 50.0, 101.0, 158.0, 17.0 ],
																	"numoutlets" : 5,
																	"fontsize" : 9.0,
																	"outlettype" : [ "", "", "", "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "remove jmod.",
																	"id" : "obj-27",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"patching_rect" : [ 212.0, 100.0, 150.0, 17.0 ],
																	"numoutlets" : 0,
																	"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"id" : "obj-31",
																	"numinlets" : 0,
																	"patching_rect" : [ 51.0, 69.0, 25.0, 25.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"id" : "obj-32",
																	"numinlets" : 1,
																	"patching_rect" : [ 99.0, 277.0, 25.0, 25.0 ],
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sprintf /%s",
																	"id" : "obj-3",
																	"fontname" : "Arial",
																	"numinlets" : 1,
																	"patching_rect" : [ 99.0, 249.703308, 59.461533, 17.0 ],
																	"numoutlets" : 1,
																	"fontsize" : 9.295724,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "zl ecils 1",
																	"id" : "obj-52",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"patching_rect" : [ 69.0, 220.0, 49.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontsize" : 9.0,
																	"outlettype" : [ "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "tosymbol",
																	"id" : "obj-53",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"patching_rect" : [ 50.0, 171.0, 50.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "regexp (.*\\\\/)(.*)",
																	"id" : "obj-54",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"patching_rect" : [ 49.0, 193.0, 109.0, 17.0 ],
																	"numoutlets" : 5,
																	"fontsize" : 9.0,
																	"outlettype" : [ "", "", "", "", "" ]
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-31", 0 ],
																	"destination" : [ "obj-33", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-33", 3 ],
																	"destination" : [ "obj-35", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 163.75, 123.0, 59.5, 123.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-33", 0 ],
																	"destination" : [ "obj-35", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-54", 3 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 126.0, 210.0, 120.0, 210.0, 120.0, 243.0, 108.5, 243.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-52", 1 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-53", 0 ],
																	"destination" : [ "obj-54", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-54", 1 ],
																	"destination" : [ "obj-52", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-32", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-35", 3 ],
																	"destination" : [ "obj-53", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-35", 0 ],
																	"destination" : [ "obj-53", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"fontname" : "Verdana",
														"default_fontface" : 0,
														"globalpatchername" : "",
														"default_fontname" : "Verdana",
														"fontface" : 0,
														"fontsize" : 9.0,
														"default_fontsize" : 9.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p auto.name",
													"id" : "obj-34",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"patching_rect" : [ 123.0, 419.0, 100.0, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"color" : [ 0.317647, 0.709804, 0.321569, 1.0 ],
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 50.0, 94.0, 640.0, 480.0 ],
														"bglocked" : 0,
														"defrect" : [ 50.0, 94.0, 640.0, 480.0 ],
														"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
														"openinpresentation" : 0,
														"default_fontsize" : 9.0,
														"default_fontface" : 0,
														"default_fontname" : "Verdana",
														"gridonopen" : 0,
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 0,
														"toolbarvisible" : 1,
														"boxanimatetime" : 200,
														"imprint" : 0,
														"metadata" : [  ],
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "be sure that name start with a /",
																	"id" : "obj-41",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"patching_rect" : [ 164.0, 195.0, 156.0, 17.0 ],
																	"numoutlets" : 0,
																	"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "replace . by _",
																	"id" : "obj-36",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"patching_rect" : [ 188.0, 133.0, 150.0, 17.0 ],
																	"numoutlets" : 0,
																	"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "regexp (\\\\.) @substitute _",
																	"id" : "obj-35",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"patching_rect" : [ 50.0, 132.0, 136.0, 17.0 ],
																	"numoutlets" : 5,
																	"fontsize" : 9.0,
																	"outlettype" : [ "", "", "", "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "regexp (jmod.) @substitute %0",
																	"id" : "obj-33",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"patching_rect" : [ 50.0, 101.0, 158.0, 17.0 ],
																	"numoutlets" : 5,
																	"fontsize" : 9.0,
																	"outlettype" : [ "", "", "", "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "remove jmod.",
																	"id" : "obj-27",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"patching_rect" : [ 212.0, 100.0, 150.0, 17.0 ],
																	"numoutlets" : 0,
																	"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"id" : "obj-31",
																	"numinlets" : 0,
																	"patching_rect" : [ 51.0, 69.0, 25.0, 25.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"id" : "obj-32",
																	"numinlets" : 1,
																	"patching_rect" : [ 99.0, 277.0, 25.0, 25.0 ],
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sprintf /%s",
																	"id" : "obj-3",
																	"fontname" : "Arial",
																	"numinlets" : 1,
																	"patching_rect" : [ 99.0, 249.703308, 59.461533, 17.0 ],
																	"numoutlets" : 1,
																	"fontsize" : 9.295724,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "zl ecils 1",
																	"id" : "obj-52",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"patching_rect" : [ 69.0, 220.0, 49.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontsize" : 9.0,
																	"outlettype" : [ "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "tosymbol",
																	"id" : "obj-53",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"patching_rect" : [ 50.0, 171.0, 50.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "regexp (.*\\\\/)(.*)",
																	"id" : "obj-54",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"patching_rect" : [ 49.0, 193.0, 109.0, 17.0 ],
																	"numoutlets" : 5,
																	"fontsize" : 9.0,
																	"outlettype" : [ "", "", "", "", "" ]
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-35", 0 ],
																	"destination" : [ "obj-53", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-35", 3 ],
																	"destination" : [ "obj-53", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-32", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-54", 1 ],
																	"destination" : [ "obj-52", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-53", 0 ],
																	"destination" : [ "obj-54", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-52", 1 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-54", 3 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 126.0, 210.0, 120.0, 210.0, 120.0, 243.0, 108.5, 243.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-33", 0 ],
																	"destination" : [ "obj-35", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-33", 3 ],
																	"destination" : [ "obj-35", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 163.75, 123.0, 59.5, 123.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-31", 0 ],
																	"destination" : [ "obj-33", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"fontname" : "Verdana",
														"default_fontface" : 0,
														"globalpatchername" : "",
														"default_fontname" : "Verdana",
														"fontface" : 0,
														"fontsize" : 9.0,
														"default_fontsize" : 9.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b b",
													"id" : "obj-30",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"patching_rect" : [ 103.0, 329.0, 38.0, 17.0 ],
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"outlettype" : [ "bang", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl reg",
													"id" : "obj-28",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"patching_rect" : [ 100.0, 460.0, 42.0, 17.0 ],
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf store %s 100 100 1",
													"id" : "obj-16",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 141.0, 506.703308, 145.461533, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.295724,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll #0-modules_position 1",
													"id" : "obj-42",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 140.659332, 530.655701, 179.512817, 17.0 ],
													"numoutlets" : 4,
													"fontsize" : 9.295724,
													"outlettype" : [ "", "", "", "" ],
													"save" : [ "#N", "coll", "1197-modules_position", 1, ";" ],
													"saved_object_attributes" : 													{
														"embed" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-7",
													"numinlets" : 1,
													"patching_rect" : [ 181.0, 656.0, 25.0, 25.0 ],
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-1",
													"numinlets" : 0,
													"patching_rect" : [ 15.0, 23.0, 25.0, 25.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "scripting + OSC name :",
													"id" : "obj-6",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"patching_rect" : [ 246.0, 312.0, 150.0, 17.0 ],
													"presentation" : 1,
													"numoutlets" : 0,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"fontsize" : 9.0,
													"presentation_rect" : [ 27.0, 61.0, 150.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "module type :",
													"id" : "obj-2",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"patching_rect" : [ 181.0, 122.0, 85.0, 17.0 ],
													"presentation" : 1,
													"numoutlets" : 0,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"fontsize" : 9.0,
													"presentation_rect" : [ 21.0, 22.0, 73.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b b",
													"id" : "obj-13",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"patching_rect" : [ 123.0, 289.0, 38.0, 17.0 ],
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"outlettype" : [ "bang", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 13",
													"id" : "obj-12",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"patching_rect" : [ 172.0, 358.0, 46.0, 17.0 ],
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"outlettype" : [ "bang", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl reg",
													"id" : "obj-11",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"patching_rect" : [ 123.0, 359.0, 42.0, 17.0 ],
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"hint" : "create module",
													"id" : "obj-9",
													"numinlets" : 1,
													"fgcolor" : [ 0.976471, 0.976471, 0.976471, 1.0 ],
													"patching_rect" : [ 123.0, 266.0, 20.0, 20.0 ],
													"presentation" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"bgcolor" : [ 0.823529, 0.431373, 0.431373, 0.74902 ],
													"presentation_rect" : [ 2.0, 77.0, 20.0, 20.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route text",
													"id" : "obj-5",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"patching_rect" : [ 146.0, 338.0, 68.0, 17.0 ],
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set",
													"id" : "obj-4",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"patching_rect" : [ 164.0, 287.0, 74.0, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "textedit",
													"hint" : "scripting + OSC name :",
													"text" : "/crossfade~",
													"id" : "obj-3",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"patching_rect" : [ 146.0, 310.0, 97.0, 21.0 ],
													"presentation" : 1,
													"tabmode" : 0,
													"lines" : 1,
													"numoutlets" : 4,
													"autoscroll" : 0,
													"keymode" : 1,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"fontsize" : 9.0,
													"outlettype" : [ "", "int", "", "" ],
													"presentation_rect" : [ 25.0, 77.0, 150.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf script newdefault %s 100 100 bpatcher @name %s @presentation 1 @args %s",
													"id" : "obj-55",
													"fontname" : "Verdana",
													"numinlets" : 3,
													"patching_rect" : [ 181.0, 570.0, 414.0, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p auto-path",
													"id" : "obj-51",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"patching_rect" : [ 22.0, 100.0, 73.0, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 661.0, 460.0, 467.0, 380.0 ],
														"bglocked" : 0,
														"defrect" : [ 661.0, 460.0, 467.0, 380.0 ],
														"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
														"openinpresentation" : 0,
														"default_fontsize" : 9.0,
														"default_fontface" : 0,
														"default_fontname" : "Verdana",
														"gridonopen" : 0,
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 0,
														"toolbarvisible" : 1,
														"boxanimatetime" : 200,
														"imprint" : 0,
														"metadata" : [  ],
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "deferlow",
																	"id" : "obj-4",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"patching_rect" : [ 38.0, 177.0, 59.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sprintf %smodules",
																	"id" : "obj-3",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"patching_rect" : [ 137.5, 205.0, 96.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "jcom.jamoma_path",
																	"id" : "obj-1",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"patching_rect" : [ 138.0, 120.0, 100.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t 0 b i",
																	"id" : "obj-40",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"patching_rect" : [ 38.0, 59.0, 50.0, 17.0 ],
																	"numoutlets" : 3,
																	"fontsize" : 9.0,
																	"outlettype" : [ "int", "bang", "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+ 1",
																	"id" : "obj-39",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"patching_rect" : [ 68.0, 224.0, 41.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"outlettype" : [ "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "switch 2 1",
																	"id" : "obj-38",
																	"fontname" : "Verdana",
																	"numinlets" : 3,
																	"patching_rect" : [ 72.0, 252.0, 204.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"id" : "obj-35",
																	"numinlets" : 0,
																	"patching_rect" : [ 38.0, 28.0, 25.0, 25.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "tosymbol",
																	"id" : "obj-33",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"patching_rect" : [ 72.0, 279.0, 75.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "Moc:/Users/mathieuchamagne/Documents/_MAX/Jamoma_active/UserLib",
																	"linecount" : 2,
																	"id" : "obj-31",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"patching_rect" : [ 150.0, 332.0, 235.0, 26.0 ],
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "user lib",
																	"id" : "obj-27",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"patching_rect" : [ 369.0, 217.0, 55.0, 17.0 ],
																	"numoutlets" : 0,
																	"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sprintf %sUserLib",
																	"id" : "obj-67",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"patching_rect" : [ 268.5, 218.0, 96.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"id" : "obj-18",
																	"numinlets" : 1,
																	"patching_rect" : [ 37.0, 339.0, 25.0, 25.0 ],
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "prepend prefix",
																	"id" : "obj-85",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"patching_rect" : [ 71.5, 301.0, 75.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "regexp (.*)(\\\\/.*)",
																	"id" : "obj-63",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"patching_rect" : [ 228.0, 155.0, 98.0, 17.0 ],
																	"numoutlets" : 5,
																	"fontsize" : 9.0,
																	"outlettype" : [ "", "", "", "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "zl ecils 1",
																	"id" : "obj-64",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"patching_rect" : [ 248.0, 175.0, 47.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontsize" : 9.0,
																	"outlettype" : [ "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "regexp (.*\\\\/).*$",
																	"id" : "obj-65",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"patching_rect" : [ 248.0, 197.0, 104.0, 17.0 ],
																	"numoutlets" : 5,
																	"fontsize" : 9.0,
																	"outlettype" : [ "", "", "", "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "button",
																	"id" : "obj-9",
																	"numinlets" : 1,
																	"patching_rect" : [ 138.0, 95.0, 20.0, 20.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ]
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-63", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-18", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-40", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-40", 1 ],
																	"destination" : [ "obj-9", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 63.0, 88.0, 147.5, 88.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-40", 2 ],
																	"destination" : [ "obj-39", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-35", 0 ],
																	"destination" : [ "obj-40", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-38", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-64", 0 ],
																	"destination" : [ "obj-65", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-63", 1 ],
																	"destination" : [ "obj-64", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-85", 0 ],
																	"destination" : [ "obj-18", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-67", 0 ],
																	"destination" : [ "obj-31", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-33", 0 ],
																	"destination" : [ "obj-85", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-65", 1 ],
																	"destination" : [ "obj-67", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-38", 0 ],
																	"destination" : [ "obj-33", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-67", 0 ],
																	"destination" : [ "obj-38", 2 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-39", 0 ],
																	"destination" : [ "obj-38", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"fontname" : "Verdana",
														"default_fontface" : 0,
														"globalpatchername" : "",
														"default_fontname" : "Verdana",
														"fontface" : 0,
														"fontsize" : 9.0,
														"default_fontsize" : 9.0
													}

												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-42", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 1 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 2 ],
													"destination" : [ "obj-55", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-28", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-35", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-34", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-34", 0 ],
													"destination" : [ "obj-28", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 0 ],
													"destination" : [ "obj-28", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 1 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-30", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [ 181.5, 382.0, 229.0, 382.0, 229.0, 258.0, 132.5, 258.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-55", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-11", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 1 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 1 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-55", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-51", 0 ],
													"destination" : [ "obj-84", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-84", 1 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 0 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 1 ],
													"destination" : [ "obj-22", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-22", 0 ],
													"destination" : [ "obj-35", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-32", 0 ],
													"destination" : [ "obj-51", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-22", 0 ],
													"destination" : [ "obj-55", 1 ],
													"hidden" : 0,
													"midpoints" : [ 173.5, 214.0, 388.0, 214.0 ]
												}

											}
 ]
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "tab",
									"id" : "obj-4",
									"fontname" : "Arial",
									"multiline" : 0,
									"numinlets" : 1,
									"patching_rect" : [ 317.0, 59.0, 200.0, 20.0 ],
									"presentation" : 1,
									"valign" : 2,
									"numoutlets" : 3,
									"fontsize" : 9.3,
									"spacing_y" : 0.0,
									"outlettype" : [ "int", "", "" ],
									"presentation_rect" : [ 0.0, 0.0, 183.0, 20.0 ],
									"tabs" : [ "Add", "Edit" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p",
									"id" : "obj-97",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 326.971619, 357.569183, 100.0, 17.0 ],
									"numoutlets" : 3,
									"fontsize" : 9.3,
									"outlettype" : [ "", "bang", "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 77.0, 396.0, 846.0, 540.0 ],
										"bglocked" : 0,
										"defrect" : [ 77.0, 396.0, 846.0, 540.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 9.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "refer jcom.Cue_Modules",
													"id" : "obj-25",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 610.0, 386.0, 119.0, 16.0 ],
													"numoutlets" : 1,
													"fontsize" : 10.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "tosymbol",
													"id" : "obj-19",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"patching_rect" : [ 598.0, 208.0, 54.0, 18.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.873845,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "tosymbol",
													"id" : "obj-18",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"patching_rect" : [ 684.0, 207.0, 54.0, 18.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.873845,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl slice 1",
													"id" : "obj-32",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"patching_rect" : [ 652.0, 187.0, 51.0, 18.0 ],
													"numoutlets" : 2,
													"fontsize" : 9.873845,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b s",
													"id" : "obj-33",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"patching_rect" : [ 685.0, 227.0, 48.0, 18.0 ],
													"numoutlets" : 2,
													"fontsize" : 9.873845,
													"outlettype" : [ "bang", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "refer #0-modules_position",
													"id" : "obj-2",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 598.0, 323.0, 161.0, 16.0 ],
													"numoutlets" : 1,
													"fontsize" : 10.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "store $1 1",
													"id" : "obj-3",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 627.0, 250.5, 65.0, 16.0 ],
													"numoutlets" : 1,
													"fontsize" : 10.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll #0-modules_position 1",
													"id" : "obj-13",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 635.0, 291.5, 138.0, 18.0 ],
													"numoutlets" : 4,
													"fontsize" : 10.0,
													"outlettype" : [ "", "", "", "" ],
													"save" : [ "#N", "coll", "$0-modules_position", 1, ";" ],
													"saved_object_attributes" : 													{
														"embed" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl slice 1",
													"id" : "obj-6",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"patching_rect" : [ 566.0, 187.0, 51.0, 18.0 ],
													"numoutlets" : 2,
													"fontsize" : 9.873845,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend remove",
													"id" : "obj-7",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"patching_rect" : [ 714.0, 248.0, 92.0, 18.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.873845,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "print rem",
													"id" : "obj-8",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"patching_rect" : [ 698.0, 348.0, 55.0, 18.0 ],
													"numoutlets" : 0,
													"fontsize" : 9.873845
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b s",
													"id" : "obj-10",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"patching_rect" : [ 598.0, 228.0, 48.0, 18.0 ],
													"numoutlets" : 2,
													"fontsize" : 9.873845,
													"outlettype" : [ "bang", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.receive notifications",
													"id" : "obj-11",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"patching_rect" : [ 566.0, 139.0, 188.0, 18.0 ],
													"numoutlets" : 2,
													"fontsize" : 9.873845,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route module.new module.removed",
													"id" : "obj-15",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"patching_rect" : [ 566.0, 166.0, 190.0, 18.0 ],
													"numoutlets" : 3,
													"fontsize" : 9.873845,
													"outlettype" : [ "", "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl slice 1",
													"id" : "obj-5",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"patching_rect" : [ 209.283447, 435.257477, 63.549702, 17.0 ],
													"numoutlets" : 2,
													"fontsize" : 8.462612,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf script bringtofront %s",
													"id" : "obj-1",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 209.0, 455.0, 140.937729, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.295724,
													"outlettype" : [ "" ],
													"color" : [ 0.082353, 0.25098, 0.431373, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "loadmess refer #0-modules_position",
													"id" : "obj-114",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"patching_rect" : [ 16.002625, 448.877289, 145.629242, 15.0 ],
													"numoutlets" : 1,
													"fontsize" : 6.622751,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "pour etre sur que c un symbol...",
													"id" : "obj-9",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 348.028381, 154.430817, 150.0, 18.0 ],
													"numoutlets" : 0,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "tosymbol",
													"id" : "obj-4",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 338.028381, 138.430817, 100.0, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p colors",
													"id" : "obj-39",
													"fontname" : "Arial",
													"numinlets" : 3,
													"patching_rect" : [ 50.0, 168.317322, 48.0, 18.0 ],
													"numoutlets" : 1,
													"fontsize" : 10.0,
													"outlettype" : [ "" ],
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 103.0, 381.0, 698.0, 590.0 ],
														"bglocked" : 0,
														"defrect" : [ 103.0, 381.0, 698.0, 590.0 ],
														"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
														"openinpresentation" : 0,
														"default_fontsize" : 9.0,
														"default_fontface" : 0,
														"default_fontname" : "Verdana",
														"gridonopen" : 0,
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 0,
														"toolbarvisible" : 1,
														"boxanimatetime" : 200,
														"imprint" : 0,
														"metadata" : [  ],
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sel 0 1",
																	"id" : "obj-34",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"patching_rect" : [ 123.51062, 394.113495, 97.163124, 17.0 ],
																	"numoutlets" : 3,
																	"fontsize" : 8.390105,
																	"outlettype" : [ "bang", "bang", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sel 1",
																	"id" : "obj-31",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"patching_rect" : [ 125.0, 350.0, 100.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontsize" : 9.0,
																	"outlettype" : [ "bang", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "hcellcolor 0.784314 1. 0.784314 255",
																	"id" : "obj-28",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"patching_rect" : [ 163.404297, 434.078033, 163.0, 14.0 ],
																	"numoutlets" : 1,
																	"fontsize" : 8.148671,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "hcellcolor 1. 0.784314 0.784314 255",
																	"id" : "obj-30",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"patching_rect" : [ 124.418457, 414.617035, 163.0, 14.0 ],
																	"numoutlets" : 1,
																	"fontsize" : 8.148671,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "i",
																	"id" : "obj-27",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"patching_rect" : [ 125.0, 371.0, 35.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"outlettype" : [ "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "==",
																	"id" : "obj-22",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"patching_rect" : [ 125.0, 329.0, 55.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"outlettype" : [ "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b i",
																	"id" : "obj-21",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"patching_rect" : [ 80.0, 277.0, 50.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontsize" : 9.0,
																	"outlettype" : [ "bang", "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "200 255 200",
																	"id" : "obj-16",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"patching_rect" : [ 241.092224, 282.48938, 64.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontsize" : 8.372468,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "255 200 200",
																	"id" : "obj-18",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"patching_rect" : [ 176.99292, 282.404297, 64.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontsize" : 8.372468,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sel 0 1",
																	"id" : "obj-19",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"patching_rect" : [ 177.51062, 261.113495, 97.163124, 17.0 ],
																	"numoutlets" : 3,
																	"fontsize" : 8.390105,
																	"outlettype" : [ "bang", "bang", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack row 0 brgb 0 0 0",
																	"id" : "obj-20",
																	"fontname" : "Verdana",
																	"numinlets" : 6,
																	"patching_rect" : [ 80.0, 303.468109, 180.723404, 17.0 ],
																	"numoutlets" : 1,
																	"fontsize" : 8.390105,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "print",
																	"id" : "obj-12",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"patching_rect" : [ 436.0, 487.0, 100.0, 17.0 ],
																	"numoutlets" : 0,
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "deferlow",
																	"id" : "obj-11",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"patching_rect" : [ 82.0, 74.0, 56.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"id" : "obj-10",
																	"numinlets" : 0,
																	"patching_rect" : [ 82.028381, 43.0, 25.0, 25.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "button",
																	"id" : "obj-9",
																	"numinlets" : 1,
																	"patching_rect" : [ 151.0, 69.0, 20.0, 20.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b i",
																	"id" : "obj-7",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"patching_rect" : [ 80.0, 211.0, 45.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontsize" : 9.0,
																	"outlettype" : [ "bang", "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t dump 0",
																	"id" : "obj-6",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"patching_rect" : [ 81.0, 143.0, 63.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontsize" : 9.0,
																	"outlettype" : [ "dump", "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "zl nth 3",
																	"id" : "obj-3",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"patching_rect" : [ 80.0, 191.0, 47.0, 17.0 ],
																	"numoutlets" : 2,
																	"fontsize" : 9.0,
																	"outlettype" : [ "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "counter",
																	"id" : "obj-2",
																	"fontname" : "Verdana",
																	"numinlets" : 5,
																	"patching_rect" : [ 80.0, 231.0, 108.0, 17.0 ],
																	"numoutlets" : 4,
																	"fontsize" : 9.0,
																	"outlettype" : [ "int", "", "", "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "coll #0-modules_position 1",
																	"id" : "obj-17",
																	"fontname" : "Arial",
																	"numinlets" : 1,
																	"patching_rect" : [ 81.013062, 163.939941, 175.0, 17.0 ],
																	"numoutlets" : 4,
																	"fontsize" : 9.242982,
																	"outlettype" : [ "", "", "", "" ],
																	"save" : [ "#N", "coll", "$0-modules_position", 1, ";" ],
																	"saved_object_attributes" : 																	{
																		"embed" : 0
																	}

																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"id" : "obj-1",
																	"numinlets" : 1,
																	"patching_rect" : [ 269.0, 552.0, 25.0, 25.0 ],
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "hcellcolor 0.784314 1. 0.784314 255",
																	"id" : "obj-46",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"patching_rect" : [ 437.404297, 305.078033, 163.0, 14.0 ],
																	"numoutlets" : 1,
																	"fontsize" : 8.148671,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "hcellcolor 1. 0.784314 0.784314 255",
																	"id" : "obj-23",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"patching_rect" : [ 429.418457, 287.617035, 163.0, 14.0 ],
																	"numoutlets" : 1,
																	"fontsize" : 8.148671,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t l",
																	"id" : "obj-40",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"patching_rect" : [ 394.028381, 439.595764, 34.163124, 17.0 ],
																	"numoutlets" : 1,
																	"fontsize" : 8.390105,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "button",
																	"id" : "obj-36",
																	"numinlets" : 1,
																	"patching_rect" : [ 345.801453, 246.205688, 19.432625, 19.432625 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "200 255 200",
																	"id" : "obj-35",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"patching_rect" : [ 494.092224, 247.48938, 64.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontsize" : 8.372468,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "255 200 200",
																	"id" : "obj-24",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"patching_rect" : [ 429.99292, 247.404297, 64.0, 15.0 ],
																	"numoutlets" : 1,
																	"fontsize" : 8.372468,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sel 0 1",
																	"id" : "obj-33",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"patching_rect" : [ 430.51062, 226.113495, 97.163124, 17.0 ],
																	"numoutlets" : 3,
																	"fontsize" : 8.390105,
																	"outlettype" : [ "bang", "bang", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "$2",
																	"id" : "obj-32",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"patching_rect" : [ 364.092224, 216.0, 48.581562, 14.0 ],
																	"numoutlets" : 1,
																	"fontsize" : 8.148671,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack row 0 brgb 0 0 0",
																	"id" : "obj-29",
																	"fontname" : "Verdana",
																	"numinlets" : 6,
																	"patching_rect" : [ 333.0, 268.468109, 180.723404, 17.0 ],
																	"numoutlets" : 1,
																	"fontsize" : 8.390105,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"id" : "obj-37",
																	"numinlets" : 0,
																	"patching_rect" : [ 363.028381, 89.0, 25.0, 25.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"id" : "obj-38",
																	"numinlets" : 0,
																	"patching_rect" : [ 429.028381, 89.0, 25.0, 25.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 0 ],
																	"destination" : [ "obj-17", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-17", 0 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-38", 0 ],
																	"destination" : [ "obj-33", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-37", 0 ],
																	"destination" : [ "obj-32", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-33", 0 ],
																	"destination" : [ "obj-24", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-33", 1 ],
																	"destination" : [ "obj-35", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-32", 0 ],
																	"destination" : [ "obj-36", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-36", 0 ],
																	"destination" : [ "obj-29", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-35", 0 ],
																	"destination" : [ "obj-29", 3 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-24", 0 ],
																	"destination" : [ "obj-29", 3 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-32", 0 ],
																	"destination" : [ "obj-29", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-29", 0 ],
																	"destination" : [ "obj-40", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-33", 0 ],
																	"destination" : [ "obj-23", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-33", 1 ],
																	"destination" : [ "obj-46", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-46", 0 ],
																	"destination" : [ "obj-40", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-23", 0 ],
																	"destination" : [ "obj-40", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-40", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 1 ],
																	"destination" : [ "obj-2", 2 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-7", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 0 ],
																	"destination" : [ "obj-11", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-11", 0 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-18", 0 ],
																	"destination" : [ "obj-20", 3 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-20", 3 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-19", 1 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-19", 0 ],
																	"destination" : [ "obj-18", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 1 ],
																	"destination" : [ "obj-19", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-21", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-21", 1 ],
																	"destination" : [ "obj-20", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-21", 0 ],
																	"destination" : [ "obj-20", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-32", 0 ],
																	"destination" : [ "obj-22", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-21", 1 ],
																	"destination" : [ "obj-22", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 1 ],
																	"destination" : [ "obj-27", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-22", 0 ],
																	"destination" : [ "obj-31", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-31", 0 ],
																	"destination" : [ "obj-27", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 0 ],
																	"destination" : [ "obj-34", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-34", 0 ],
																	"destination" : [ "obj-30", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-34", 1 ],
																	"destination" : [ "obj-28", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-28", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 172.904297, 537.0, 278.5, 537.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-30", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 133.918457, 429.0, 129.0, 429.0, 129.0, 537.0, 278.5, 537.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-20", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 89.5, 537.0, 278.5, 537.0 ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"fontname" : "Verdana",
														"default_fontface" : 0,
														"globalpatchername" : "",
														"default_fontname" : "Verdana",
														"fontface" : 0,
														"fontsize" : 9.0,
														"default_fontsize" : 9.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "fromsymbol",
													"id" : "obj-149",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 338.028381, 170.430817, 100.0, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend store",
													"linecount" : 2,
													"id" : "obj-138",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 350.884766, 232.080963, 49.007832, 28.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.484676,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t dump l clear",
													"id" : "obj-137",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 337.882141, 189.605759, 87.550911, 17.0 ],
													"numoutlets" : 3,
													"fontsize" : 9.242982,
													"outlettype" : [ "dump", "", "clear" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl iter 4",
													"id" : "obj-135",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 350.884766, 213.877289, 53.744125, 17.0 ],
													"numoutlets" : 2,
													"fontsize" : 9.242982,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"id" : "obj-128",
													"numinlets" : 1,
													"patching_rect" : [ 78.028381, 135.939957, 17.336815, 17.336815 ],
													"numoutlets" : 1,
													"outlettype" : [ "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "unpack 0 0 1",
													"id" : "obj-126",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 297.746399, 348.650146, 110.684074, 17.0 ],
													"numoutlets" : 3,
													"fontsize" : 9.242982,
													"outlettype" : [ "int", "int", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack script sendbox /nom presentation 1",
													"id" : "obj-124",
													"fontname" : "Verdana",
													"numinlets" : 5,
													"patching_rect" : [ 178.858643, 398.595306, 201.775452, 16.0 ],
													"numoutlets" : 1,
													"fontsize" : 8.195202,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf store %s %i %i %i",
													"id" : "obj-115",
													"fontname" : "Verdana",
													"numinlets" : 4,
													"patching_rect" : [ 115.283447, 174.549713, 134.802399, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 8.462612,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "== 0",
													"id" : "obj-116",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"patching_rect" : [ 159.538574, 138.514969, 46.217968, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 8.462612,
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl slice 3",
													"id" : "obj-12",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"patching_rect" : [ 115.283447, 119.257492, 63.549702, 17.0 ],
													"numoutlets" : 2,
													"fontsize" : 8.462612,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl slice 2",
													"id" : "obj-117",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"patching_rect" : [ 70.028381, 100.0, 63.549702, 17.0 ],
													"numoutlets" : 2,
													"fontsize" : 8.462612,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b b l",
													"id" : "obj-21",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 115.041443, 308.775452, 42.475197, 17.0 ],
													"numoutlets" : 3,
													"fontsize" : 9.242982,
													"outlettype" : [ "bang", "bang", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route symbol",
													"id" : "obj-14",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 210.393921, 320.911224, 69.684074, 17.0 ],
													"numoutlets" : 2,
													"fontsize" : 9.242982,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack script sendbox /filter~ presentation_position 0 0",
													"id" : "obj-16",
													"fontname" : "Arial",
													"numinlets" : 6,
													"patching_rect" : [ 115.041443, 369.454315, 247.916443, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.242982,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll #0-modules_position 1",
													"id" : "obj-17",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 115.041443, 285.370758, 307.498688, 17.0 ],
													"numoutlets" : 4,
													"fontsize" : 9.242982,
													"outlettype" : [ "", "", "", "" ],
													"save" : [ "#N", "coll", "$0-modules_position", 1, ";" ],
													"saved_object_attributes" : 													{
														"embed" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-92",
													"numinlets" : 0,
													"patching_rect" : [ 193.028381, 40.0, 25.0, 25.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-93",
													"numinlets" : 0,
													"patching_rect" : [ 75.028381, 40.0, 25.0, 25.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "list" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-94",
													"numinlets" : 1,
													"patching_rect" : [ 54.028381, 483.595306, 25.0, 25.0 ],
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-95",
													"numinlets" : 1,
													"patching_rect" : [ 83.028381, 483.595306, 25.0, 25.0 ],
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-96",
													"numinlets" : 1,
													"patching_rect" : [ 157.028381, 483.595306, 25.0, 25.0 ],
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 1 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-137", 2 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [ 415.933044, 279.436035, 124.541443, 279.436035 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-138", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [ 360.384766, 266.433441, 124.541443, 266.433441 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-137", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [ 347.382141, 255.16449, 124.541443, 255.16449 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-115", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-114", 0 ],
													"destination" : [ "obj-94", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-96", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-149", 0 ],
													"destination" : [ "obj-137", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-135", 0 ],
													"destination" : [ "obj-138", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-137", 1 ],
													"destination" : [ "obj-135", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-117", 0 ],
													"destination" : [ "obj-128", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 1 ],
													"destination" : [ "obj-124", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 2 ],
													"destination" : [ "obj-126", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-124", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-126", 2 ],
													"destination" : [ "obj-124", 4 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-126", 1 ],
													"destination" : [ "obj-16", 5 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-126", 0 ],
													"destination" : [ "obj-16", 4 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-117", 1 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 1 ],
													"destination" : [ "obj-116", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-116", 0 ],
													"destination" : [ "obj-115", 3 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-115", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-16", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-116", 0 ],
													"destination" : [ "obj-39", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-117", 0 ],
													"destination" : [ "obj-39", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-149", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-92", 0 ],
													"destination" : [ "obj-39", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-92", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-93", 0 ],
													"destination" : [ "obj-117", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-39", 0 ],
													"destination" : [ "obj-94", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-128", 0 ],
													"destination" : [ "obj-95", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-96", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-124", 0 ],
													"destination" : [ "obj-96", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 1 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-33", 1 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-33", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-94", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-32", 1 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-33", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 1 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 1 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Verdana",
										"default_fontface" : 0,
										"globalpatchername" : "",
										"default_fontname" : "Verdana",
										"fontface" : 0,
										"fontsize" : 9.0,
										"default_fontsize" : 9.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p",
									"id" : "obj-91",
									"fontname" : "Arial",
									"numinlets" : 5,
									"patching_rect" : [ 78.0, 563.926697, 100.0, 17.0 ],
									"numoutlets" : 2,
									"fontsize" : 9.3,
									"outlettype" : [ "", "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 244.0, 70.0, 884.0, 876.0 ],
										"bglocked" : 0,
										"defrect" : [ 244.0, 70.0, 884.0, 876.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 9.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p refresh",
													"id" : "obj-2",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"patching_rect" : [ 88.0, 125.0, 70.0, 17.0 ],
													"numoutlets" : 0,
													"fontsize" : 9.0,
													"color" : [ 0.278431, 0.921569, 0.639216, 1.0 ],
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 307.0, 183.0, 456.0, 409.0 ],
														"bglocked" : 0,
														"defrect" : [ 307.0, 183.0, 456.0, 409.0 ],
														"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
														"openinpresentation" : 0,
														"default_fontsize" : 9.0,
														"default_fontface" : 0,
														"default_fontname" : "Verdana",
														"gridonopen" : 0,
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 0,
														"toolbarvisible" : 1,
														"boxanimatetime" : 200,
														"imprint" : 0,
														"metadata" : [  ],
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "coll #0-modules_position 1",
																	"id" : "obj-23",
																	"fontname" : "Arial",
																	"numinlets" : 1,
																	"patching_rect" : [ 29.659332, 360.655701, 120.512817, 17.0 ],
																	"numoutlets" : 4,
																	"fontsize" : 9.295724,
																	"outlettype" : [ "", "", "", "" ],
																	"save" : [ "#N", "coll", "$0-modules_position", 1, ";" ],
																	"saved_object_attributes" : 																	{
																		"embed" : 0
																	}

																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"id" : "obj-21",
																	"numinlets" : 0,
																	"patching_rect" : [ 49.0, 45.0, 25.0, 25.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t 0",
																	"id" : "obj-14",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"patching_rect" : [ 104.0, 245.0, 38.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"outlettype" : [ "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "gate",
																	"id" : "obj-13",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"patching_rect" : [ 30.0, 299.0, 38.0, 17.0 ],
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t l l 1",
																	"id" : "obj-12",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"patching_rect" : [ 49.0, 132.0, 63.0, 17.0 ],
																	"numoutlets" : 3,
																	"fontsize" : 9.0,
																	"outlettype" : [ "", "", "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "if not, store it",
																	"id" : "obj-10",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"patching_rect" : [ 255.0, 342.0, 92.0, 17.0 ],
																	"numoutlets" : 0,
																	"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "check if symnol exists in coll",
																	"id" : "obj-9",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"patching_rect" : [ 240.0, 206.0, 150.0, 17.0 ],
																	"numoutlets" : 0,
																	"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "zl slice 1",
																	"id" : "obj-144",
																	"fontname" : "Arial",
																	"numinlets" : 2,
																	"patching_rect" : [ 49.0, 75.333344, 64.065933, 17.0 ],
																	"numoutlets" : 2,
																	"fontsize" : 9.295724,
																	"outlettype" : [ "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b l",
																	"id" : "obj-113",
																	"fontname" : "Arial",
																	"numinlets" : 1,
																	"patching_rect" : [ 30.0, 318.714294, 67.849823, 17.0 ],
																	"numoutlets" : 2,
																	"fontsize" : 9.295724,
																	"outlettype" : [ "bang", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "zl slice 2",
																	"id" : "obj-103",
																	"fontname" : "Arial",
																	"numinlets" : 2,
																	"patching_rect" : [ 93.952362, 95.333344, 49.065933, 17.0 ],
																	"numoutlets" : 2,
																	"fontsize" : 9.295724,
																	"outlettype" : [ "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "itoa",
																	"id" : "obj-101",
																	"fontname" : "Arial",
																	"numinlets" : 3,
																	"patching_rect" : [ 49.0, 112.194153, 31.849817, 17.0 ],
																	"numoutlets" : 1,
																	"fontsize" : 9.295724,
																	"outlettype" : [ "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "atoi",
																	"id" : "obj-100",
																	"fontname" : "Arial",
																	"numinlets" : 3,
																	"patching_rect" : [ 49.0, 94.39563, 30.989012, 17.0 ],
																	"numoutlets" : 1,
																	"fontsize" : 9.295724,
																	"outlettype" : [ "list" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "filter unnamed objects",
																	"id" : "obj-97",
																	"fontname" : "Arial",
																	"numinlets" : 1,
																	"patching_rect" : [ 148.875458, 95.534821, 97.0, 17.0 ],
																	"numoutlets" : 0,
																	"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
																	"fontsize" : 9.071487
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "route symbol",
																	"id" : "obj-11",
																	"fontname" : "Arial",
																	"numinlets" : 1,
																	"patching_rect" : [ 104.091583, 226.175812, 86.080589, 17.0 ],
																	"numoutlets" : 2,
																	"fontsize" : 9.295724,
																	"outlettype" : [ "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack store /nom 0 0 1",
																	"id" : "obj-6",
																	"fontname" : "Arial",
																	"numinlets" : 5,
																	"patching_rect" : [ 30.0, 339.703308, 214.461533, 17.0 ],
																	"numoutlets" : 1,
																	"fontsize" : 9.295724,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "prepend symbol",
																	"id" : "obj-48",
																	"fontname" : "Arial",
																	"numinlets" : 1,
																	"patching_rect" : [ 70.659332, 185.996338, 86.941391, 17.0 ],
																	"numoutlets" : 1,
																	"fontsize" : 9.295724,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "coll #0-modules_position 1",
																	"id" : "obj-42",
																	"fontname" : "Arial",
																	"numinlets" : 1,
																	"patching_rect" : [ 70.659332, 205.655701, 120.512817, 17.0 ],
																	"numoutlets" : 4,
																	"fontsize" : 9.295724,
																	"outlettype" : [ "", "", "", "" ],
																	"save" : [ "#N", "coll", "$0-modules_position", 1, ";" ],
																	"saved_object_attributes" : 																	{
																		"embed" : 0
																	}

																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-48", 0 ],
																	"destination" : [ "obj-42", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-42", 1 ],
																	"destination" : [ "obj-11", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 0 ],
																	"destination" : [ "obj-23", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-144", 1 ],
																	"destination" : [ "obj-103", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-144", 0 ],
																	"destination" : [ "obj-100", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-113", 0 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-113", 1 ],
																	"destination" : [ "obj-6", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-103", 0 ],
																	"destination" : [ "obj-6", 2 ],
																	"hidden" : 0,
																	"midpoints" : [ 103.452362, 124.0, 122.0, 124.0, 122.0, 175.0, 218.0, 175.0, 218.0, 286.0, 137.230774, 286.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-100", 0 ],
																	"destination" : [ "obj-101", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-12", 1 ],
																	"destination" : [ "obj-48", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-12", 2 ],
																	"destination" : [ "obj-13", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 102.5, 172.0, 39.5, 172.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-12", 0 ],
																	"destination" : [ "obj-13", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-11", 0 ],
																	"destination" : [ "obj-14", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-14", 0 ],
																	"destination" : [ "obj-13", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 113.5, 274.0, 39.5, 274.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-13", 0 ],
																	"destination" : [ "obj-113", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-101", 0 ],
																	"destination" : [ "obj-12", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-21", 0 ],
																	"destination" : [ "obj-144", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"fontname" : "Verdana",
														"default_fontface" : 0,
														"globalpatchername" : "",
														"default_fontname" : "Verdana",
														"fontface" : 0,
														"fontsize" : 9.0,
														"default_fontsize" : 9.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf script bringtofront %s",
													"id" : "obj-1",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 416.791199, 721.893799, 140.937729, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.295724,
													"outlettype" : [ "" ],
													"color" : [ 0.082353, 0.25098, 0.431373, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route symbol",
													"id" : "obj-76",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 633.36554, 598.553711, 69.684074, 17.0 ],
													"numoutlets" : 2,
													"fontsize" : 9.242982,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "tosymbol",
													"id" : "obj-66",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 592.0, 646.073242, 100.0, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "del 1000",
													"id" : "obj-67",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 535.0, 535.073242, 53.0, 18.0 ],
													"numoutlets" : 1,
													"fontsize" : 10.0,
													"outlettype" : [ "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl group",
													"id" : "obj-68",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 591.950378, 625.592896, 86.684074, 17.0 ],
													"numoutlets" : 2,
													"fontsize" : 9.242982,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll #0-modules_position 1",
													"id" : "obj-71",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 592.013062, 576.013184, 140.498688, 17.0 ],
													"numoutlets" : 4,
													"fontsize" : 9.242982,
													"outlettype" : [ "", "", "", "" ],
													"save" : [ "#N", "coll", "$0-modules_position", 1, ";" ],
													"saved_object_attributes" : 													{
														"embed" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "dump",
													"id" : "obj-72",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 591.0, 556.062866, 52.877285, 16.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.939816,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate",
													"id" : "obj-65",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 50.0, 694.073242, 73.0, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.3,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 1",
													"id" : "obj-62",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 81.0, 672.073242, 29.0, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.3,
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 0",
													"id" : "obj-36",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 50.0, 672.073242, 29.0, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.3,
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel none",
													"id" : "obj-5",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 50.0, 652.073242, 50.0, 17.0 ],
													"numoutlets" : 2,
													"fontsize" : 9.3,
													"outlettype" : [ "bang", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "del 10",
													"id" : "obj-60",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 92.0, 599.073242, 43.0, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.3,
													"outlettype" : [ "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t stop",
													"id" : "obj-47",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 55.0, 592.073242, 35.0, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.3,
													"outlettype" : [ "stop" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "onebang",
													"id" : "obj-24",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 92.0, 624.073242, 66.0, 17.0 ],
													"numoutlets" : 2,
													"fontsize" : 9.3,
													"outlettype" : [ "bang", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b b",
													"id" : "obj-54",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 116.0, 459.073273, 58.0, 17.0 ],
													"numoutlets" : 2,
													"fontsize" : 9.3,
													"outlettype" : [ "bang", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "change",
													"id" : "obj-49",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 139.0, 428.073273, 50.0, 17.0 ],
													"numoutlets" : 3,
													"fontsize" : 9.3,
													"outlettype" : [ "", "int", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b b",
													"id" : "obj-23",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 92.0, 533.073242, 58.0, 17.0 ],
													"numoutlets" : 2,
													"fontsize" : 9.3,
													"outlettype" : [ "bang", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "i",
													"id" : "obj-46",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 155.0, 563.073242, 39.0, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.3,
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 1",
													"id" : "obj-33",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 92.0, 513.073242, 42.0, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.3,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "i",
													"id" : "obj-25",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 114.0, 563.073242, 39.0, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.3,
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "print --locate-bang",
													"id" : "obj-19",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 72.0, 339.073273, 100.0, 17.0 ],
													"numoutlets" : 0,
													"fontsize" : 9.3
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 2 1",
													"id" : "obj-44",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 404.0, 454.073273, 42.0, 17.0 ],
													"numoutlets" : 2,
													"fontsize" : 9.3,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 1",
													"id" : "obj-38",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 118.0, 376.073273, 32.0, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.3,
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 2 1",
													"id" : "obj-32",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 340.0, 454.073273, 42.0, 17.0 ],
													"numoutlets" : 2,
													"fontsize" : 9.3,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* 35.",
													"id" : "obj-29",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 427.0, 513.573242, 41.0, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.3,
													"outlettype" : [ "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "/ 35.",
													"id" : "obj-30",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 427.0, 475.073273, 41.0, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.3,
													"outlettype" : [ "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "round",
													"id" : "obj-31",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 427.0, 494.573273, 41.0, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.3,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* 150.",
													"id" : "obj-28",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 363.0, 513.573242, 41.0, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.3,
													"outlettype" : [ "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "/ 150.",
													"id" : "obj-27",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 363.0, 475.073273, 41.0, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.3,
													"outlettype" : [ "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "round",
													"id" : "obj-26",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 363.0, 494.573273, 41.0, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.3,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "parceque sinon, une liste est tronquée par jcom.parameter",
													"linecount" : 2,
													"id" : "obj-10",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 704.0, 627.073242, 150.0, 29.0 ],
													"numoutlets" : 0,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b",
													"id" : "obj-143",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 214.597076, 183.39563, 28.406593, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.295724,
													"outlettype" : [ "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1 0",
													"id" : "obj-142",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 195.824188, 100.0, 86.941391, 17.0 ],
													"numoutlets" : 3,
													"fontsize" : 9.295724,
													"outlettype" : [ "bang", "bang", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "nopoll",
													"id" : "obj-141",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 229.230774, 119.659363, 36.153847, 16.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.763547,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "poll",
													"id" : "obj-140",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 195.659332, 119.659363, 31.849817, 16.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.763547,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route symbol",
													"id" : "obj-11",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 230.091583, 333.175812, 86.080589, 17.0 ],
													"numoutlets" : 2,
													"fontsize" : 9.295724,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t l l",
													"id" : "obj-74",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 195.659332, 270.337006, 86.941391, 17.0 ],
													"numoutlets" : 2,
													"fontsize" : 9.295724,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "i",
													"id" : "obj-70",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 195.659332, 204.054962, 37.875458, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.295724,
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b b l",
													"id" : "obj-64",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 195.659332, 354.695953, 86.941391, 17.0 ],
													"numoutlets" : 3,
													"fontsize" : 9.295724,
													"outlettype" : [ "bang", "bang", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack store /filter~ 100 100 1",
													"id" : "obj-63",
													"fontname" : "Arial",
													"numinlets" : 5,
													"patching_rect" : [ 196.659332, 719.446899, 156.780212, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.295724,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll #0-modules_position 1",
													"id" : "obj-61",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 196.659332, 740.106201, 120.512817, 17.0 ],
													"numoutlets" : 4,
													"fontsize" : 9.295724,
													"outlettype" : [ "", "", "", "" ],
													"save" : [ "#N", "coll", "$0-modules_position", 1, ";" ],
													"saved_object_attributes" : 													{
														"embed" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+",
													"id" : "obj-59",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 329.399231, 398.483551, 24.963369, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.295724,
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "unpack 0 0 1",
													"id" : "obj-58",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 265.384613, 376.216156, 146.080597, 17.0 ],
													"numoutlets" : 3,
													"fontsize" : 9.295724,
													"outlettype" : [ "int", "int", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+",
													"id" : "obj-57",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 265.245422, 397.20517, 24.963369, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.295724,
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1 0",
													"id" : "obj-56",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 195.659332, 225.575104, 41.31868, 17.0 ],
													"numoutlets" : 3,
													"fontsize" : 9.295724,
													"outlettype" : [ "bang", "bang", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl reg",
													"id" : "obj-55",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 195.659332, 247.956055, 63.699635, 17.0 ],
													"numoutlets" : 2,
													"fontsize" : 9.295724,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack script sendbox /filter~ presentation_position 0 0",
													"id" : "obj-53",
													"fontname" : "Arial",
													"numinlets" : 6,
													"patching_rect" : [ 399.791199, 698.893799, 253.937729, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.295724,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "toggle",
													"id" : "obj-20",
													"numinlets" : 1,
													"patching_rect" : [ 195.659332, 182.534821, 17.216118, 17.216118 ],
													"numoutlets" : 1,
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"id" : "obj-50",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 317.227112, 173.487183, 43.9011, 17.0 ],
													"numoutlets" : 2,
													"fontsize" : 9.295724,
													"outlettype" : [ "int", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"id" : "obj-18",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 276.123657, 173.487183, 43.9011, 17.0 ],
													"numoutlets" : 2,
													"fontsize" : 9.295724,
													"outlettype" : [ "int", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Ver. Delta",
													"linecount" : 2,
													"id" : "obj-51",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 325.835205, 189.842499, 36.153847, 28.0 ],
													"numoutlets" : 0,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"fontsize" : 9.401981
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Hor. Delta",
													"linecount" : 2,
													"id" : "obj-52",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 282.794861, 189.842499, 36.153847, 28.0 ],
													"numoutlets" : 0,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"fontsize" : 9.401981
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend symbol",
													"id" : "obj-48",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 195.659332, 290.996338, 86.941391, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.295724,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "clear",
													"id" : "obj-45",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 150.505493, 314.970703, 31.849817, 16.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.763547,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll #0-modules_position 1",
													"id" : "obj-42",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 195.659332, 311.655701, 120.512817, 17.0 ],
													"numoutlets" : 4,
													"fontsize" : 9.295724,
													"outlettype" : [ "", "", "", "" ],
													"save" : [ "#N", "coll", "$0-modules_position", 1, ";" ],
													"saved_object_attributes" : 													{
														"embed" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "mousestate",
													"id" : "obj-34",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 195.659332, 141.736267, 131.523804, 17.0 ],
													"numoutlets" : 5,
													"fontsize" : 9.295724,
													"outlettype" : [ "int", "int", "int", "int", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-84",
													"numinlets" : 0,
													"patching_rect" : [ 24.0, 40.0, 25.0, 25.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-85",
													"numinlets" : 0,
													"patching_rect" : [ 88.0, 40.0, 25.0, 25.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-86",
													"numinlets" : 0,
													"patching_rect" : [ 57.0, 39.0, 25.0, 25.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-87",
													"numinlets" : 0,
													"patching_rect" : [ 244.0, 40.0, 25.0, 25.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-88",
													"numinlets" : 0,
													"patching_rect" : [ 596.0, 40.0, 25.0, 25.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-89",
													"numinlets" : 1,
													"patching_rect" : [ 401.0, 754.106201, 25.0, 25.0 ],
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-90",
													"numinlets" : 1,
													"patching_rect" : [ 594.0, 754.106201, 25.0, 25.0 ],
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-72", 0 ],
													"destination" : [ "obj-71", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-71", 3 ],
													"destination" : [ "obj-68", 0 ],
													"hidden" : 0,
													"midpoints" : [ 723.011719, 619.399658, 601.450378, 619.399658 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-71", 1 ],
													"destination" : [ "obj-76", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-71", 0 ],
													"destination" : [ "obj-68", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-63", 0 ],
													"destination" : [ "obj-61", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-42", 1 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-45", 0 ],
													"destination" : [ "obj-42", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-48", 0 ],
													"destination" : [ "obj-42", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-42", 0 ],
													"destination" : [ "obj-64", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-76", 0 ],
													"destination" : [ "obj-68", 0 ],
													"hidden" : 0,
													"midpoints" : [ 642.86554, 617.073242, 601.450378, 617.073242 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-65", 0 ],
													"destination" : [ "obj-63", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 0 ],
													"destination" : [ "obj-65", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-62", 0 ],
													"destination" : [ "obj-65", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-36", 0 ],
													"destination" : [ "obj-65", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-74", 1 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 1 ],
													"destination" : [ "obj-62", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-36", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-54", 1 ],
													"destination" : [ "obj-33", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-49", 2 ],
													"destination" : [ "obj-54", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-33", 0 ],
													"destination" : [ "obj-23", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-23", 1 ],
													"destination" : [ "obj-25", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-23", 1 ],
													"destination" : [ "obj-46", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 0 ],
													"destination" : [ "obj-49", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-70", 0 ],
													"destination" : [ "obj-56", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-56", 0 ],
													"destination" : [ "obj-55", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-63", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-46", 0 ],
													"destination" : [ "obj-63", 3 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-29", 0 ],
													"destination" : [ "obj-46", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-28", 0 ],
													"destination" : [ "obj-25", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-59", 0 ],
													"destination" : [ "obj-63", 3 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-57", 0 ],
													"destination" : [ "obj-63", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-64", 1 ],
													"destination" : [ "obj-53", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-74", 0 ],
													"destination" : [ "obj-48", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-55", 0 ],
													"destination" : [ "obj-74", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 0 ],
													"destination" : [ "obj-70", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-50", 0 ],
													"destination" : [ "obj-59", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-57", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-34", 4 ],
													"destination" : [ "obj-50", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-34", 3 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-34", 0 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-53", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-63", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-64", 0 ],
													"destination" : [ "obj-63", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-58", 0 ],
													"destination" : [ "obj-57", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-58", 1 ],
													"destination" : [ "obj-59", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-64", 2 ],
													"destination" : [ "obj-58", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-58", 2 ],
													"destination" : [ "obj-63", 4 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-141", 0 ],
													"destination" : [ "obj-34", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-140", 0 ],
													"destination" : [ "obj-34", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-142", 0 ],
													"destination" : [ "obj-140", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-142", 1 ],
													"destination" : [ "obj-141", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-34", 3 ],
													"destination" : [ "obj-143", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-143", 0 ],
													"destination" : [ "obj-70", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 0 ],
													"destination" : [ "obj-26", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 0 ],
													"destination" : [ "obj-28", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 0 ],
													"destination" : [ "obj-31", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-31", 0 ],
													"destination" : [ "obj-29", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-38", 0 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-57", 0 ],
													"destination" : [ "obj-32", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-59", 0 ],
													"destination" : [ "obj-44", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-32", 0 ],
													"destination" : [ "obj-53", 4 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-44", 0 ],
													"destination" : [ "obj-53", 5 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-32", 1 ],
													"destination" : [ "obj-27", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-44", 1 ],
													"destination" : [ "obj-30", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-28", 0 ],
													"destination" : [ "obj-53", 4 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-29", 0 ],
													"destination" : [ "obj-53", 5 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-38", 0 ],
													"destination" : [ "obj-44", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-24", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-46", 0 ],
													"destination" : [ "obj-24", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-47", 0 ],
													"destination" : [ "obj-24", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-23", 0 ],
													"destination" : [ "obj-60", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-60", 0 ],
													"destination" : [ "obj-24", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-68", 0 ],
													"destination" : [ "obj-66", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-67", 0 ],
													"destination" : [ "obj-72", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-54", 0 ],
													"destination" : [ "obj-67", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-84", 0 ],
													"destination" : [ "obj-47", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-84", 0 ],
													"destination" : [ "obj-33", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-84", 0 ],
													"destination" : [ "obj-38", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-86", 0 ],
													"destination" : [ "obj-142", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-87", 0 ],
													"destination" : [ "obj-55", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-88", 0 ],
													"destination" : [ "obj-72", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-53", 0 ],
													"destination" : [ "obj-89", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-66", 0 ],
													"destination" : [ "obj-90", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-89", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-85", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Verdana",
										"default_fontface" : 0,
										"globalpatchername" : "",
										"default_fontname" : "Verdana",
										"fontface" : 0,
										"fontsize" : 9.0,
										"default_fontsize" : 9.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "snap to grid",
									"presentation_linecount" : 2,
									"id" : "obj-37",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 537.0, 191.0, 63.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"hidden" : 1,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontsize" : 8.908006,
									"presentation_rect" : [ 19.0, 239.0, 34.0, 27.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"id" : "obj-35",
									"numinlets" : 1,
									"patching_rect" : [ 516.0, 189.0, 20.0, 20.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"hidden" : 1,
									"outlettype" : [ "int" ],
									"presentation_rect" : [ 2.0, 242.0, 19.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-1",
									"numinlets" : 0,
									"patching_rect" : [ 146.0, 529.0, 22.0, 22.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : "from hover"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-150",
									"numinlets" : 1,
									"patching_rect" : [ 159.0, 628.0, 25.0, 25.0 ],
									"numoutlets" : 0,
									"comment" : "preset (list) as a symbol"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t front",
									"id" : "obj-40",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 16.0, 68.0, 46.0, 17.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "front" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"id" : "obj-41",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 16.0, 93.0, 73.0, 17.0 ],
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "", "" ],
									"save" : [ "#N", "thispatcher", ";", "#Q", "window", "flags", "nogrow", "noclose", "nozoom", "float", "menu", "minimize", ";", "#Q", "window", "constrain", 2, 2, 32768, 32768, ";", "#Q", "window", "size", 699, 98, 881, 363, ";", "#Q", "window", "title", ";", "#Q", "window", "exec", ";", "#Q", "savewindow", 1, ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /panel/open /positions",
									"id" : "obj-43",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 16.0, 47.0, 211.0, 17.0 ],
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-22",
									"numinlets" : 0,
									"patching_rect" : [ 120.0, 529.0, 22.0, 22.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : "from js locate_patcher"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "jit.cellblock",
									"hint" : "click in list to hide / show module",
									"cols" : 4,
									"id" : "obj-119",
									"outmode" : 1,
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 327.0, 251.681458, 238.381195, 99.686684 ],
									"rows" : 5,
									"presentation" : 1,
									"bblend" : 100,
									"numoutlets" : 4,
									"hidden" : 1,
									"hcellcolor" : [ 0.784314, 1.0, 0.784314, 255.0 ],
									"fontsize" : 9.0,
									"outlettype" : [ "list", "", "", "" ],
									"bgcolor" : [ 0.784314, 1.0, 0.784314, 0.0 ],
									"selmode" : 3,
									"hscroll" : 0,
									"presentation_rect" : [ 0.0, 32.681458, 183.381195, 211.686676 ],
									"rowdef" : [ [ 0, 0, 1, 1.0, 1.0, 1.0, 0, 0.78125, 0.996094, 0.78125, -1, -1, -1 ], [ 4, 0, 1, 1.0, 1.0, 1.0, 0, 0.78125, 0.996094, 0.78125, -1, -1, -1 ], [ 3, 0, 1, 1.0, 1.0, 1.0, 0, 0.78125, 0.996094, 0.78125, -1, -1, -1 ], [ 2, 0, 1, 1.0, 1.0, 1.0, 0, 0.78125, 0.996094, 0.78125, -1, -1, -1 ], [ 1, 0, 1, 1.0, 1.0, 1.0, 0, 0.78125, 0.996094, 0.78125, -1, -1, -1 ], [ 5, 0, 1, 1.0, 1.0, 1.0, 0, 0.78125, 0.996094, 0.78125, -1, -1, -1 ], [ 6, 0, 1, 1.0, 1.0, 1.0, 0, 0.78125, 0.996094, 0.78125, -1, -1, -1 ], [ 7, 0, 1, 1.0, 1.0, 1.0, 0, 0.78125, 0.996094, 0.78125, -1, -1, -1 ], [ 8, 0, 1, 1.0, 1.0, 1.0, 0, 0.78125, 0.996094, 0.78125, -1, -1, -1 ], [ 9, 0, 1, 1.0, 1.0, 1.0, 0, 0.78125, 0.996094, 0.78125, -1, -1, -1 ], [ 10, 0, 1, 1.0, 1.0, 1.0, 0, 0.78125, 0.996094, 0.78125, -1, -1, -1 ], [ 11, 0, 1, 1.0, 1.0, 1.0, 0, 0.78125, 0.996094, 0.78125, -1, -1, -1 ], [ 12, 0, 1, 1.0, 1.0, 1.0, 0, 0.78125, 0.996094, 0.78125, -1, -1, -1 ], [ 13, 0, 1, 1.0, 1.0, 1.0, 0, 0.78125, 0.996094, 0.78125, -1, -1, -1 ], [ 14, 0, 1, 1.0, 1.0, 1.0, 0, 0.78125, 0.996094, 0.78125, -1, -1, -1 ], [ 15, 0, 1, 1.0, 1.0, 1.0, 0, 0.78125, 0.996094, 0.78125, -1, -1, -1 ], [ 16, 0, 1, 1.0, 1.0, 1.0, 0, 0.78125, 0.996094, 0.78125, -1, -1, -1 ], [ 17, 0, 1, 1.0, 1.0, 1.0, 0, 0.78125, 0.996094, 0.78125, -1, -1, -1 ], [ 18, 0, 1, 1.0, 1.0, 1.0, 0, 0.78125, 0.996094, 0.78125, -1, -1, -1 ], [ 19, 0, 1, 1.0, 1.0, 1.0, 0, 0.78125, 0.996094, 0.78125, -1, -1, -1 ], [ 20, 0, 1, 1.0, 1.0, 1.0, 0, 0.78125, 0.996094, 0.78125, -1, -1, -1 ], [ 21, 0, 1, 1.0, 1.0, 1.0, 0, 0.78125, 0.996094, 0.78125, -1, -1, -1 ], [ 22, 0, 1, 1.0, 1.0, 1.0, 0, 0.78125, 0.996094, 0.78125, -1, -1, -1 ], [ 23, 0, 1, 1.0, 1.0, 1.0, 0, 0.78125, 0.996094, 0.78125, -1, -1, -1 ], [ 24, 0, 1, 1.0, 1.0, 1.0, 0, 0.78125, 0.996094, 0.78125, -1, -1, -1 ], [ 25, 0, 1, 1.0, 1.0, 1.0, 0, 0.78125, 0.996094, 0.78125, -1, -1, -1 ] ],
									"coldef" : [ [ 0, 100, 1, 1.0, 1.0, 1.0, 1, 1.0, 1.0, 1.0, -1, -1, -1 ], [ 1, 30, 1, 1.0, 1.0, 1.0, 1, 1.0, 1.0, 1.0, -1, -1, -1 ], [ 2, 30, 1, 1.0, 1.0, 1.0, 1, 1.0, 1.0, 1.0, -1, -1, -1 ], [ 3, 20, 1, 1.0, 1.0, 1.0, 1, 1.0, 1.0, 1.0, -1, -1, -1 ] ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "edit",
									"id" : "obj-79",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 71.355316, 471.0, 24.256409, 17.0 ],
									"numoutlets" : 0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontsize" : 9.295724
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"hint" : "enable moving modules in patch (presentation mode only)",
									"id" : "obj-75",
									"numinlets" : 1,
									"patching_rect" : [ 95.824188, 469.216125, 21.989012, 21.989012 ],
									"numoutlets" : 1,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-2",
									"numinlets" : 1,
									"patching_rect" : [ 78.0, 629.0, 25.0, 25.0 ],
									"numoutlets" : 0,
									"comment" : "to thispatcher"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-3",
									"numinlets" : 0,
									"patching_rect" : [ 17.0, 25.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-75", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-75", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-75", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 1 ],
									"destination" : [ "obj-31", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 1 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-119", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-119", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 1 ],
									"destination" : [ "obj-97", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-119", 0 ],
									"destination" : [ "obj-97", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-97", 0 ],
									"destination" : [ "obj-119", 0 ],
									"hidden" : 0,
									"midpoints" : [ 336.471619, 378.0, 309.0, 378.0, 309.0, 246.0, 336.5, 246.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-97", 1 ],
									"destination" : [ "obj-91", 4 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-97", 2 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-91", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-91", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-75", 0 ],
									"destination" : [ "obj-91", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-91", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-91", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-91", 1 ],
									"destination" : [ "obj-150", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-43", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 1 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-34", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-119", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-119", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-117", 0 ],
									"destination" : [ "obj-140", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-58", 0 ],
									"destination" : [ "obj-140", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-140", 0 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Arial",
						"default_fontface" : 0,
						"globalpatchername" : "",
						"default_fontname" : "Arial",
						"fontface" : 0,
						"fontsize" : 9.3,
						"default_fontsize" : 9.3
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.layout @module_type control @description \"store presentation position of modules in presets\"",
					"linecount" : 2,
					"id" : "obj-37",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 191.0, 178.0, 311.0, 31.0 ],
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"id" : "obj-38",
					"numinlets" : 0,
					"patching_rect" : [ 203.0, 126.0, 22.0, 22.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-39",
					"numinlets" : 1,
					"patching_rect" : [ 191.0, 218.0, 22.0, 22.0 ],
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"id" : "obj-43",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 251.0, 148.0, 159.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"id" : "obj-16",
					"numinlets" : 1,
					"patching_rect" : [ 0.0, 0.0, 150.0, 210.0 ],
					"presentation" : 1,
					"numoutlets" : 1,
					"has_panel" : 1,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 0.0, 0.0, 150.0, 210.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-9", 1 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 1 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 1 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [ 803.0, 465.0, 717.0, 465.0, 717.0, 21.0, 576.0, 21.0, 576.0, 21.0, 249.5, 21.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 1 ],
					"destination" : [ "obj-53", 1 ],
					"hidden" : 0,
					"midpoints" : [ 376.0, 63.0, 447.0, 63.0, 447.0, 55.0, 637.0, 55.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 1 ],
					"destination" : [ "obj-13", 1 ],
					"hidden" : 0,
					"midpoints" : [ 376.0, 66.0, 227.0, 66.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 1 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.419608, 0.0, 1.0 ],
					"midpoints" : [ 231.0, 289.0, 177.0, 289.0, 177.0, 21.0, 249.5, 21.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 1 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 2 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [ 609.5, 378.0, 764.5, 378.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 2 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [ 626.5, 135.0, 764.5, 135.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-49", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 1 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 936.5, 129.0, 814.5, 129.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 1 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [ 235.5, 171.0, 200.5, 171.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [ 260.5, 171.0, 200.5, 171.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [ 295.5, 119.0, 200.5, 119.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-33", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 1 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [ 361.5, 368.0, 285.5, 368.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 1 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [ 390.0, 405.0, 384.5, 405.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-33", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 2 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [ 494.5, 405.0, 590.0, 405.0, 590.0, 311.0, 390.5, 311.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 2 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 1 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [ 619.5, 200.0, 794.5, 200.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 1 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 1 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 2 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 0 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
