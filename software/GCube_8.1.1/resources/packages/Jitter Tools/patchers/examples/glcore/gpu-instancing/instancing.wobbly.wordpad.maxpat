{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 2,
			"revision" : 0,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 244.0, 79.0, 1114.0, 837.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"bubble" : 1,
					"bubblepoint" : 0.0,
					"bubbleside" : 2,
					"bubbleusescolors" : 1,
					"id" : "obj-94",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 935.0, 542.0, 154.0, 66.0 ],
					"text" : "texplane_s and texplane_t values packed sent as 4 element matrix"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubblepoint" : 0.0,
					"bubbleside" : 2,
					"bubbleusescolors" : 1,
					"id" : "obj-93",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 758.0, 527.0, 145.0, 39.0 ],
					"text" : "instance position + scale"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleusescolors" : 1,
					"id" : "obj-92",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 602.0, 429.5, 132.0, 37.0 ],
					"text" : "pack scale value in with position values"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-89",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 466.0, 389.0, 80.0, 22.0 ],
					"text" : "loadmess 0.2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-80",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 28.0, 157.0, 170.0, 22.0 ],
					"text" : "jit.gl.light @rotatexyz 0. -10. 0."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-77",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 206.0, 618.0, 35.0, 22.0 ],
					"text" : "reset"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-75",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 466.0, 413.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-73",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 466.0, 437.0, 129.0, 22.0 ],
					"style" : "default",
					"text" : "jit.matrix 1 float32 10 8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-72",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 290.0, 480.5, 195.0, 22.0 ],
					"text" : "jit.pack 2 @jump 3 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-60",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "jit_matrix" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 2,
							"revision" : 0,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 694.0, 210.0, 381.0, 477.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-30",
									"index" : 3,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 300.0, 30.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-29",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 300.0, 244.0, 29.5, 22.0 ],
									"text" : "0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 85.0, 268.0, 55.0, 22.0 ],
									"text" : "zl.join"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 126.0, 66.0, 66.0, 22.0 ],
									"text" : "route bang"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-3",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 126.0, 30.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 38.0, 66.0, 66.0, 22.0 ],
									"text" : "route bang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-40",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "float", "float", "float", "float" ],
									"patching_rect" : [ 209.0, 208.0, 74.0, 22.0 ],
									"text" : "unpack f f f f"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "float", "float", "float", "float" ],
									"patching_rect" : [ 121.0, 208.0, 74.0, 22.0 ],
									"text" : "unpack f f f f"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 173.0, 96.0, 55.0, 22.0 ],
									"text" : "zl.ecils 4"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 85.0, 96.0, 55.0, 22.0 ],
									"text" : "zl.ecils 4"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 121.0, 244.0, 162.0, 22.0 ],
									"text" : "pack 0. 1. 0. 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 38.0, 364.5, 129.0, 22.0 ],
									"style" : "default",
									"text" : "jit.matrix 4 float32 10 8"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-57",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 38.0, 30.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-59",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 38.0, 390.5, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"source" : [ "obj-1", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 1 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"source" : [ "obj-2", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"source" : [ "obj-32", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"source" : [ "obj-37", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 1 ],
									"source" : [ "obj-39", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 3 ],
									"source" : [ "obj-40", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 2 ],
									"source" : [ "obj-40", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-57", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-59", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 732.0, 260.864864864865012, 123.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p create_s_t_matrix"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 206.0, 642.0, 69.0, 22.0 ],
					"text" : "jit.gl.handle"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.059509769082069, 0.501929938793182, 0.998454749584198, 1.0 ],
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_gl_buffer", "" ],
					"patching_rect" : [ 732.0, 610.0, 245.0, 22.0 ],
					"text" : "jit.gl.buffer @type vertex_attr1 @instanced 1"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.059509769082069, 0.501929938793182, 0.998454749584198, 1.0 ],
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_gl_buffer", "" ],
					"patching_rect" : [ 676.25, 574.0, 245.0, 22.0 ],
					"text" : "jit.gl.buffer @type vertex_attr0 @instanced 1"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleusescolors" : 1,
					"id" : "obj-17",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 445.0, 689.0, 110.0, 24.0 ],
					"style" : "default",
					"text" : "add some color"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-7",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 393.0, 690.0, 50.0, 22.0 ],
					"style" : "default"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-64",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 286.0, 719.0, 126.0, 22.0 ],
					"style" : "default",
					"text" : "pak colorize 0. 1. 2. 0."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-63",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 286.0, 747.0, 90.0, 22.0 ],
					"style" : "default",
					"text" : "prepend param"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 286.0, 777.0, 331.0, 22.0 ],
					"style" : "default",
					"text" : "jit.gl.shader @name tc_instance @file instancing.mesh.tc.jxs"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "newobj",
					"numinlets" : 9,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 286.0, 642.0, 465.0, 22.0 ],
					"style" : "default",
					"text" : "jit.gl.mesh @lighting_enable 1 @auto_material 0 @color 1 1 1 1 @shader tc_instance"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 286.0, 542.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"attr" : "speed",
					"id" : "obj-5",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 497.0, 39.0, 103.0, 22.0 ],
					"text_width" : 62.0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 440.0, 234.0, 75.0, 22.0 ],
					"style" : "default",
					"text" : "jit.- @val 2.5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "bang" ],
					"patching_rect" : [ 290.0, 107.0, 169.0, 22.0 ],
					"text" : "t b b b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 497.0, 63.0, 43.0, 22.0 ],
					"text" : "jit.time"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_gl_texture", "" ],
					"patching_rect" : [ 28.0, 131.0, 167.0, 22.0 ],
					"text" : "jit.gl.camera @position 0 0 10"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 28.0, 79.0, 24.0, 24.0 ],
					"style" : "default"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "jit_matrix", "bang", "" ],
					"patching_rect" : [ 28.0, 107.0, 111.0, 22.0 ],
					"style" : "default",
					"text" : "jit.world @enable 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 30.0, 462.5, 24.0, 24.0 ],
					"style" : "default"
				}

			}
, 			{
				"box" : 				{
					"autofit" : 1,
					"data" : [ 84716, "png", "IBkSG0fBZn....PCIgDQRA..B....H..HX.....83Qs9....DLmPIQEBHf.B7g.YHB..f.PRDEDU3wI68tGbTccmuue9s6towFv5gw1AGSPOf3Xx3jHjFhySmQfFt4T2ZtUFYQ4j5dl59fGEScO+SRA3x4lbpSk6XCiq3TScmJBQXNSpYRkHDViqyw004hkFkL9NNwQ.gbb7gwIHgEFaHXqGV7vfnasW2+Xs1MK0zsTqt26tAz5aU6Bzt6d+c8ZuV+V+V+dHJkRvAGbvAGbvgETvqRW.bvAGbvAGbn7Cm..N3fCN3fCK.gS..GbvAGbvgEfHdg7kRlL4ps+6omd55y22MVrXuYv+epolZnhun432wuieG+NToa+qz7WoQkt9Gk7KylQ.FOd717882LvJApBHg4ilMMG3CjBXRfy3440S5zo6atJHN9c7632wuCWGU51+JM+UZToq+kC9yqF.RlL4p888+Z.OBPCVjWnHMvv999wSlL4aNekFxwuieG+Kb4egNpzs+UZ9qznRW+KW7mWA.LpY3A.Zz22ufNpfre1dddMB71lm07pAvwuieG+Kb4egNpzs+UZ9qznRW+KW7mWUInTpUATCEncBjuBAPMlm07BN9c763egK+KzQkt8uRyekFU55e4h+45gOC0N34UXNMfuuedeFyS332wui+Et7uPGU51+JM+UZToq+QN+EizEWB3L.Sk08Sh1XEVZQ7Lc7632wuieGlaToa+qz7WoQkt9Gp7WLB.bFfC6448Ssuouu+WFXS.OTQ7Lc7632wuieGlaToa+qz7WoQkt9Gp7WLB.jVD4DY6ZAwhEaUJkZCEwyywuieG+N9cnvPkt8uRyekFU55enxuKR.5fCN3fCNr.DNA.bvAGbvAGV.Bm..N3fCN3fCK.gS..GbvAGbvgEfvI.fCN3fCN3vBP3D.vAGbvAGbXAHbB.3fCN3fCNr.DNA.bvAGbvAGV.Bm..N3fCN3fCK.gS..GbvAGbvgEfvI.fCN3fCN3vBP3D.vAGbvAGbXAHbB.3fCN3fCNr.DES1.LtRoVa73way9lJkZsE4yywuieG+N9cnvPkt8uRyekFU55enxewTfWIvl788+RYc+jlOKpgieG+N9W3x+BcToa+qz7WoQkt9Gp7WLB.rTfGpH9cgEb7632w+BW9WniJc6ekl+JMpz0+Pk+4R.fT1+guuewvQp49q332wuieG+NjEpzs+UZ9qznRW+ib9yqQ.JhbZfI.RWLrZPZfILOq4Eb7632w+BW9WniJc6ekl+JMpz0+xE+4UC.whE6M888eafg877Z.HQQP9v.ucrXwdy44u0wuieG+Kf4egNpzs+UZ9qznRW+KW7mWA.lZpoFJd73+Xee+z.mFnJqBwr49f9nU6vj.mwyyqmolZpglmEdG+N9c7u.l+E5nR29Wo4uRiJc8ubwunTJYtJLISlb01+8zSOc8466ZKsQX0w632wui+Et7uPGU51+JM+UZToq+QI+Ej..N3fCN3fCNb6EbQBPGbvAGbvgEfnfhC.2NqBDG+N9c7632wui+Eh7OqGAP73way22eynivPEsQHjNc59lqBhieG+N9c7632wui+xG+4UC.ISlb0999eMfGAnncCAee+3ISl7MmuRC432wuieG+N9c763O53OuB.XTyvC.znuueQkzf777ZD3sMOq4UCfieG+N9c7632wui+ni+7pJAkRsJfZnzxvQwApw7rlWvwuieG+N9c7632wezw+b8vmgZG77JLmFHqXV77U0EN9c7632wuieG+N9iX9KFoKtDvY.lJq6GjNBWZQ7Lc7632wuieG+N9c7WF4uXD.3L.G1yy6mZeSee+uLvlH5SUhN9c7632wuieG+N9KQ9KFA.RKhbhrcsfXwhsJkRsgh34432wuieG+N9c763uLyuKR.5fCN3fCNr.DNA.bvAGbvAGV.Bm..N3fCN3fCK.gS..GbvAGbvgEfvI.fCN3fCN3vBP3D.vAGbvAGbXAHbB.3fCN3fCNr.DNA.bvAGbvAGV.Bm..N3fCN3fCK.gS..GbvAGbvgEfvI.fCN3fCN3vBP3D.vAGbvAGbXAHbB.3fCN3fCNr.DES1.LtRoVa73way9lJkZsE4yywuieG+N9c7632weYl+ho.uRfM466+kx59IMeVTCG+N9c7632wuieG+kH+Ei..KE3gJheWXAG+N9c7632wuieG+kHlKA.RY+G999ECGol6uhieG+N9c7632wui+xI+40H.EQNMvD.oKFVMHMvDlm07BN9c7632wuieG+N9iN9yqF.hEK1a566+1.C6440.Phhf7gAd6Xwh8lyyeqieG+N9c7632wui+Hj+7J.vTSM0PwiG+G666mF3z.UYUHlM2GzGsZGlD3Lddd8L0TSMz7rv632wuieG+N9c763OB4WTJkLWEljIStZ6+d5omt978csk1nXp3N9c7632wuieG+N9id9KHA.bvAGbvAGb31KTNBbAQFrkLJrj1Z9vqMm45dNDt3lo13rkJuRTltYn8HVrXaQoTeZf6FXJfykHQhueTTlRlL4pSkJ0eIvJP62yiIh7qld5oOPXyUgVdfaNFO5fCEy3waI0.P73way22ey.2OZ+h7R.m0yyqmzoS2WYf26ybqyKh7VJk5iXeuntbby.rlLdY.WLplzOG80PYp+NOkk+bfOL5yjaQ.Si971Na4ZwnbMNrRLlyr3+eFvCCTKvU.9c.Gy22+qG174448r.MC7f.2Av3.+VQj+qkSg.tYo82AGfLuG9n.2C54jdefQJj4jukSC.ISlb0999eMfGAHv5HSAbJee+3ISl7MipceX3c8.qxb6ynTp2F3A35QgoSGkkiBobBQ6tRLK9+MPOw+cCLVpTotijIS9cCSdiEK12RoTOBveDvGhqaDLo.9C9992erXwdjomd5uSXw4rTV1hRo92A7IQKLRRqO9Z.mWoT2WrXwHJWLJOiCK6i4RlL4pUJ0F.Ztt5paEm5Tmh95quksoMsoo.NUxjIWcXVVLiqqAntCe3Ceus0VazPCMrrQFYjEoTpKmLYxed4nteyR6uCN.YlW5q.rNzB.3gV.fSjJUJ.lUAwukKY.YL.hG.nQee+D999366m.nQfGX1LPhPh2U666em9992ogyOZV2a0QY4.zc5ddd+8ddd+Sddd+DOOum0buePpTo9qSkJ0esmm2OH63EcXASc6i.7w788ePfOFvGIc5zeovhCy.6GA3Qpqt5VY2c2cPeMc2c2Ipqt5VIvinTpOWrXw1RXwatP73wayrS2uPUUUU8c1YmIGczQw22mQGcT5t6tWTSM0zJA9jJk5Qy93ABSjmwgQ9XtrgQ6OqEXEc0UW.vd26dAHVTvm0BqwL7fg2U.rVS4IRf4cqN8775zH36p3Fa+WUpTo9FAeundLoCNXDB+QA9TM0TS2muuumuuOG9vGtZf5.tm4Ztna4z.fRoVE5cBjcYONPMlOOJ401eLiCTMybRuDQY4vRhOa0tdJkR8fnmH5Ci1UPNsuuOg4tRRlL4pSmN8WUoTMgdW40Z9nZA9TJk5N7771fHxIhGO9OoX40Lv9yA7v0UWc0bzidTps1Zy74adyalMtwMRKszRMiLxHqUoTetnbGfF089Iqpppt6gGd3YTVps1ZYyadyr4MuY777pFnJyBwQRYIOiCizwbYCifkqFng1aucZqs1X3gGlAFX..FCXhnnuPD4TJkZrAFXf6e3gGl1ZqMZu81o2d6sAfSGOd71Ba0vacLG0CrXfO.867Y292H5cfcm.efRo9vQs1fbXgMLa3pdfUr6cu6L2e+6e+fdMo4LHBcKmF.LHeAEg4avRHL3MW63IRJG1KL1Zqs9.99924gO7guazS97GArFytRVJ5AF2eXsqv3wi2VpTo9lJk5+IfV4FS7Dq.3QA1jRo1bpTo9NEqFHLk4U.be6YO6gZqsV5pqtvyyCOOO5pqtn1Zqk8rm8.5ygcEQ0teM0g6GyNcCV7uu95iZpoF777ngFZfd5oGPaaBSULA9i4Ix03qndreF366+kQOlaIl9ffIctFva6448SiBdEQdUf2F3ZF9BFCrDzZD7KGl7Yde6SCz3t10t9X6bm6rQzBdmqjtxJA936bm6r9csqc8w.ZToTe5nTaPISlb0Q4y2gatgYsfFqpppXyady.vvCOL81au.LJEff32pJ.vBRXuvXGczA.ze+8C5ccr7VasU.3nG8nf9LpWTXvq4bO+K.9h.qq81a+tN7gOblXSsuuOCN3fzc2cKaYKao5ppppONPK999esRXBpp.RDLvdG6XGY9ff+u4yR.TUvteSlL4piGOdag7Di0BDOnrDv8jSNI.mejQF4LO9i+3CCbBfyb674.aZWWIvCzd6sSiM1HPFA.FE3ciJAfL6t+r.iFH.PiM1Hs2d6fwNbhfEDiCrn5qu9X6cu6kAGbPpqt5tguTc0UGCN3fr28tWpu95ig9cuHQCqwiGuMyw88roRk5Yixi6ygaNgo+dU.2afP3.7DOwS.ZsB+lEhf3NA.tEAlEg+xnE.HwF23FAfCcnCAf.bGYcuzn2QVICy4d9o.p+vG9vbnCcHZqsYNeSKszBadyal8u+8yDSLAn2Y9cWtNWZkRsVOOu+9ToR82366+MRkJ02IVrXeqP34tJxw6IlE+eWf+UfWBneQjWNQhDe+RkyalgQsiq.XYaaaaCPuqif1CQjSEkB.Ih7V.u6jSNICO7v.fobrLfUDl1gxTSM0PhHmB376XG63xM2by.voN0o3odpmJy26odpmhScpSA.M2byricriKCbdhfiBwxHD+rn0DWq.e1RTXaGtECFuQpQ.Y6ae6.v3iOdvt+eaf2oPNNLm..yOjqLqzzE32adijISt5Xwh8s7779IoRk5uCXS.qtppphFarQFe7wYjQFALVjdfVALB.DCXE999esRY2AlIUtOf524N2YlE96omdvySO7wyyiZpoF13F2H6YO6IPCDWCHcIravIARYTsNc1YmY9ff+u4ylF833lA9R.eglZpou.PKJk5STp6LxjHMtLjQyJ.DrKvECjNQhD6022eGSO8zemxzt+y03qPYL2bAkR0LvJppppxLVvnEJ.deiZ5iLXd9iYyaas0FUUUU.rBS4KzP73w+I.mD3jG+3G+Jqe8qmN5ni.gN.zBfzQGcv5W+543G+3WI36GEBCdyhQf5PkCl4zpG3CsyctyL22XbroPu6++oB4Y4D.n.gU1Yxdh1znc4Bag.RQQlAnxFFCt6KBrAfu.57.8cjk5+AfbHTPbfOAv58882bwt6.yjJ2MvcZOoWfTmAXxIm7JCLv.S7jO4Sdw0u90OJ5IAOewvoQngyAb9m3IdBFe7wY6ae6D3E.ae6amwGe7.0ccUzSH1RUUU0p5t6tW5wN1wtiMu4Me+.UWpFFmorLFvGDX84.XL5l6BntzoS+UKENlOHOiCCswbyFLigpF3tCz1D.G6XGCzFG26G01+f44eQfOvvK.XJO2MP0U3cBGowUkaFLBTGprvr6+5ARXa7eOyy7L.7G.NSgZLrNA.JPXl34sAFxyy6C7779.zYaoeeV2aHJxL.U1vDfgpam6bmKOXwOee+fyakMu4Mm4dF0tSs0VKVeWOzmSTQaLflIUVLPly6ExnBbaLBv+BZ0g+OC7KSjHQQEW.Lpd8U.9siLxHSzRKsDrae.8N+aokVBDz4N.VwN24NuiIlXBZt4lo4lald5om2G3hgzhhWE3C5s2dyTN1912dvtN+nJkpor0zPTYfV4YbXnMlq.vcArj7H.vMLnHrgY7zjjaA.VBPMg4NgMB2sFf0zTSMcGCN3fbnCcnLuCBZ6e3PG5PL3fCRSM0zhC99QnqIVQMBTGpbvLOyGFiM3DXTxFWhUALrHxupPedNA.JPL0TSMjmm2OF3W.Lf45eUD4kQeNvA26W3448iucwPvLKf5W.eUefw7771ehDI9V999e8RoMX5om9.F089pFirKUfW.73O9iGr3Os2d6dm7jmjcu6cyt28tYMqYMb7ie7yCbBQjiWptEl4Lk+v.UUWc0Qv4.CYNBhZ.d3fyfMpMPq7LNrrLlyrvZU.wZngFxbey4eeQfqVlF2OAvECN2c.LkmX.KMr1IrwK.Z.395ryNWRf.GMzPC7jO4Sl468jO4SFvOG6XGiN6rykf9XypILDBLPXRS4YsjaiKLtRoVafAv5rGfaOgkG3bG4v3+dWztC6OufefJkRtU5xyyaqhHGWDQYCQDkHxq444s0ntLrnEsn0rnEsn0LW2KDpqeaQj9EQF0T+T0We8JkRoFarwBpyJQD0PCMjRoTp5qud66eMQjSHhbfhsrEKVr+TQjCKhj9fG7fYZu2291mJnOvv0kEQdMQjmWD46EVsEl96ejHxqJh7NhHePP6vK8RuzLJKlxvaHh77gw3.Sc+4EQFq95qWM1XioxF6ZW6Jf6AEQ1mHxOzzleYQjKUps+y2wgQ4kou3X44cuS3448sKSkiusocMWkiiEVyArnEsn0Hhb.QjSr6cu6zV80Jatsu2t10tT6d26NcXzuaF+c.y6eupos+DhHWLG7eQymcLy28vhHGHVrX+okqwGkqqfw845pRW1h55sY9nK9XO1iko++fG7fAiAd046X+a4BDPFjucjVVLDpbsKmHJN3+SRkJ08i1FCdHfUlkk9Cjyy++R.mAsKSMRwlSpAsJm888CNO96eiabiTas0x1291CT6Js2d6bricr6bjQF4gQKc5alJUp6Id73+CgPfYYEnUsa0lq6nyN6jsu8sSe80GM2byb7iebPql922bc4RjSfLm01CATae80G0VasbzidTNzgNTfA2vd26do+96mie7iuVfKf9HIVsI5ThmmWi.mIJBNPUHsLkOsFVHZIJrv4H+A4jPSU3SM0TCEKVrekRotu+5+5+ZezGE1UQeLHYGK.NCvEdlm4YtSzGGxaJh7qJkfgkI.T8YQ+N0b4RuKE8X0.bMfgC6fAVkDV4fgUhwMgs93T.S544claWyKCliipNfkZaOVl4hl.Xj40t+4VvHAnHxoUJUJPGLVZqs1nu9xzWWVD.nb.qA60AbunWDLyht1F.XVV+Onm.5rnOm3+oR4kAyjfuhRoVwHiLxxZokVVVvYvGXS.A7N7vCy92+9uym4YdlONPU999wiGONEK+VgC3OEvJ1xV1RPfegN5ni.WdI.KFc.64d.9PJkZIkRjXyx6GV4N24NyTW27l2LiLxHrwMtwY3QDqYMqYIlx4UXlSLsHrhSANbqEld5oOPrXwB79g.7fbi4lhgQmHjhCjVD4Xy2Iiyh25QO9aU999y5h+Awiirvh777VEvHQYjorbgBTfna6D5I.VG+yGoolZJybO80WeAa.5sAN27sNeqpM.bk7c+n1RnKGHqA6eAtdX+MSDexdwubHTv8BzDvpMKfVRvbd7uBvubjQF47qe8qmFZng.KgmwGeb.sQBFDrTPaY9eJytnm2vJpG9QapolVwIO4IY+6e+r28tWV9xWN81au9f1c75t6tyX3ic2c2IppppVEvWPoT+YEaLY216GBDvBHisGroMsoYTu6t6tw78u+fuafepeaFx2N8KmykrBx+lWB8MAL8zSe.ee+c366uiDIR7cANM2nQXd5DIR7c8882pwkPOvsSK.UoQ1BDYaTzVWKhRznmuYEFaQpNfZyQX+8x.CWLQfya4D.vXoyuOZiNxFWjxfaHUNvrMXO.12KPnfCcnCk4d6bm6rVf5TJ0GILLHnomd5uiHxyAzOvudjQF4CLtcBKe4Kmlat4L9IeKszRPfRYU.e3RvH3VbUUU0RO1wNFm5TmhZpoFdlm4YtBZ2K7J0UWcbzidTxNB8M7vCSUUU0ciN4774Jl5uxx6GZokVx9iu.P5r40DQ57BhHiFiFyG3R2NHXpoNbU.astE3MDKVoT2et+kgKTJUMnGaj4dVkmqFkbWtLBSy7XmG3zdddWKv.XsuBPt9LOOuqgVPkyFUyIZabhQwy+lYTtq6lMCUWdB6uuMvHEilVukS..yKYmGX3MsoM8AdddpMsoME3RdEkem6Pggomd5CjHQh+S.GA8jKYvwO9wmQzAzbFUKlqmvfJFboImbxys5Uu5I2zl1zEmbxIOMvQAdKfEOa4I.iaw7gHZxS.oAdmAFX.rsD2t5pKpqt5xnYDyQibAfQucPvTSc3R.SmCKveY.KtLMgXM.KKGdhPYQXqzoS2muu+VSjHwWOQhDecee+sF1m4rQPidPKnwOG3WA7qA92P2GjMtj4y90lu6OGsfIEs8+jOX4oK+MoRk5uKUpT+MQc3HtPDHpbHzSkntW.g82SUz4eiJskMVLWFq.9EEQ98hHm07uuX4xJji5KaqOVDIUfEFejibDkRoTaXCaXFVcrRMCKgO358DQ5OLZSLkmumwZ7+QhHcKh75Y4E.yvxnst+71xTCtLVA8OTD4ELWGvTNd07YE1439uRwvug6W1tcWoTpG6wdLkHhuYL2nY+4AdJfkWZ76EQ1WkdLUXbYFGzsHxj1Vg7V25VC7.imOpsDaKKg9xacqaM69kIEQ591MqA21J2Mi+OQNFmeBQjuWrXw9SiRKh2TF9gFus4Zx081n2PD4GFks84wqHBthbOenRU2Es2E8V184g07K2xYDfV9l6pAZ.su+NM.Jk5cSlL4puU+r2lZpoFJd738366GG8NHeXf6LPUzlztJv0O+eytM8AdSzF.36Jh7ZlPYZIASt.3gQG8oRZ34Nx960TSMk4+aE1bKZ6xHc5z8kLYxLRxaLHwsnTpOy73wTT4mdi2OLFvGbnCcnLs86YO6gd6sWA8Xuo.s5+CRYwAAlCqHk33hHG6FH3VPX1U56CLV+82+cEb+latYNvANvcBTcTavYlm+x.tS6Xxfw9WFC38uU+8+rgc8IVrXmPoTaHGeszhHmHps9cqPQbil4m.HgwaWd6nr+2T25a1zxTT12WIp6gYX+MW3Vti.vJi3UmuueLyYdGCsARbaS7vNc5z8kHQh+JzQXuoBNWYqy57C.xn1ciPAmF3m6448+kuueGgQro27x1xAdvAGbvUrksrkZapolVNFuRH.s1Zqy3bgMpmZbfyWJpiapolZnfKHy4PWn4IfT.SVLBfXcTSm9YdlmIi.MM1XiAQ7sXnyBiyH3.E.qHkWBziWus.FgYN2jSNYl9aq55cqBAiNc1f44eu171We8YmLhtsPXq4.UxbAQPnHN6MOFG3tTkAucwdNgruhRdM0s6hxXcOLC6u4B2xI.fAKkazeeS.bGkiAfkYjDXQYYo+o.7yJ8+Bv4DQ9UQvt.RBjrkVZg8u+8ywN1wlgQI566S+82elc+1QGcv.CLPJfSJhbhHv3nJz7Dv4ANWwJ.hQx5S.b91ZqsYXji1sAAtAo84yYEpfqQUlLNtxALt114.tncJ40jbjtWkR0PTZG.Fs+cu0UWcYmJhuHvaWJtd2sBPpf4BBCVA4P6eND9HrC6u4B2pJ.vk3Fk3ME2l3FfYgoAlJKe8eTfKmk5+GG3bQzDfiA7dMzPCrsssM5qu9tAWb6nG8nrm8rGpolZn2d68C.9M.+lv3HHrw7HOALA5vA7qTrBfjNc597771OvubxIm7bqe8qOS8O.CO7vzUWcQiM1HO4S9jy3yrJWwucwRoMskmA3s6s2dyLNvL9rVhFitDHyDhq.nV6TQrkkPela2T+e1nRmKHLBydm4wCLt7sgy+lAl51E3FCBUoAtPXW2Mg825IrB6u4BQkAaDUWURiPoRbYL.jAEQFWzgV1QDc3A9kMF.4kMF72KKh78hhxfIDv9bFCMZxrM3Nq+9phHmRzFnYnENfySYJvPPeKqwAAiEdKIDMJTiwG0snC0wyn9aUueOQjwDKi1zzm8x2tXbpY0d7BhHWNvX.GZngBpyudTMNzX.butXE5qMF+2kEQdgaGC6syR6+ADKiisbT2My89iDQFaCaXCp.X5CtnHxyc617u4n9WVV6whq+PXE1ey00sbFAnw.49w999oANE5iC3R.mMJb4kJMRjHw20XDdui4VSJhbJk1WnOKZ0yeYQjeeXua6.L8zSef3wieZiDoq.cvt4AwbVrFbdf+aXLJkxfwH8crhVh2O5wAf0XgvpLDXLhlr61JPaSDA7cMz1jvXnOKvZMe1zniWEiDU8KUJXzLxWFXU81auObPD4r0VakAFXfZvjDbhf2EqAnlVasUZrwFou95KX2+uIvP2NF9WyEx1X3Jyy4UEVFf43iOdPev4.F81s4esQEZsmoyQX+8b.CEFZ68VNA.fbaMn2tNvyTu1QE5k8LHnMGfXwh8sTJ0hPuXWbzp.aDQjWY5om96TIJSQc6i4490C96rUoe.uKDFSBPhDI99oRkZE.Ke6ae6q3Tm5Tr6cuaFXfAlNJ3ypcc5.igx3oEmC30KZ+f9VXTtGeYNZmEADOqieLMvaUJVi9sJnbs1iwial.XjMsoMsTzFenOv6A7aDQ9WBCdukT.f.b67DrYialpqhHupRo9iQuy2617uumnSeuUDTtaexGe2L0OEkv3Rl+yJkZIiLxHOrmmWsnCJIi.LQX2Nj0DhIQaHZiC7aEQ9mWnr6+JILtF60.tZyM27RgL6H8cnLYCB2rfxw64FgrA848WMZsM9dhH+KEaNNIabKs..NTYfYhf2A32444c2nU+86rPZB.GlQhx47nEDbJfykHQhueTvmYBw+Rt9QeMlHxuJrlLzgBBmGXnku7kuZzwXiQQKDVQarsNjaXq0wnRCmhRojv7A5vBCjLYxUalLdY.WLQhDee2D.N3vs2vX2M+4nyUIwQKD1q3DB6VS3D.vAGbvAGlWnRaSRNDNvI.fCN3fCN3vBPbqZf.xAGbvAGbvgR.kjQ.lOWgpbhJgaWkun5V4r9mqxPkRcbkq9frqyYGw4rMBwJ0Xgnh24ptGfxUavMCi+tYX9GGbnRgvX7+79H.LYisOM5fuRUb8rw2j.mMJsJ2jISt5zoS+UU53A9ciNPLDDWpmD3LgY.fIG79Q45A5kEy0qLWDWV...H.jDQAQk6WEc.gX7f.xSXOYzrTF.SdPGcfm4LkCCxyp7rVzFDzhLkgPuOvJf+rRzi4BxCDYqAKeLI.nnnb.4reHn73y0CJPmOr3ddT2CPj0FjkAfUM5DBUv6.WF83uyGUABJKCOckne++NP2NDTeeWmAo4vsqHq4bqA87AAi+uDZWDbds9SAqA.yKeeCf0B7QQ+Bn8uOMvXJk5i5440bhDI9tg4hPlIe9K.dHzojwpQuniM+C666GOYxjuYXwsg2sgtd+gQuvatl7cZfIUJ0GOUpTqMVrX+ygluZpKC+uYJCO.4NYHA5Ig+CoRk5A8779cQof.lIhaFcZBt5faCbpvrOHYxjq122+qA7H.MRgMl8ZnGKPDLVHXLXcnq2YOV3p.m222+9hEK1pJkw.l59lA9rnq6KZN9I1HEvPgQaf069qF8692CWW3SabUf2y22e0ddd+4g4b.lMd7uC3ii98v6LquRZfwUJ0Z7779zIRjXuNMB3vsKvD70ZBXMnE.dY.1adWALgRo9noRkpgjIS9WUHi+KHa.vLAvtQOQzizTSMcec2c2wGczQw22mQGcT5t6ti2TSMce.eFfOapTo1cXk.TrVDX8UUUUM0ZqsduO0S8TKZvAGLSFYyjelWMgXJA1h2VppppdnsrksbWc2c2dYwKm7jmjt6t6Xs2d60B7o.9STJ0WIVrXaIDKCqqppp5g2xV1RMc1YmIxtLb3CeX14N24RppppZD3QA9LoRk5aDEIgFSRYYs.MuksrkpsJGIPuPUn0GjcN31tNOKWKBXU.2eXUNrDD7QAVW6s2dsc2c2dAuC366yfCNHc1YmKtolZZU.eRkR8nkR6uoree.qx22eQEXc2tun9RsMHq28+hUUUUqryN6bwYO9KntWUUUsRfuHg3b.lE+eLyycMO0S8T2oM+Vy+bunET7ymJUpu4sKIfIGVXCyh+eQfu.vGeKaYK20gO7gE62+5t6tEy5O+wne26+XAM9uPRX.lDuxfhHSuqcsK0rgcsqcoDQ7EQFLrRBJlDivKHhbwYiaSRR3XgQRRPoxjzMNrHx0l0JsENxQNhp95qWYRLLkbBJwptegBg+wFarfjywTQQhnwJgf7NhHpwFarYveX2GXRDQGKHwCUnvjfXdwvHIoXFG7bljuj5HG4HEB+WpT6+sS5NyqJuZFImmeVoTFrd22+oe5mtf39oe5mNXNfiUpIFHSavyKhLV80W+MLdKaru8suf58qEUIkH2k6pbcYMe6Y2vF1v7Y7+qKhru454OmZ.HYxjqVoU8vGq0Va0yD5G4nG8nzbyMimmGM2byYxU56cu6kVasUA3ioTplL6VLLPZfzAoe0N5nCpolZx02KWpFuTvhvRsy80WeY31yyCOOOZngFxj5WaokVBZKpE3i666u4PXmHoAREjxcat4lmA+0TSMDDezqs1Z4PG5PzTSMsHf0pTp0Fl6DJc5zeUzp.+96t6tyjipyBgcevM77Bp6445Z.mF3rgQzIzbt2eBfUL3fCRKszBfdrvF23FmQ+PGczQP5Q8J.SUJ7a9smG3zdddWaNpyA4IbfLwn8oPe1fEELu6uVf0zd6sKlzPJiO93zQGcLCt6niNX7wGGPmtRau81EzZjakkx3OSa+CAT6QO5QyLdKH0SGztG7921291YKaYKfVSTqNDm+wAGpTnJfk0e+8C.6d26lFZngYLui83+ctycB5in79ly28lSIDz6.30rSAmJkRUc0UGHk+DhH9UWc0Y9LqceDJRgajBJHs3NlHxUDqzQa.B3Lj0.vyKhL9K8RuTPcNX2kmwjFHOk4uUG7fGLaIwtZXnE.Sc+UEQNunSGsmWDYHiTdugnS6rpst0slg+ibjiDTV6OrRUnV6H8BAoCT65bTzGXz.vqkm95KJ5TT7wMWGyzNcXIjRQpl5b+hHor2Arkj1WQzoe32Pzop4yaFaDJomYqT+5gM0siYtBpyCYz1yLZeLiUOqTBooTC2+rr05gQCSJQmBj+8l5rxNskZM9qn0.g489mWD4x1ZdzJkndIilntrHh5kdoWRoTZsfIQbpIdQKZQqI3JJd92rye9JSl0K9glqHMkfWNpOhNET+CEQ9gddde6xc8wTF5VD4rVi6mRD4OXd26sLqCqBf05uu7b8tmnT42K.Lm+2+Qf+GZs0Vu6.IP5pqtXG6XG.7uA76PmZXenN6ryfLzEabiajAFXfw.9+MQhD+mJUCxwxPjVNZiu5AAd.ee+LeGOOOPGWp++NLL.OKqNtYzmCsO5Xe8aCLpHxwT5cHsVfOeUUU0cNwDS..CO7vrl0rF.9EhH+vR0XvrREsf1XqlPD4DF9ePfOOvxxQ6wQDQ9AkZ6goL7MQeNr0exSdRpolZnwFajf5rEmgVef47e+O.7v4nt8l.+BzV+5D.mSD4zwhEKzL7OOOuNA9SqppppOndN93iyxW9xA3h.+Ff2BceBnMNtzhHmJL8FDaI4CNSekRsJkR8U.9Rs2d62gYW+bzidTV+5WO.+ZQj+KEaFZzz1++NvmNGs8iC7xnS9O0gdbQs4368qDQ96JlwBF6t3+SfufslWZt4l43G+3e.vuD86hqB3yzZqslLXNpvd9mrJS1of5PO8SeyL+YCiko+kTJ0mC8bjO.ZKTeZzuW7aBaCBub.q0a9T.eDzd6xDnGu81hHuR73w+4ki5kmm2yh1XquezZC9blqqh1Ne9b.KoXl6eVsnZyDM0BbWAo+Q.LujcEfgQOAPbf55u+9uirD.3t.p07bJoFJ6zhqwUH9PnGrEYXpolZnjIS98M78Q.tnmm2OM6WzLKR7PSN4jYrL4Farwf+a1VqbQUN.95ISlb01FzkRoVk4+FiYZQn1vOO2edAip++X.q5odpmhFarQ18t2MSN4jgwiuXwxQ+B5kTJ0jneA8DnELnjgYQ2kCbOczQGYt+92+9C9uWDs039QQ+x3jXhM5g8jCY8rFBzKPi98y6vNmgaJeWA3shGO9OoDodZPKzSdNtmbhfiCH32WLvL9dI.YV7Gfie7iC5zh5PIRj36ZLRwFGXfAVYv2Irm+AtAORoAzGMUn64K2rxuMrbIzOL54gWI5whR6s2N6d26l0u90eG.mqTa+ykvu4CgUbvvx.bevAGbvp26d2K81au2K520GWoTexToR8m4448NQkauFfDIR78MBYsViF2eU.LBBtJfkXT6OvLd2KkHxomsmcg3RUKEHQyM2blabpScJPOgWUn286c.b0ScpSE3S9X99IL+9PClzP54HjVXqP3CHu6fxL3LNkgLq3zSOc8Y4S32I5126EXIly9DffyDJE5XSvrNHXtP73waSosCjGrolZx6IdhmfgGdXdlm4YJkGaXfkg1sv.sav79Jk5ASkJ0GMd73+Ck5KklIApFXo4P.XPKQ98a8SlB3cUJ0JRkJ0ZSlLYjFOFT53wwGtppph1Z65G08ANvA.cJD87kB+hHmVoTiCb08u+8u3.a.n81amd6s2ZQq0oGF8XwZau81y7aMBgbUJ8we4yNktpHxYM++Kx00.CPzL+S1djh41I777ZD3sCKAMtYk+rhAF0iddn6EHYSM0DaaaaKiFfMXITBa.JOw.iY0t070aCNEvjdddkZbv3NAVRKszRfM0PWc0kr+8u+693G+32MZaS4c888eXOOu+BIhhALlmWlmokm47H.OX6s2dPZYFHSJZ9J.iOm1fzrc9.lyecPIqy+2b9Bef4L3lxbVrWNOmCwfg04AmU4JemKbnc9yyixR+hHorOCTqxSnT+MmEzALm48TlmsRDQst0sN09129xvq04udJQjCTJmakEu+d6yBdcqacY3OJ6CLsuGOadBNuWkReluuzK8R1mM86Hh77kpM.X39Uy9Lvqt5pU0We8yv9GFZngT6ae6K3r2urHxqDUm+rRMC6w3p119g04D9JgQefns+jYz2a4oIYtdrG6wxXgxVi+98RAXIxyQ6+M3AHlm8HhH6yZ74Yr+dV1APnM+i87g4n7D5yycyB+lwZ6SD4EMy+LgHhp5pqVsqcsqYr1fRoeWv3IHSHh77Ey7Oy17cE30TleaQM+mk8mLwS+zOcNqi6ZW6x1tvlvv2KJhruvxtqxS4ZeAyIl8ZNVu68FEx6dEh..2vjuAMxAFEkw0+x2hAG+1UA.rbOr2Sxxk3LSD6Khb3PzXzdQYVbIrfAkl1gIkPvM3Ls0+LQjqEXHVVKxb4ntOvdQ3BAVu.7NhHcWJB+juw+qacqaVKClEGurHxgipwhFis53RVBma39BhHOWXXvRVBZLQvDN4yMHOxQNhsfASJgiaP9JYK.lQ3yKKFi8TzBfek.CSM.g87OKzD.vx.TeYy6SWSDQsgMrgav3eUJsgwtgMrAaCz8UkhTH3BY9t4BRI5Jvh1..eUScQsgMrgYrQq.bvCdP6580LsUurDRFhr8k07wSMKK9+GDQdtBg6BQ.f7sPagduPeA4aFD.vL.sawryiregvDK.NuHxOJDmHdNE.vZB3QKzAAEPc77UWc0YDvwH06XlA5QZefsmGDrKeSaqRL6Bwd2mJ0LdQnj7Bk7MNangFRcvCdvLR+GrSn.L1XiE7YiHknFXx0kYW.+PQjyWe80OCdM06gjRXm24n8+4M82pcsqckWeQdrwFyV.zIBIA.dAQjqjGOv3Bl2+tnX4E.AHhFK1uHRpr3IkDhdayMC7asC7WWDIc0UWs5oe5m9F56yRya9lwIuloeqn8BfaFD.vxK.dAScZLScT8XO1icCi2FarwTO8S+zAu6m1z1EZu+a8d+6X+deP+fbcOyof09YII.PfzPygF.tsS..qfyvH1sCAvzdLsDhAhmYSkXYuqLqIHOdor.nYv+qaO4pUfd50D8QLjq9fSTJ7li589D8NAOqQvl.Wv7ML2yWx8NgmTJgcBmuwYVurcQSY4BYONvnBzqTpKBlqKqEBRmmEF+Yg06.lw.uV1KvZq9yfEGBfk.XmnTDDwZL+H1BflK9O3AO3Mnl1vd9.qIfeCwraXy+9FRI3tk2Lxu0BvWIaM9jC0eeIQebO+LQjeTX3tbYUWSYOeWAdkJrZWrbuwejoNNjoNm2iAw7NvUjPJXjkUex0xyQ9NpHxKLeFuWJGAvkLWWyLA3Exy261pi.vZf4uO6I8UpYLI7aHg7t+xxmvGzr37YBdAIG9pcQu.n0Yfcw.UMYYWGAp45R4oOXRIDUAV19iqHx2yyyaqlwAGvzV3aqRLqEoKZ+POei+Mp66JlEgC5Otr8QCX8R4b5Kty2KSawaHYcrSlx03RIdzGY0t+bhHWvtsMe6.29cgst0sFHfTIcTDl9fCKhb4r0zS1H6ilIJl+w5cvWzLF+ECqw42LwucLfvFYa6GhdWwGSD44Ba+j2rna+h1W2mTz6nuPtlz7a5OLiDpVBB7bl57X1sE4wFvJoHwYVsGaULGIls.GFMhdEoHNxwRwH.eGSmygM+6LTG7siFAXVpEaFAdGkZFSL9VhH+nnzPPVzhVzZrLNmWQD4Z4YAnhZ.n4Y+x1KxXcNWy3JG8AARfWzFgSQzmb17TVJ5we1i+sW3wpOdeVZnXj7venEVjspucKhLt8Yda89Vno8k7EHfLS3bofEeLyAbIa0RFlB.IZAddEQjKWc0Uq12912LlO5fG7fp5qudkcvHyh+WMJlOnRGHdhZ9mKM.r0st0r0.vPxBTM.r0st0xhF.JDihcd+LmMODPztuykgLt9G.zTSMAZ2d6O3448cQGbDhYtOY88upThtg1MCvx0KVOvGu81a21evsCNRuMvuvyyqjcCs7golZpglZpoFJc5z8466uCzAjo2y3ez.yvuoWh55wKf4KVDPF++t+96OmIdFajUxYJTSHO4BFWj4hj+PdaQGVhMiauJ.G6XGK6O9p.WYpolZHQ6NZWM6ufAETB2pPgk+IWicrIv3lRSiNE.+SCCtT4wO7GYjQ.c.w5sRjHwdQG2EF0bex56WJi+.z9AMvf.+KSN4jmdG6XGSsl0rlLgB0G+webFYjQHGtpL.W51g4eJ2v39XmEX30u90OcM0TC6YO6gwGebZrwFY+6e+LwDSvgO7go81aeInC8xOJvWVoTaNUpTOqmm2yVrgAZy376FXkyij.V1y+rRf6sXm+IYxjq1yy6YSkJ0ypTpMC7kM0wFau81WxgO7gYhIlf8u+8SiM1HiO93YBQ0qe8qeZzwImPIbjag7EWMlPD4FljZtvrN4jofeIfT1S.1PCM.Z+qM3k6p.Vl49.YlvLHOEeKMxZw+Gt81aOiegB2vh+uhmm2+4JPT4JeABnXkvybRz8g2rikQ9826ht7aF+OIYM92fECrLS7x+9I2oGWHjiWE999eYzAeExQvIZLfyExS3THietBQXb4XpolZnDIR78EQddf9A5C3+OfifNRLdVPG7eBfIVMbYf2OLaOhGOdaddd+fToR82jJUp+tToR823448CJW4bfxE+l178B7p.+hImbxy9jO4SlZ4Ke4rwMtwLwd91ZqMNzgND999zYmcJs1Zq0hN1b7mfNij9WFlkqxILk8OC55xGu0Vas1N6rSw22mCcnCkI1azSO8vF23FY4Ke47jO4SlZxIm7rniPoupmmWOgUbAvHH6E3FEBvGc.HadKnagr6jIAtfUvOI3Es6DXMJcN5dM.2YNdA7BTHAif4ArRPI4Kv6DWEhI.mrB5B2vh+aaaaKXw+ygdxnyE76BK9877dVOOu+QOOuehmm2OHVrXeqXwhskXwhskfnPHv8zZqsl42M7vCG7ey2NSmUX5yNGvo777R6MKIgFaXc+zDBIjm7U+iGOdal5+O.ch549rCDMASPAbgRbGf2v3eS678BznYrQ8.2isFvLIDH.tbXsCTyXpUB7gZu81ynYlgGd3fckeVQjSExAhjqFvQ.pqt5.cDR7iXBWpOHv8ZtOY88Kpwe1HHTXqzga1EiNAI86MWAQiQriFhl2QeWfQCyvwrIR784A1H5zy5FA97999esnN8CWt4OPH.Qj+QfeJvOC3eafAF38e7G+wyjDxB5q2912N82e+L5nixS8TO0RPOtnthobMeSDV43pjRHXlxbc.O3S8TO0RFczQo+96OSfNZ3gGlcu6cSM0TCO9i+3Lv.C79n0D6OC3mJh7OlHQh8FlaDzTOFE3cyZ92yCLZQMO6bcFAhkU.WoRFPJ0MX.bulXL7nbbVHWz74gRBgwT+OljkQlMzPCY6NZWUzFC0qKZiFaPQaWD+vRgeqyWNeIBnW2bVzWK6yoMLrB87jHZBRBMmXV5CBEi.LG0+IjqmDLdcSY3rh1iKxkW.LgThFDmX4IDA1AfkAFdYwxXHscETi2RbYoHCDJ45xNlHXykwf6BkDOUN5+uAqN1xVWxqWPX9NWKLNCTSevKa357ly67MLi8uR1baF6mRBQugvp8XAga.lqKqyBuaQaSFukYb2MDLxLkqqIkPbPYNl+IeWgRBAKeoB98su8YGDztpoM3UDQ5NrMBxb09aZ6OqLS6c3rE67byo..V9A7ErM5nibjijogXcqacyXwGiwhcAIDhFaVU7b5BbYMfy9pjhDTV79bhHSZu3uUfvY1tRalnpn8EeKKweribjind5m9oUqacqy13aThnCPE1s+Y4O3GHLZ+sM7PyXhumo8MW8Aghgnkc8eW6ZWyHBDJx0iC.1K9as.cI4FjJ0L7E8KmcD2KetAmU6eIEI7x9RLFansv1JUFgwOSXzWmi1+CHh7VY6FdV967rEGDdqR48OqxvyIh7dA9bt83+MrgMLC2Szx3+FpT4N6qaRBDP4yHvhb9surL.4.ejeTwxG4M8CSDFqAjq4ex2UXYbjVq6MQVA3JeScMHVGDYQ8u7TlBUA.mSA.LC791lA9Sa+hdtfkehOXX4BF1SBOqjmEjRLPPX0f6Oe3M.qacqaZQaExEU6fYxuWPD4BEJmG4HGIPyDiEVBfkqq4XxnPwx2sp+WpPq+Y6IFgwB.hkVvxUj.yFiM1XAs+iGls+VwdhwrEDwRXmHwZ2szBvE2vF1vr5FdA0eyF.tjDBQBQqw.WbVIVUbQBs4y0MAB.7smEgtKqB.X2+3c8T.b+hVyLmWz6J8UEimxTtKWgwkbcsOdVSc5ML0wPwSGluW1QFybz+WTg96BxBkMYTrWC3+9y7LOSplatY5omdxj0gFe7womd5glatYdlm4YRC75.uVHjIxtY.WybUovX.uaM0TCaaaaid5oGN5QO5L9BCO7vzSO8PGczAqe8qmQFYj2EcZX8EiJiQTzmq8DnSOk1HMZKRMrr75w.FsgFZf8rm8Pe80mc1tBPm9a6pqtn4lalcricnvjlf8779GBiy+0XE5+Zfe2N1wN7yd7ePYX26d2r7kubFYjQFGcp3LJZ+SmiL+2X.iDOd7edHyEoSmtOQm8wN5.CLvEV9xWN6d269FFCZW+GXfAt.5TQ7qDFoDZz1gwDM2byzUWcMCtCl6IXrOZCB7W544s+vtsWttQXkqw7kpslLmPoM1z6rpppJy8hBaMY9folZpgld5o+N999+ulHQhcHh7iQau.uDvu7VwTAb.RjHw2EcJm9kPet9+3DIRrCee++8SO8zemJT85RbiF1bJfqTT8+yGI8LRD8xFIry12LSYt+KG1R8UjIFhv5H.B38ZEHug1Q.XI0W2h9bnG27byEeSa97iK5yipbDMDi7nRlYWWOunUm9kmi96yZjPNzCLJViEdk7L9OXWuugHxyGEs+RVwlby0nRHGvSxS+v2Vz6D+2apm4pOHHhv8Bg4NjLiAdAy6SWIG75aM1ORi+Fkiw7yB2+HQjwrOJVipoK4.tj65l+qnX7WAmBamZpoFJYxjeWSdI9yg1JnqBsaBMMZozeWIhxE5wiGuGiOmeFtdpgDtQOYHS5fDsOQWztgw7jWa9mF8NEdaOOueborSjzoS2W73wCb+qU.bWnc4sEy0a6uJZICGWhnTRY1vz17i888SCbJSY5R.mMLc8komd5CDOd7Sax83KGS54kq2ODT+mDsqvD5i+fLi+2aNF+m.ce9k.defyjHQhHIM.mHQhuepTotCf2Ccavz.iJhbhnVaaSO8zem.qwGsmHDzO3gt9eEzZhHzq+ViA1L5XfPUniQEdbcWM98h5w9kqw7yBpB3NCh2AiO93zau8BZu0Iz71AGt4DQw3OQoT4y+wmSjs6cTNF.lMmYGjGrcEhvr7LW7F07Oakknlu4B1kmntLLatTT4t9mqxR49cfaF5ysQkXNfxEu4qLTN3Nd73s466+M.Z8vG9vwaqs1Bh+HoA9W7779qq.wdDGpPHrF+URB.3fCN3fCQOLZe4YA9RiN5nKs1ZqkFZnAFYjQNMvOOQhD+UNM.3v7EE7Q.3fCN3fCUTbdfgV9xW9pQe7eiB7aEQdE2h+NTLvoA.GbvAGtE.liA3OGscPDGiMuDRdZgCK.gS..GbvAGtEBAm+qaW+NTpvI.fCN3fCN3vBPDpopTGbvAGbvAGt0.2RaDfUR2Oa5omt9ry9RUBUxUtbIpaFb+tBwULiR2vrRyegTlJGtd5rwQT9NYkxEfKjxQTy87ocMp5CpTteZgNFOJeWnXJCk60jJ6wAfJELFCyWCcfwIHXHbtRMn6LKbsYzA+D6.AT.tg.QSTZTNISlb0oSm9qpTpOJPsLyfQy0Lkiy6440SXzVLG0e6594EQ9UQQceVJC4RCV2PffpTaGpz7aiJX++8SVAdD6meg98Jwxvb09Gos8yQ4HR3d9ztFKVrsXBRUq.cfR58ANeoFNdix91Bj2f1aP29Ni45mkuWI2Ojmm83jU8ub0FY0GaGHxBF28ty20eJYM.TtCFPlF5c.rdzCzE.Ev4788qJd73DVM3V4e6GAnQl81qT.SnTp03448oSjHwdC61BKAedXz4p5p4FmDbJf2022+9iEK1pJkEjmG0+qgtt+PdddetvTPr4YeP1kog888IYxjuYw1WTo42Fl9++BfGhxe+eCb8IaNkuue7f5Ug98JgxvlA9rna+WTA7yB8194Q4Hsg6RpdawYA0tFKVrukRo9h.+QniXldnWT32Yhdie8ntLDlXVduSA71999KMdb8s7882FPK.eDzqG.gP+vrTFRCbZee+EmLYx2zTFhz1HSbfX2ne2e0.2MZWAM.SCL17c8m4sM.jLYxUGKVrukmm2eumm2+OoRk5uKUpT+ilqN8779IdddO6rox3RAlWB+j0UWc2uuuu366iuuuTWc0c+.eRee+MGVbaTw3C.znuuebCW2v0IO4Io6t6NQSM0z8hdPvmMUpTeyvrMvL4+1.ZEXcs2d601c2c6M5nilobL3fCRmc1YxlZpoUB7oTJ0FJkxPgT+MbtnlZpo6C8jis566us3wi2VXTuKz9fbbsHfUAb+4KpMdq.+Avp++Qoxz+mvvSBzSF9.A0qB86UBkg6CXU999KpRz1OOKGwQOAcIUus3bNaWMK9+m.7H0UWc22niNZLeee4jm7jUidGo0TriChx914Au1u2IUUUUqD3Ox22+O2W6VjqspppZUVqGDJ8C4qLL5niFGc8+imJUp+xzoS+kHBaiLK9+MA97.ellZpo6s6t6Nl83tt6t6Xl0e9L.e9Bd8m4ShCvjTN51jzMFKOIDkKZRbMcGQIjkWPD4p14eckRmexEQtpHxKDV7luTd6rAqzQ6wjRLWzGbYkPfNqHxLx+44CljDQQkinK15uUpoMzRGqESefUaPIkNnuYfe006+etf9+ibjiTHbGY8+AiuCR3QQYpgtRkJvKkxQXTuUEX6p46bXQjKTe80mIcMakVpGRJgDhV4HseOe3UoTpst0sFrNyKXttncJxNrJiyVYvjxqmPzIdsucT1FIyizQt05OuVgr9SAqA.iTlOFveBvmxrCj3m7jmbF6.Ym6bmKE3iC7E7882QXsSP.LRZce.I23F23L9LyemD39TJ0pBKN4FOye777lw0F23FyjhR2912Ns2d6fV5yUFFZAvHk6mYhumL...B.IQTPTk.XECN3fzVa5lzd5oGZngFlQ4vJ8fFVXVq+abiajd5oG.ns1ZiAGbPP2G8oBQswLm8A435Z.mF3rYarl2pwe18+szRK.Ut9+7b+B86Mufos67.m1yy6Z1sw1HB66myxQ1kECJo5cA7bRnTplUJ0eFvebUUU0xN5QOJ0VasL93iSKszBiLxHWDXXQjeUIpB5HousX40LW+RQOOy8ArzrWOXtdFkZYvjRtqFXkJk5iLK7TR7aV+b0.MtksrE1912NfN8aWSM0fmmG0TSMyX8msrks.ZsOr54b824gjPGVDYx5qu94bGHG4HGIPJj2QDo6vJMUJ5zQ7aUc0UmSdqt5pUhHukHx9BC9L06WKOR1cQQm5SOqHhZcqac4p9+yBoc+8hhHWcW6ZWY3vRRuKI5zj5aY9+AZC4rRIlhPmi5+kM8uWVDQYKAtorkVD4mER6BZ15CNgn0HUv0wDcJy8vRHjVfqz7a5+OrHx0r05koOtR1++ZYoAf476UhsAGvzN7ZhHWXV5OdsvpseNJGupn0z4Eip58bzt9FhH8K5zAcl4js14+kEQd4RMMQG08syWdCpmF9Oi4ZFeVXUFyWYH.Vq2Djt1C81Hi1EdcQjYncG45oB3ya92b84utLGZAXNE.vLn+4EQFyVESCMzPpG6wdrfFAkHhZCaXCpgFZnLcFl6e74pPTHWF0++bhHW5wdrGKmcHlbi8kJ0I9lqA.l50ILSFzsoSHWemACI0+7F4oCdLQKbv2SzBG87hHCZZyewH9k+2Pz4m7WLn9Gz2qTYd43TRIJLVAzG78hEK1ep80hVzhVSHmK5KX9C3NjE582ay+PCMT.+iJZUfVI5+KaB.DbYlC36YZ2ya+QX01OakCy7hyVYIpE.37hVEzyXgOyh+efHxKGFy6dyl..AaBxnB9qHhbkMrgMnTJkJ6iAHpD.HPM7lih3CDQ9YAyQGl7aFu+iDQFMnNpTyP3+iYV+4XhQv+.XZeFUD4GMauOLmGAfQ8iOLPs80WeTas0RWc0EqYMqgd6s2TSN4jmC3MAN+.CLfZMqYMYTAkQU3qBXEkppfMFRw8BrjN5niL2OP0G.Xt+R.tWywETNPbxuwT5WJOXSa1J.VQ6s2N0Vas.v92+9C9JugHxy666+08882QhDI1kHxOvrPvyGw4H9qYVX54ANAfuU4Jnu3d.VdTYPnyFpDwjgv1WvMsaUCbel2k.fCcnCE7eOgHx+0JT+ebkRs13wi2lRoVKkgXJxTSM0PhHm.sUXmKjVD4DQce+TSM0PoSmtu4nrD03dAp19Hg5niNXjQFIEvqAbLee+hxx+uYFAi8MyurXfEGrdP+82eYsLr6cua.tCzyQGUi+qB3trOhCS87R.uoHx+L50eujc8278uKfZmMiPbVKzlyOndfU9TO0SQiM1HG8nGkcric.ZegbDz9A9hQ+hPBfZehm3IX+6e+zQGcPu81a0.K2THJ5WL888+x.eH.17l2bl6u8sucN1wNFA2+we7GGfOjYRonDqD3Kg9rnVdqs1ZlOvbl3JfKIhb5hk.SaVM.KyVnGSG8EANW73w+4A22LwW4bguyEOd7edpTodTf2u+96u1fOXiabibfCbfkBTco12OKXk.ax22+KY9aefT999S544E59A9bwuuueFeAOL3eN5+u.vYqf8+108jl+1gxHxdw+d6sWEv+cfeShDI99UzBWDgQFYDFd3gwdAwMtwMxvCOLiLxHkkxv.CL.CO7vzXiMRc0UGiLxH2KvkCadLu+uTfDM2byYt+DSLAnm++8My+9oAt3DSLwRC9NlueByuOuXV0.fYQ2UArnm3IdBfLK9dYf2B8ts+j.qCXMnCLIYjPxzII.KUUBFlmYmP2Cv8XuP6QO5Q43G+3yPK.lO+dHDz5vbfkh1PKtuVas0LFBG.6cu6Ef2C3ODBFgzRAjFZngL23Tm5TfY.PkNgfX3+8.tnobA.Vk2RpueNvRQ6WreJy05.9znEL6yFltDZEj+an+2Hv6jnCzKjLYxUmqqRj2BobET2eHliIZbHbQmc1Y1K9CvuG3XkZf+4lcze+8mYw25pqNZrwFKa69O.AZ6znEfZPuVXnBy7lKAlw7ob7ieb.9.fKZ5muHvkL2mr99Kd1l+MuB.Xo94Lpermd5IPJqwQGrIdvctyctj.OAXzQGkN6rSlbxIAHiJqQuCghFFIgtGfpxwNglQmu4yqhqq0gPGY66uA7GXU1lNhyC7dkxKhlNtECj4kcff9fKitiuhCQjI.9ff9cXFk2RpuOenb6G3UB9yW+uoc9C.hmJUpuYpTo9aMwgitMW+ioRk5u0yy6GDldgS.ls5tCQO5ryNyXM3iO93AK9mF3skR2h+uoG1avLX8.qiEqrf.A.rVOJzE.vfD.zXiMl88upYdWLGE00r+Pqu+r5EB4U.fbo9QSibJzGcvCzYmcxd26dyPVs0VKae6aOvUvrQrruw7AJk5QPelWhspeB5Dr67sz5v8Z9ckETas0RCMzfsjW2Ev8DB6DKe8QWKX.vMA3bj+yBsj56cXVsujpQGQL+Rn07v535ZgnUfOuuu+WqRXCFNDcHXwePOuS2c2MnmStbbzmUbLv.C.nW7MXsof6UtvjSNIA1DmYCxERDprXP9l+zG87t1+8742CL2QBvkBDKXQMiJduFPMs2d6r8sucFe7woiN5Hi+v1QGcLC0UDFPo8yx6KPcOfVxWyNgSc7iebFe7wAHipg.VtRoZHJl7Kae.tgFZfd5oGZokVn+96mN6rSPuCvOZ5zo+pgM+NLm9gen6G32rwO52cuaxejoKzhHc2.wyRc2gxCri2CadyaN3nOaDXswhEaKUpxU4B8zSOzVasQKszxLN90xIB1.pIl.bKIx6ar4R8iVmwvhMm8Aae6aOPETiCLVu816LjPsTgYA76FnF6c+asq+XY82AZAnFyuKpvk.9c.u4HiLxG73O9imYf31291y7BoRoVaIJDR9jraQJkplR34FlX1rB1oiPduDv+Fvuwb8qA9U.+bfegmmWOQr5PKG7mu9eOlasqDCnlHxFLrq6+al+1gx.5pqtXSaZSrm8rmL2yL2yhAdXkR8n2tq0G6i8sbe9+Fjp2d6kwGebZqs1npppZt+EEGx27mdnm209umO+9Y8GMmedfPAVK9+K.9k.iatWn.i67sBfEaKok0B9dvLGDX9dKF3dhP2A7Lnmn++Bv+JvGDXnjVkgZnDrEAiGDbUXlt6nQCGKAXYEyyMrgQPj6z9k.qx6TQH0mA3vddd61yya2IRj3wSjHw+9DIR7+guu+ViXO.Hx4Oe8+l14Ei1P.OsmmW5xPDoKajotCbXye6PY.Fuvhm7IeRFd3gAlwQArBfOgIA.c6JlxdCel+eTNOStvkr3NvX.iBjBHiFtsPlM.ZN1mYbDDAiKB984CQgN6B0zKrRoZF84+OCCgp+96eFp7zd.g026dM+9n.oEQB7012D38rcCEi2RH.2UItCrKAnxgE1uLfpqzR5a4gFKKGdp.ThtB4bfzhHmHc5z8kNc59lZpoFJ3Jh3qRve95+WJ5I8FDsf2ueHxYgfL08Jr+vuPEuOvT1tDs0QArZt89n.FexIm7rdddS444M0jSN4YQuIzxItLvDFO9x1X.CMXuAf.WcGflZpIP+9+xLy+tLfkZtOvLl+8py17uyk..40rdC1Qhw.HpEclf6yfw9.BCXEHTV978YZ99kq.QyUHBLBNy4GOAvEywQbrLfUXqgCSlZbKwhE6aEOd71JC06.9+P.UmifUwkAd+H7bvusFyQ+eU.UKh7J.GiYZPPNDRH3cJOOumMVrXeqrdmZEXNlzbfn7nu.XLfgN9wOdtNJf6fauOJfKfVn29LWUBAfmB3cChKAM1XiX6h5gALu+OIPJaA.polZ.yF.My+VMvxL2GHi.CoXNNZt4R.fqBW2fSLRXH.SEH4SWc0ksP.2c6s2Nc0UWER8aNgUJ3bFABksssskSCPx9HBLe+kBb2QjqfEWoTMGKVruEZItuGaUfaoxlYUELyFL6j78ANu8wpXUO+XJk5q3448rdddOapTodZkR8+hRo9ez22++PDa.hKRoTeTkR8UPGoH8xwQz7t.iFg6HOSznK3pL5G7QNli9eOf0pTpMg9nlhJqP9lFjLYxUOGQcv3gfM2LCjJUp+RkNIn0lRo9JoRk5Y8775zjbz9D.2s4H4.lgpWiZUReMfSBblJ3QATod+KsHxqkHQhudhDI95hHuFkXTWsXJCnE59pQoV.PK.vExQT9ao.0qTpGEcv5ao4XCXW.X7YaCX4U..iZClDHUf5DLQWn6.3h81auzUWcQs0VKG5PGZFph2VckFTTKBZBDQ2G.4nxcMfgA9sl+8Z4nQBf6y7bBarRfujRo9eF3KBbW4XAvz.iWJp.2yy6eB8QLjJPR+Zqs1.OMnVC2eEf1A1Dvmcm6bmsfNevGpSFlEVI5LC4iBbuaYKaIiGZzUWcwjSNoOvoEQN1r7LBixvl7882avU4vO3Kmvp++ZAmyXiM1XPF+ZEnc2uMP9iDeQ8NQibDOd717779AoRk5ukYuttRfMDV88l2cVIvmpyN67iiNnG0FvelRo9KP69k0ZGk1LyAkFXxH7nu.8BdmG30AtbE5n.pTu+4CbNqia6bTYD.XLf2KP6bgowuCyHHq8GFXfAxroRq0YdXzy4+v12e7wGOvsH+CLWwhlBHQD7dAIh.qjPx6I5b9tZW6ZWYRBLiM1XYxRcVIDghJuja3+GJh7d1YZOqxvqKhrOSR4Xel+dFIjl0st0ETV+gESBBYNRDFYtpu95U1YpOkJSR43cJVtsuDqDBich+3fG7fA7jIYL8RuzKURs6y25+F1vFTG7fGLymYkDnJo7P97sOHGWSIlD1T4Hi3EkWl9+2H69+csqcMijwU1iAM2+UC6jgR108nrMxLOvAL8kSY2GOKiGBk9dybK+LQjTJkdtmst0sNi17G6wdrLIoKkJybNmWlijvRH09+sEcBIZPIqjAiUBC6LkxbPUp2+lOiohpwey0y0Lt7UEQlwbfgE+pqOF7EDQtrcxN5HG4HYFGVc0UOi4ELIonKKh7By07+yZ1.zL350rWX0jw87Ecld6ThIEjZcMsYwGeQmojNQwL.z7h+yKhbobjFTulHxgCpbyQJS8RhHOeILH7XYO.X1vXiMVPlX5xhH8GFKPXpeOmXD5JXQ9YCR3I.PAW+eoW5kBFC7GDQdtvHcrVL8AVsAWVD4Eih1.S87XkCA.L8+cKlTOcgz+aF6WPSBTp08nrMxJcXe44rROStK49d64UJDNMa9wWzBcURYhQUA1tZsQo2xddZkRuAAQjqJhb3RbQvx96eymwTQ03u454ZVe74DQlvNa8EV7GbYuNbPlHLevJMw+ZRAjMHmUa.vjPIFF3RAt3VWc0E0UWcBZ0+3g9bn9MnUE+uEcln52f1vL94n8G5ebQdNvSCbsbD9eOOv4BNaCy+dNfymivB70nHUCpnUg2DLGV373iON80WersssMV9xWNCLv.WDsgY8amd5oOPwvsMRmNceddd6Gs6F91aZSahN5nC5omdlg6gbzidT5pqtBNplQoDyEAER82lyMsoMAZ2A6e0yya+gga3Un8AQElE9SCLgDsp4USjt+++LZWscV6+2yd1C0TSM7jO4SNEva.LTw1OTn08xPaTE4XLLu67d.mugFZfcu6cSe802LZyGe7womd5gN5ni.2y6M.d8vHSLVHsqSM0TC4448iA9uA79YeT.aXCaHFkf8gTod+a9LlJpF+U.O2Sfd9tQrUQuEltT3O.l0g+0.++ydu6wFWW2266me6YFM1xxdHkjihb7CJRImF63bLEYURyiFWZxHjVf6EMzRPN.s3bBzCvhdvA2DPKE2SbAt9FYonap6A8fHIWghfzfDZonXbu4dRJMUYRbqZcnnhRcbTbjDkokrkrr3CMVOImY1q6erV6QqYqYHmY16YHE07EXigbO6Y+as9sd8a8a86wuqqt5R0d6seCA+n8t28RKszBc0UWJzwmleYQkPnJEoO714wniNpmptThHWTzpY5jlOOmQZzWQDYWAQMXhV0mG1HIomz0uqny044HUkQZser46cMO+kM+9xpbXIc8aHhjRld0d89hViGujiiyyD14kbyNR9tl5znhVaK9KCWyv+uAdTEr9Oggu+phHe6vXm+AnMHTUCrO5Oo4cOo4+C7w6TAZ+uho8+.Ac7WwV2qj7no5H.pzs8JU14UdIQeDb901o2kqo8XfvrOQovWMGGPuh9HOUVO6IDQ5obGSNSM9qTp6Up9eEy605nxOlO9SpvbNBqwAupoM1+X+zhds2CVJ7bQoTSoe6GOd7kmJUp+ZzF608ZmBJ28t2M6ae6Km3vbmc1Is2d6zUWc8d.+KwhE6qVtVAtg1eEfODZ2dZRf2UD4mmucVGIRj0qzVE4GDsTuIAdmfjcrhFMZGtttqEsFORP9CrJdtawH.mMVrXeqJkkuGOd7kmNc5mToTOHZi.zqL4hl+jD3bhH+hvP6CSS8OCZOEIIvnhHGLZzn+rvttOEkg7oAqrojWfPIk.aQ+6As02dIfyTER2v2.ll1+qhwqAbbb9ggQYqXq6URdTIz9G5s8Vz+KfNAnUG55mGs8n2XhHGKZzne+vr+eovW8M+2sad1yJhbvfLWvL03uRotWo5+ULuWeOiWFvKT6CBYG6+XJk5SgN1330V3wueuRcN3oU..HaEbin8y+6o6t61Kk2lWL1XiwhW7huBvO2ww4uMnL.aKYuXpXk5yWpkAP6hh9Uu9LQV3JeV4eknbLcdSP0ntmu1.+OicaRXWlpD8qBJlIZ+mp2ekjGMcs+Ux19BUFpzzKezc5nUkpMXlZ72rs5dgdu94OUy9DkK8JJA.frBA7k.9X.MlHQh3dYioVZokro92AGbPNvAN.O8S+ziB7yBhF.pgZnFpgZnFpgJCJZA.fbTI+xLWePzpEw+6XbzIHjALgJ2ZnFpgZnFpgZXVDJIA.7fQa.edzAhjEi97lrOGxQEQdsv97vpgZnFpgZnFpgvAkk..9Q05bHqgZnFpgZnFpgvAgh..0PMTC0PMTC0vMWnPIUiZnFpgZnFlkhYJuQX1.tUttG1njMBP6+el1U3pltcwrA2fyOlobAvoK6JNS4JPyjt.TkpbTNuqJsavNS3JVduyRg+WscANnx6JhSgO4G5w+.aTI3okJlop6EByF3IAEEkF.lp.AgqqqWVXJEPRGGmwEQNZkx..MA6h7FHDbbbdufFzK7ihHP.kB3pNNNihtC3OoR0AzWPf4tQ6AFdkmqYJGiCb1vnbThA.jrvzmvqMIzCFHNNNSUf3HuOS4.eAhpE.Loiiy4Kh.Q0ciNPTcIGGmxJPTUN0ovlOXp++Ena+WDPDy67T4KPC4q+hG+ZTfSWNAGKK52.5.vSDGGm7Fbu78rKBHiiiyE.FNHAlqRcLPX122OhGO9xccc+h.eBfl3Fm+dRfgbccId73uYXH7oO9+T1+uRBSces.eRz0c+g23znq6QCi59TUN7wSHH8wmowzJ.PQzoyOtnRo9XoRk5iEIRjdCqNJFF+lA9HnSykdSH4gL.ipTpU3337wiEK11CiA.kPc+p.umqq6G1ww4yG1cFLKt73.ODWexH+ZuQgIRU4551PjHQdfxk+WDC3JFDnIj7w+ajqKr2I8FnCvz8Lka6fYw+eefeOf4il+9dJkZgQhDAadqo84OEXknENU.tBvajJUpuR73wKZg.r38d86tMScZXWW2aKe0IKd0mD8jSwPKTXYy+SmN8ShNUi9nnGugob71ttt0EMZT7ID1FAZE3d45iMGA3+v7td1xf9s.7QAp2b6qALTpTots3wi+0mXhINg0bCqB8bC2t4YGGXQkCsg.OFHzWPxn0g6EnIWW27MWz7bbbd.fgMOafnoYgtUgdNm5P6kWmOe8+qzvTeVBvC355lu1gnNNNKG3sCi5d9fU+rV.dPzyI.5w4GKUpT2Y73wC75NUSLk6jCtwNctttTnqd6sWV+5W+chdQ5+HkR8DQhD4qEzBogw+WA7oA9CZt4l+.8zSOQrocO8zSjlat4O.5nU3mNUpT+USmZ6Cq59.CL.acqa81SjHwCfNjI+oLS5GH56AqEWdbfGoyN6rtd6sWYjQFIaY33G+3zSO8Hqe8q+NangF9v.snTpOa4VF7OfapZ2mhq4A7..2yzcrASQYvi+Gy7Nigdx36MSlLKqXdlxo9a3aKFXYG+3Ge9l2qzVassDfGQoTeJOda73wWtQqTORas01RbccESax7QGuLVbYTDVBvxFYjQtMq5zJ.VtYAsbf4d+d.qviOLxHibaF5ujxgOnTp6A3d6omdVjU+rXl24pbcc+hwiGe4lEJ+yA93.OvHiLR1wl8zSOKF3dMuqRk92Ov82au8Vu0bL2FvCC7PoSm9I8zJFZgD9n8zSO2t0yVOv8qTpFKmwAAbLPTzBjtzxsOXd3GO.ZAgp31tkgeUOPC81au0YpSNM2byKA3QCxbKUPDAndCeJTgk1.WEvit0stUu4DXqacqyGsPxqJLm2upfhLYXTxoDWSdpOoDvTxoRU1oCwiHEQ5PLrq6lzk7DhHuRXjRPsxGzisrksrbR2mSEDeoL4xjtkbZXMOkiJZJAsRkJPsRG0Wt.oi5r0IKdU9RG0WVJwzQs48c.wWp+0j.tNsHxdxSYcOhHuyJW4Jy97Vom4xJsPaOtyNm2apWdoD0cYtdcwWdQ+Dm3DkTpIMOzeOhHmbYKaY4z1Z3CiKljtkXRIq10ckR4MGzI8yuJw1gxdLfotevvJkQOM4mduDPSnjDjrRDNu6S7DOQVZYRwvJQmxiq3oBaekGujBU1jtSd3CuVknbYFKLfHRJa9gGLy6mx7LAZcmp40zpA.CtgDfiiiSNWM1XiYSQgKbgKjAGbPRjHwcA7PtttqsbkJJZzncfVsdMs90ud1zl1DfNjCWe80iiiC0We8L3fCB.aZSahN6rSvraIyuOHXZq6adyaN62su8sOZt4lmGvGVoTOXPjFzREjOLP8CN3fzTSMAnS+iM1Xi4v+27l2rcJozg.jFPMFyzY.dKGGmI8WmcbxsqS99dGGmIAdKfyDfzRb9R9Rd2eolqo5YBBtLvUySJlNFvRTJ0m..ymKAHVdRc0W07dJUjAPcxSdxr2nwFaDf6BXAQiFsCucea1gYc.2kIUPC.leqhxLc55337S.dafqXmlY2xV1BM2byfViCOD5iI3A6ryNwe5nE3hn6C8SJU5Kh7K.N6vCOL6d26N682111FnquqPoTeLS4nNy8AzIprgGdXPmLb9EkJsghaLf8Ue8c8i5272JfKIUgTFMv6iNEr+u433r2fpFZyuebfQ1+92OCMzP.51zDIR.PCJKsfUogIsGuWzoD6+cz02pBhDIx5Q2G+gat4litu8sO.ceLu9kl48ihdt5Gw7al8ioUBgoVpyKJ5zf3IM6zImc.X1M9DAQK.FIudc6cgL5niZmtKOu4y788udPjFaZp6WxTuGSDQ8TO0Sk86MRImIH6.WoxY2+WyVyGV6.yqLbBQmJHmTLZIw7++ffrS.C82inSynupYGeG0ztWn9CG07bup42smxkGLM7+Wyww4YL6.bpdlxd2.l9dug+c.WWc0kcm3V6L4z0UWcYeFq9fuQo1Gz7N+QhHW0te0S8TOk2tLNn46Of45kL2Kcdd9qJh7iJ29AhkV.rGaaU+tjHxUpqt5JjVBJ6cDYkpUeWadqRoTO9i+3do932PD4JO9i+3478l1n2UD46VAFCbDy0qaFmo7Sei1GNePou80zLd3ng8NOsl+4J1650L+hqHxOsZpE.uKSexiVIFyW.ddVMv50G2RSyY0JskluGUD4GMSvaJ0qfJ.vQEs5+ddyDQW1VccVp.rrTCl0D.iXO.ymJH6w7oxV8qlIHFIHC.Kh59dLS9Nl8yXM4XfTSlg9GTDIGU+ad2W1vyedyhfeayjTulYhodCqID7x60lIDlpAeGUD44iDIxmy62DD5NSK.fg9uh+E+1vF1PVU6aku3u7F1vFx9LVpJ8UJ0xfoeeOhHia2u2Rk9uqHx66MAjnOpsyH9Nx.yXfwEQ5If4D8uq262dQdq5XNz8PG5Pd2eXIf4CcC+8mJhjwV3Fq4VR6e7gQvmLg4BTd8m8FGXJW8HZAAyg9VyO8pgww.5iWTQ5qWnKy76GyeauglmRJyiW4lA9fY9trswG5PGRoT4r3+3lqrBAX02+zhH8Dzi+thyKCnBDRKhblXwh8sPa0km2n1M.xptZzVwbICipMWHvc0d6sm89FUqdIf2TD4eF3MAtjspZMO+cArvvxHb7gzhHmB3bnyA6YgWlQjfqBZvv6r3kdHCvjlNfuZrXw95NNNeSQje.PehH+.S6RfwDSLwIlXhINQ5zo6SD4nnsv47gzhHGMc5z848aBC5OSgnQi9y.dOfK6o1OH6w.LefOfRoZAsU+Oea0+ad9KC7dl2SQCCe6R.WY7wGO68qudOCgmkzc2cemdFgT2c28cgNwbY+LX9sWA3RkaawDSLwIDQ94.+Zfq5WE+s0Vazc2cSGczQN2GsJZ+0NNNeufzOvv6FB3c1wN1Q1i3polZx6n9hzYmclc7wXiMF6XG6.f2AXnRk2WH30e1abf412CvGp6t6NG5+zO8SC5iN4MhFM52OLn+LEbbb9gnmeMkcJfu6t6Fz84tuP3XVmUBk9n8Z.Xo81auzZqsxt28toqt5BfSC7uZtNcWc0E6d26lVasU5s2dA8QS1f4cLqEAU.fpAV.PL6y1zLw1EAtfY.9E.tn8jklmOl42WIPTk1JkWLvcZ+EVmCepPfN2v6vLw2cB7wUJ0epqq6WIUpT+0Jk5SDMZzuuqq6WNSlL64l8Efmogg+MBvX1BWZsX2RP29uDe22SH0w.FoLaGtHvEOxQNR1azZqsl8usGOXrM.w+yX9sWUYM9wA..f.PRDEDUzbU1v3tWGE3D82e+Ys0GPaKJ1KLr4MuYFd3gU.+VQjCETef25reOF9VDZ26d2jHQhbrO.y2mB3XgwYgmOX75iGG3gRjHgXWlL1nzD.GMnB+La.l1uSC7tFAq.vytmhArLWW2uvLSoqxBk1yUl+N24NizQGcvfCNn8h++aNNN+cNNN+cnsKgS2UWcQe80GczQGryctyH.yWUFd+R0DAU.fnJk5dL9K5xAt6FZngreomgif12cKYnztywsAYmjCH6DaWgqOw1EAth8jkVO+sop.tEBv8C7Xnc6uEaVTFH6t+RALlD.C.x7aSB3ZOo69129n6t6lDIRrPztexmC3OQoTqKUpT+MNNN+M2T4JJyhgHxgAd2jISl0PSAns1ZCzA7m6E3tM+Of1.USlLI.uq42WNz8nnMfPaAJ8L.qbD.v6u89Ne+lqZdWABFsI8Z.macqacYe+VZ6hAGbPuceeRfWOr18qwX7FF3s2wN1Q14U7L1XuxvPCMjG8eafgCfgmNkvLe2CArH6wk80Wer+8uePW+eypUDoqRCQaDkCAn7D1ZgKbgdaD4dA9PyE0BfYr6Y6pqtNiiiy0V0pV0U.NN5E++GRmNceoSmtOGGm+AzBA76V8pW8kbbbtZWc00YPa.pk03+pEBp..2G5EA+eGs+2OeaKw0rKnIARFfEBiA4UE3WSDYbiJJOJ9Dxv54CC0vmObGn807E2YmclcWHiM1XrksrEPa8vAw528l36r.my7Nyhsu8sy3iOtm++Smc1Ycni+BsCzQpTo9qmKNnzGNq4phAiFlNGvj44X.tKzpA9txi5+mD3bka+dyu6J.b3Ce84P7DrsolZhAGbPFbvAytqeagjs9MWobnueX1I92A30ARYeT.fteuQCHWBsp+CsceaoEf2.3Z1iErmWvb+qA7FUpc+a6URs0Va4n0Gyt+GG8t++ggMsmofQCPuEv6Yy6My0e6ni8De9YlRWkCQiF8mIhbPf+EfeJvKCzu2h+dOmkP.+LfCX97eQD4fg0QPUoPPE.XA.eXfk0PCML+d5omrtAj0BgmkfsPXjBbeWxcxe2B7bE52W1veP+Xe6aervEtP18t2MM0TSjLYxKPHLInQ3lCBbzgGd3qzRKsXqUE.8Dfqcsqk8su8wHiLBc2c2dAJkOsqq6edMMADLXZ+FEXbaA.rrIkE66+8D.XbfQC3tPuJ9bEvVZoEOWviCe3Cmcg9latYJfK.d0fnEJaXpKi.b496u+b5Ktu8sOOsdDF06a.lIb+c.uosao4ggFZHuce+V.mpRs6aK2xc99cMQi8OcLQjWatxt+8fYdngSlLY1i.xxNLtWfFlqsgiIlXhSjISlm0008IiEK1+sXwh8Ttttcku11zoS2mqqaWtttegXwh8ey008IyjIyyNa+HfJaA.7uH3IO4IyYw+VasURlL46iVZ3Jhz3ylfmwgXlD7c.dmvXRfLYxrGQjWAXfibjiL9JVwJXMqYMr28t2bTMLnUK212918LBkG.3gMpqrFB.DQNIv6M7vCmiQnYNtqaugFZHGi.yrPvHhHmrb62aV.8h.SXK.P80We1E5sE.nkVZIGC.z7alD3pg0hwFiosdf42Vaskytu2zl1j2QPj.ntJgg2Zhk.Cgu3R.j0vCuJvwqT6913a2OHvCLW1v+xGL6jcXfwrs4gMtwMBZsgNq2f2BBJEiZ9lo05BUi.ru95iMtwMxhW7hY3gGdLfWUD4UC3BgEJHl3f1RKs++R42W1vKvezRKsjUZ3MsoMwwO9w8djD.2VXs66LYx7rhH+Tf9A9M6e+6+BqacqiEu3ESiM1HabiaLmcD0QGc3IYdS.2WMs.DLHh7pn8F.UdNF.xi5+UnO++WMfj9x.Wy9H.Zu81yJ.vANvA7NlMZokVxQKDleS4FDhxKL69cE.yyd2udvLVvK3eE5FFlYdj2AXTa68AxZWPiPHI3se3yv+blKa3e4CVG05oNxQNR1fdTGczgmFod.kR8P0lq4lKT1B.juHg0pW8pYO6YOWD32B7SEQ9AYxjojSBG9PJfaPke.ySoT0CfRodH7E06rd9vvR7ya45HG4HoV25VW1ACM0TSryctSPm83ZLc5zOVXQrLYx7rwhE6qJhrWf+W.+y.+5gGd3ysm8rG0JVwJxw5rMVo6cBrnJjaPdKCrT8cxhT.fj.iDjcdaVD4ZjGWAzS.fgGdXOsMbCZ.HLbAPaLU690CVBd1HvxpDQCMQjyPgiBbWx78gNLZR6ixsHF9W9fQyFCCb4W3Edgr22LWS8.MDly4UCUdDTM.bIzK1+KA9EnWT5GCzarXw9pAMaQYN6xKCYUoI.dRbt.f6zHw4cBr.uyF02yesv5LP8gSAbHfKZqNRipPEfkqB4Pko0YR8mEKVrtDQ96.9+CcnwbBuvjLji6fcWUHufnZgPWCNkJLKfdVfy2e+8m89s1ZqjHQhbb8Ny2OJvYC5Bul3LwM3Jfs1Zq2PXm069dHrbAPHmc+9Qx2tesCE1FMCDG3iF18+M3rTX68IMU.iB0b11eXfl5ryNukvv+xGL8mGF3TyFBOv0PvQPE.3z.85337UiEK1eVrXw5x008Iccc+xgztNdSzBYjxVMnlc5bm.0Yj3rNf6zdGPlmOk42WIv0P6RHuQxjIyWrJ+CB7.AUh33wiu7HQh70bbb1oiiyeimg1XDFXOwhEa6lxwXF6OvOtYHVOLUnPS1GkqmK.JT1QKzz9i47mOOPNK95e2fFbtvv06PuX1kAtA68vd7f8e66YCEW.zxs2Vb918qeWyynEr6ASF6KnzelDVoY4OJvscqjg+kOXYGFWMOdDvGfPXNuZn5gvHR.Voi7aIAd+7Dk+V.vxTJ0mEc5IcA4IZA99.iUg7GXWzR9eRfwrUIlYWABPSJk5iGDhjJUp+BkR8GAzFvehqq6+cGGmuejHQ9ZQhDY8lImWJvcU.+.ehfP+YRXqAH6EcM3tUJ0GSoSFLKx9Krd1KGxV.+6AbU6iAvd2fl6eUJin+W9foreM3FWj2z+dBfIrGa36YCrK.VDt8VZ.W+ZAynMtOhRo98uY15vMKlsBf6aqacqYi4.VF924Pa7em0NAMMWcWvV1gwau+8u+ryyDly4UCUOLqd2gFCO4X.ua+82e1NaFKOEzYnoNLel89CMzPdph8L.muRYTNlvv6MXXLP3DpLMShz.vizSO8rhDIRrBfOCvpUJ0+YkR8+A5XvvmF3NrUEqYQgLDrXvvLJLK5lDeVBu4blWLvej45CXGHlLO6Dlean.K2A7B9Wv0Cl6eAyyEV3FbEPH6h7IAR5W3.qmMvt.XQ31a+NfiejibjbzFh4YW.vGIHYCzYRXN5iOKvC1PCMf8NdsNtsn.OjRo9Kbcc2dpTo5IUpT+ioRk5+oiiye+MyB+THbqb3AdNGlsj3EllDxvOxexV4PG5PdY7KUc0UW1D0fRkMIn79hHuTPRFCESc2T9dIQjKYmwrrRVIkcV5x7t+ohHY7du6ZW6xq9k8Zkqbk4jrZTprYiryDzjwxLc+AQmvkNk+LsmI+aqDQTOwS7D4Ka8cJIDxK59p6OinyBb4j7W70dejvJAvXRDOuj3Kq.5KSCdCYqvvHK.Z0Ve.QjTEf9mVzIJnefHx47mQ.MkiIEQNPX0unZ1+yL9qWQDW6jcjURYZptlvL1Oz5CNSOWr8k23R6xhU+hiIhrqJEsmMwGtY+pX0.PgNK0JkE1mEFUNcBfg1yd1S1yZu0VakwGebbccY7wGOqAPssssMuc+ODvvgv4xMk0cy6eXLpDy6rPsBRFKD3tCvNflDKCgaSaZSbfCbfbhACG9vGNmXvP6s2NCO7vWA3nhHGrBnAjpV+AQGFR+sISl7JdVa+BW3BYe6ae2PfXBzVjexjIuB5XQ+uHLq6VtCXJ6iA.xp9+z.uWH39e13x.W1dW9VZfXTyk887zNvkIfZ.QoSzQ2ehDIhlG2d6Zn6e8yEQ5E3nISlLs+7BPhDIhAbul2UXgp47Q2NfXezGczQG2PbPIOWyCcr33dpRdgSTk1anpJvDYFmoBOvSkc+TCk.lVA.LpPbbtwL.WZfwqFpW1DGx+k.+tt5pKU6s2dNpazCaaaay6b4tDvaaLXkxFEac2PmiCbIaaAvbjDksUraEJfOS80WOabiaj8t28lSLoGzK5aGCF5u+9uHvgA90A0SL7ipc+AqDQyuZ+6e+Wo95qmcu6cmiagNzPCwt28to95qm8u+8eEzYttiF10c6Pyr+iAv7+uKvYCKaNwH7x4AdOaWAzr.+XnEF48.FyV.Ayy9dDbW.LJPzB31aGG3MyjIydL74eGvP6XG6Ha+SuniI54YhFFGCvLv7QWkpvFcBA7g.ZoZcrClM9LUgG3kE1gG3nQi1giiyeuRoZGc8sFBJlNUDXTC421npwIMpYYRy+GppWtHJG6QD4UEQNuHhqm51rU+sQ02SDFpcrTp6hHOuHxAEctY2NOsevx8H.Tprpg7GXTmXRQmmyKjZGeeyy8RNNNOSknsYln+fglOuQcrmRD4Z4oteMy20qHxyWo5WZT+3OVD4b9n+4DQ9wgs5GsNhoSY3ythHiIh7JFdxya96wLe2jlmMPG+kot9LVuaa97Q82VaJmeWi5emz54GwLVLLOVjpR+Oq4bdCe0oYiGAfRDIUXSyhn7bP+yAaNdt2MLaOrZKNpodpJ.en1Q.TBWSqZTlXhINQznQ+dtttoQaw6K.8NrOS0LD+NwDSbh3wiu8zoS+XJk5SgVMPeHfkst0st42d6smM6f0ZqsNugGd36QoU6XYuKvRotGKVruUpTo.8ND8rJ8K.LrQCFkERmNceQiFEizzKEcjVaAnyRhd44.O2cbDfyFKVruUkpcYln+f4c9kiFMZGlHL2RPyi8B9SShVU3myww4GVIcGqLYxrmHQhfRoFCsAOc6n2k36Jh7yCasNjNc59hDIxCnTpjncyp4AbAQjWyKjylNc5mToTuGZ2gcRzGCwACJeHZzne+ToRUOZdacn6ukD3chEK12ztsNc5z8EOd72LUpTeEziKSfV6WiBb5vJ73VM6+Yn0dcccA8tcSv0StXER6otnGOlD3zUfwD2f1HLkO.h5337..CaN1gJ5byQiF8mkJUpOKvx19129R8NFxMtwMx92+9yPHpldS8YI.Ofqq6T8duYPaMEM7q0ro53jr07Xw1mSTJkTNElY5vcY73wWtYhuOEvmt4lad9dpA0DW9GB3mEKVrsGFk0Rot68rUJdTgTkZ0tMYlr+P93Ay0q+SW+pJY+tR4cWs3KUS9ewNQb4LIbwBi.vOEvmsPKB533bEfetiiyea0HtDDIRj0qTp+TfUhN8X6f18qecfAbcc+xgAcL08+q.s455N+78LNNNY.9YNNNeia1iICl56ZQmwcKFAOg7H74zwGJIIzloWz2FlxxyFIRjulRoRbjibjGcaaaawO4IOI6YO64pnCFKmJLSIoUhmsRWVpjXlrbLafGTsKCSG8pjkmYS8+q1zo.zpp2+KRjHuoqq6aCLjiiSSbiyeOIZMUDnzPdo.eZD6twngJBnlO8CSc+b.ukotOOeORZzFk3aWsp6UJXB9TqE3ShNet3utNcXRfgbccId73u4TMNojz.vrQDOd7kaT63CAb+la+N.+1vZ2+0PMTC0vrALE6Lrj14Wk.UZMeNattGlnXz1wzghUSP2z6JEFaC3aZNNf6GzwP8nQi98qs3eMTC0vbIXlLuuYKGCX0j1ylq62rha5E..t9wALSWNpgZnFpgpAtUdwt4508h33NlNTzGETYI.P73wW9b8FgZnFpgZnFpgpM748Iml.XDfS25zEsM.XY08ODZWQaBfy42cflKiYSdAwrUbqJOZ1fWITowrs11YCkmYJOQnZVeymGPTI81gZ35XVia.Zb2im.cZwbgn8w22FXPGGmuyM6FdwTAKiO4dvmeGOWtdWJ3VQdTdhKAdwlg4hFkzrl11YCkmpYYXlp9NMthVI6xY0vrOTzGAfYm+Kcm6bm2yl1zlXvAGjUspU8gAbbccSOctavMqvJef+I.ZD8ffT.mz00M5b05cofaE4QFAh+iQmIJ+PnW72FEsq3LaFy1ZamMTdplkgYp5aI3JZoQ2OeN43745nnSGvhHiCbst5pKkIZ6wV25VAcmieuzoS+jUpB4LILpb4dAZx00MlIQeDCc89dqRI5iY03VMdTznQ6PoT+uA7oSjHQS6bm671N9wO9LcxfohfYassF5sTfF8UdZrZUdplkgYJ9uuHu27lhjdTTfkWIKK0PkCEs..lP44IAN6pV0pXngFhsrksPyM2rCvCpTplmKlCnUJ0C.TO2n1RhBTu46ukF2pwiL6L5gSjHwhGZngXSaZSzTSMMSWrpHXVZa6B35pi1Cw.t8pX4opTFlkx+8iHL6orTCk.JZA.lXhINgHx+Lv+AvE5niNXrwFyKq7UOPCgc1eZVD7OPe5t+sh3VBdjwnbVBvGZaaaaYSCw6d26FGGG6qpdTYqBhYassWhaLlumB3pRUH6jNCTFp57eSeVOWQaRe8sqpkkZnxgRxM.Mg8wkpTpae3gG92eSaZS2w9129nmd5g0st0ECchQopfYIVcsCvRmMES7mgrN3kVsnYAnOP0wJrMG00R.lW6s2d1uqqt5BzFF0YPaXTiAbpJUBRpP08pbewb5+WM3+lcYNN5z88CXJCY.FlpPXfc1PYX5Jed+cPZOJfqns.zGq0BBZ4rTvTkFosqiU599468ey9b+kbb.vJCgEY+6e+Oniiy7AtHv6HhblR88UBzsCqLhW8nE1vyvqbAtjiiyEPaQp+jpjEoVuRoVcpTo9iM++UcbbFE3zUpLxmYQHuLh3hPOvbdnm.Joiiy6IhbvvNqz4Q6ToR8WftMXwnmHHi4qqOroW9fkkIuDtdcGrZ+CaduOqg9Cf9rdymZ+Sgle35+KBCXw+uOzs8dBb6U2A3NM2+pNNNUZqy1q++pAx333TQrNce7+5AlO5EcGy74EAdSQjSVkBCsyHkgBfk5yEsWB51+IMyEMb4Ndvej2yz2a0.ejPr7WP3imu.zFV6jnOxg4gtO2E.tL50Bpyb+q533bdQjiEFQD173EFW0ww4hlutNz76JV+eOX0N+fny6BdGCkK549K45bIK.fIz69sLEjSAbG.SHhbzvJke5GFKtd0ni2+eHzU77oGpq.bNWW2OriiymuRlVbM3dLW13x.CmJUpkFMZz+gvrifYAfMid.XSncGSaUukBXDkR8.NNNsDlwnAyffuDZ2.cFYW.V47gkiV.D+pc7x.ucpTotuHQhzaXHDTIlXNhil2.51hE655dsvv5n8w+a.83NOnP22Gq6WMrLd+8+SA7ttttKIRjHOPUj+WGPZkRc1JQPJa1PYn.vQoT0alS3iA7gQGiV7v3.Kxn0pxNRo5UWhDIxQUJ0iGjBbwhB38CftutsqqOA599wQKTlGFSoTKKUpT0GOd7xdcfonbbIym2gU4Iz6+6Ay3++bfGF83+5xyicAkR8voRk5AiFMZQ4Z9EsM.XiIlXhSjISlm0008Oy008K3559jYxj4YqT630ra2U1PCM7QV+5W+c0SO8332pq6s2dYqacqyOQhDKC3yB7GXjXshg1ZqMFXfAxVFN9wONc2c22A5FoOiqq6FCKCiLZzncjJUp+Zf+Pf+flat4kryctyX17gd5omXM2byKEXU.ORXU+Mc91HvmA3g6t6tWfc8dfAFf1ZqsvfT4ElE++q.dLfOYyM27R8W2GXfA738eXf+HkR8DQhDY8Ak1FKa9dHOVCsMxi0QGiPxK.xC++N7U2k1Zqs6.3N7Q+Jpkh6u+eO8zSrFZng6C3SnTp+3vnu+Tw+stbPOoXEotNanLT.3fd2weBfV6ryNuK6xz.CLP8.ePkRc+SkZzmMhB38CzPCMH81au355xHiLBc2c2wApuyN6b9diIN9wONc1YmKDnYfGMc5zOVXWN.VPas01BFXfAjJY+eHmw+eVfGsyN6rNOdf85ec1Ym0A7nnSWzE2ZOJkRlMeEIRjOmHxORD4hph.iN5npm3IdBkHxUDQNfiiyFBB8cbb1fHxqIhjCcdtm64JXY3PG5PJQDkHxoEQ9tyadyaEAoLLu4MuUHhrGQj2PDQsqcsqojGrgMrAkHx6JhzSHQ6uqotnNzgNTAoqedhgG7ZAoMvP+cIh75hHSIeWozs+KaYKSIhbdQjePjHQ9bAo9a5+8iEQt7TR37.QjKKh7iCRYvh+epoi+ugMrA+zWIhb3fv+KT++m3Idh7VFFczQ8n6aHhrqxktdWEK+OLpqyFKCEh+an0oDQNgHxMzdXMGzqIh77UgxRfFmW.ZcX+zZzQG8F36EZ9vUtxUpDQNiHx2tbmGrPkipU++RY7uRkS69oJl0dl0K.fgA7RhHidnCcH0S8TOkWCa1q5pqN0S8TOUNLByh.uSPZ7USQmdkRodwW7EU0UWcYKCu3K9hY+tW9keY6IDdlfvCLkgepHRJ6E.sD1QIhnV1xVV1xfHxnhHuTPE.vww4Y7F.7xu7KWT0cODFSLXp6GPDYR613W9keYu1XkHRNs+m3Dmv69udPm7yR3qiJhLgc+t7TWsulv7a1S.6+8LhHCLCy+ug9+iN5ndBZppqt5xYhom5odJOgeBb+uRj+GpKBManLLMK5d0oYw+2MLDBtHKKUk58y8bOmRxyFA7tusPv6ZW6RIhLoD.gvmo6+WNy+Zs1y.S2ZO2rH.vtDQdUQjyIhjz74vhHGy74EqDM9SUG.qEYthQJyq5WBsG+webkHxHEijXSS8eOhHmtt5pK66dzQGMaG.y.8gMz5Zqcsq8ZhVBz.I7ikzmi73O9imk1VSvbUSc+JhHpSbhSjCOJnSLXU2Okcc2h9SJ5c5eYwmlQLBF89hH+ffNHzrCv8HhzqouvEKvjfWzrHw.lmcOgzt+O2JW4JyRKq9dd7+K6uuWXv+USQ+euIb8Z6s6eXMAzqDFK9TB7+Jh..yjkgoYQ2oZw+QDQ9QUwxRUod6Iz+xV1xx68smmvpe3ACaA.pF8+Kx4ee27s1iYSxma5V6orrAfpIlXhINgiiyOD3WAL.vqiNGD79bcqB8x.rm8bcatv3hVw.Rnp.Anhsrks.ZK99H.uLvg.Ru8su8rOyZVyZ.sECe2k64BZEQtt6Mu4Mm89ae6amjISBZ9x+DvKY97ece6ae+6.+JQjCFD6xvP66FndScIKsQGBPOD559Q.xX3IgFrp6e.65tEctLvUMWXy623F2HnsH9EEzyjMc5z8455tgXwh8WB7Oi1snxGNMPuNNN+2iEK1eoqq6FBhQfZJ2KDXgl5CPN889kn4+GFe88pzXe6aef1PndMfy0e+8m865nirG83cDFi8JA9eECyFJC9Qmc1oW6..dgmc.FE3eWD4+2Jg2.MShgGd3b9z28Ul4DAxoe3sE1qATM5+aM+acSw7u+Sjm0dLyWrPfENUy+MqW..KbanYFKGc7W+QParcq.8hD4.KWzZ99+tv.G9vGFzCzNdrXw95.GCXTy8AxJDhCAWHjD.ws86bSGvQA9MwhE6q6559kccc+ybbb9FhHeOGGm+gPZv+B.brosUc+jl59wAFwttGh3Fp6VC1piq6Rb4LoPXuHDjMXXcTzC9xGRKhbzzoS2WHZPrI.h1RKsj8FF97Hb89dmDe88pz3HG4H.bdz999XE3wB0fCSQv+q3X1PY.lxE+Gm4nK9agqUf6OQAtenGjhph8+W.Pj7L92d92aXsGyyGkoYsmR1M.q1vmaX7fM2byxF23FokVZgVas0h4UDoRTtLK1jDXbiVJtHv6O7vCmUXDKgPhWtzwz3cG.4TeMz+B.m2dwlvzsCMz91fb84cCseetdceb7U2CQ5eC0c+Vf+bUXy+ySaeEm+WD3ZlqYzECuUD1K9C4Hv6aAbh4vK9CZWArTtekBUz9+kv3+aXsGqm2eRJKGLqW..iqrsRfO7N24NYSaZSyzEIajVzIIIDQFWoTSVgnSgzTyjdzuBhBQ6Y55dwfz.uuT8BOrUBLSy+mJjlZK9Oq.6cu6kUu5UCZMFcmUwXQvsxnZz+Oni+mx4OmUeD.FeWsAfF6t6tyt3+XiMFqYMqg5qud+we8pcQLpRori.dEJHwDzsrVne+77Q+JAJDsyV2MeNUAHmPk99ayKvUZfgXFNzrFBXll+WCyRwPCMT1+tiN5f0u90Cv8C7fyUyNq2Bhoc7uAk0ZOypE.vX7BKB3NrMBpN5nC1+92OISlbDfeGZ0dUU2IRCMz.ni5V0aBVQ2OvcYtOf9b4LnPmY0zBytWuru2mG8qC3tsCxGQiFsiHQhr9vHHTXn80J.syV2Qani4T2CCTn5tAoAdSfeMZCg7WC7aQaOB+NzFL5fNNNeuaV2IzLM+uFl8hAGbPVwJVAaaaaK681111FMzPCQ.dDUkK6rlo.2OJyP4Dj4pnXG+Gj0dlUK.PgNCZiAXbYzdDvuEsAQ3TIiFc9gwHKVLPilnT2CBrn7XrFoARVtpg1r60j.SbfCbfr22XUnKB3gSkJ0lcbb9abbb9Gccc+JJk5K5559kBZjvyh1oyiAlrHtdcuQfEaW2CCTn5tocNh46NJ5LT4wPaXbdR7NIv4uYd2+SC++tAVgE+eQgM+e1DhGO9xMS18PT3itLpRodnnQi1wMaQ9tREFC9im9oe5rS1uvEtPuryZc.M6559Eq.7A+Y.QOjPoTMdq.uuZgRX92Bs1SFfKMkq8Tt9nX03x36sGTDImH.kO+e+cDQtV01Ons7E6Ka6K7kiuXNcWxzGG.NiniHXmSD4Jgbb.3a62Ozs7CUuXfvkkJPb.nP0cewAfSK53AwY75GXhADmVBgHgXw1enR3KzEh+a02aByXfJF+e5pul1mJF+vm+2+phN3NUUhCCkKOoJ568iKhb4ksrkky7iV9n9.RHEE.sZK9ohufRiIdmnDczm6vgAueZp2WoDueY2lbWxEDP...H.jDQAQES1+uHhC.dy+dCq8TrwflY0Z.vHAzX.SXa0q80WezbyMCZ2+6dZqs1hOv.CPiM1XUqr0TSMQO8zCIRjX9.KMQhD2dO8zSVquru95ySSEukHxwBhZnEQ9E.mHYxjo8T42BW3BYngFhN6rSPq5slRjHwGXm6bm29K9huXbzYstDAwG3Mt7zIAdqibjiPe8ocvfVasUu59sap6yumd5IeYGu.Cq5dJu5dqs1pW9GHF53z8JRjHwR6t6tiOxHi3YqHI.tipXbYOzQg3+M0TSzau8RCMzv7.VhG+u95qJIjwpF7kDddLfONZW+sPIhpEfNQY86ad9Ooqq6ZmCuizyCbrgGd3bhAGaYKawa9weOfkGVGEfY93yA79uvK7BYu+1111HQhDf1kbWIUdd+rEu.nhBy3+iA7V82e+S07u2vZOFWkd5W6obkNoZcI5n.3w7Kgie3EC3yiTXgQrP+FhEz9C8v1nTiGyk.ennxE.lPQ44Bic.asKzoMVT6mmDF7eq59Qk7DBP8iQGcTOoeemvh2aeUn9CgUcMH7e+QEtPTC.Er9ZZapH7Cq7.RImGFLkg.mKFlBdxLZLw2PqiHhzi27B16J2RKQgVt.PSV44MzcJ6KFTd+zTue+R79kc+vYx9+JUfxE.EUdnYVsF..vDE.eMf2dUqZUr4Mu4bLHhgFZH18t2MM0TS2PzgB84uOtD.2.y7aGGeFY3N1wNn81aOmxxfCNHadya1674NCvgcbb9NggQnY3CCBb7t5pKUKszB6d26NGKAdu6cuzRKsvN1wNtBZCj6rAk1F+L86g1n5NS9ZCFbvAo81amcric3+mGX9O.whE6ahNp286d5m9ocyWcevAGjMtwMxhW7ho+96eLfeaP07R9Pg5OPHUW8iBw+sq680Wezd6sy92+9y2qnPFsUQgoq9hNJLV03G2pgog+OpnCJQ+Jfyr5UuZFaLcLowSCknsN7aOrJOwhE6aA7a.dq7MWPXgondqPG+S7ua+Bc+.0Oblt+uY7+2Aqw+abiaLq1.7Pe80GabiazdsmeQQs1SPjNoZcY1IPOh04+465plc7NpHhqb8yGNLOG72v7N8n4kLWt9JKWzTN6Ir24gUrw+fh9remzGsmTzmIzOUDYWg4teml1.WCu3x9JKAl+mm59qXpi9q6d6.3nhHujiiyyD169eJ5ODp00og++F93y4b4AqrR1.gv4PVv5qobUQ3GSUR3oHtBkjwT9tLInkiZyuUJUk1NPJH+0zF7CD8tDyXwCNunyHpAJYjUf9he2BLWPnv6mh58wDcxA6XE48CT+vYx9+Efm+ZhNe3ju97IMe+2sXW6YVef.BzQ2t3wi+llfBz8g1JW8NGvIQaojih15fuazR7dIfy333r2frKvIlXhSDMZzumqqaZzta3san4ELOhcY4Rl6e5Xwh8sB6ceNwDSbh3wiu8zoS+XJk5Sg1RPSfVJ+Ln4CumHxAC6HA1TzFjAsTv17i4Yt2oCJ+2CSScGz79Q.Nakf2aWNr5ObRz7fPouVQfKgtO3kQGcI8zf2B.t2latYw6AsrZ3KKAXWHSW8Mc5z8EMZTpD7CCs2qIxOdZzs2dgW0Bo8RWzVpdRBw9ef1lDxjIyxTJUilxR9PY6xu4CEY+sSXZCt.5wlK.8bTiBb5nQi98CyxzTLWPLBId+TUuEQNkoM3MwZt9Bc+JU4nR2+2F934KEsGns.ziCboLm+STJkL8O1rKjOCKwqBa+cg8jw46cOUkkpA7S+pEsKDcqj7+hsLTsP0rt533rSfGEXYncM1IwjDjPKLz76omdXsqcs.Z2Dc+6e+uOPewhE6qFFkuoq9VsF6AYiQH2.rc6yvpLDMZzNLFi38gdh26F39Zqs1vy8T6qu97hDe+LGGmmKLCI2dnX3uUy9j4ilUBZWn5Tod+JU4nRS2ho7Ttz7lRA.pgZ3VIDOd7kmJUpuAvmYfAFXQuvK7Bb3CeXOuLgDIRvl27lylkDGZngXEqXEf9rZ6y008KOSU1uYGFd+lQ6IBMgQiSIRjf95qurVdckPfqZnFpz3lhi.nFpgZfn.was0Vmxjf0PCMjWhgYDf2vww4mTkJeyIgUJo9Abccya3VcvAGzy.LeKfSWaw+Z3lELq2K.pgZnF.zmm6nM1XirssssBZEvqXEqfgGd3Q.NjHRuUBUQWCZ3yqedKfWyXk70PMbSApcD.0PMbS.hDIx5UJ0eL5.gyGBX944wtHvo.dCQjdmimRXqJnPGAfE7LLyekiiy2ol.W0vMSnl..0PMbSBLFi1W.sgn4Y40AxJfqgoG9LBPOOQHEZivbTpPd8SMTCUZTS.fZnFtIDyzdexshnPg01YC78YBOhwilyzddTMT9nl..0PMTC0vMgvRyDKgbiIFY8C+JwQR3it.btJEs7QOOMv.WO9uTQo8bcTyK.pgxByD9abMTC0fFQhD4qYBHVOD5D+kssILIvPtttDOd72Lr8EdWW2uHvp.d.yseKWW2ngMsrnmWBgxuMXLIv6455deNNNe94pt6ZwFCLfRONXTS.fZnjfkz32ClndkiiyYpIEdMTCUGXLHz+PfOdyM27B13F2HszRK1tG57bbbd.fgMKVDZKJade2KvxccciAfiiyxANSXSKK5cCtg4fCNHG9vGdduvK7B26QNxQpCHRjHQV+bICes.1dBLEdumqNrYlBHoiiyzpEnZB.TCEMrj9+S.zHW2XnNYkZG.0PMTCWGwiGe4Jk5yB7Qat4lWfUHetp.kR8..0y0WLByeWu46pJvKdXroMsIZokVVvQNxQ9nJk5ciGO9OatvbPEXt1RAoQqEnobd4ZwAfZnngkz+M455Fy00Eyt.ZB3dmJUSUC0PMDbXFic2.KdyadyYu+t28to95qGGGGbbbRg10DOisJgCQjuEiJ0EnJJXJ+mC3sbbbR433P80WO6d26N6yX3C2MvcOWYNnBLWaobEkhXd4RRC.ESrvel1hPqFmM8zwGlqDCt8SKWW2OO53Nu+9MQA9.ttte9nQil8bnpF4hgR46CCZOcu2v1xnKm5zLQrPuR2+elh+mu2sG7OwZkHODT.j.HR6s2d1arksrERlLYZzIBmSALbUH4TUwguDB0Y.t+jIStrsrksDcSaZS.fgO3.jnZpEhJIrzzRPzReTlFMyTTu77btuW0ww4hlu1Na3cUGGmJlewZBJGdYfpEw0yy0WxwwwKazcml6e0h4LPJET.9fWtfdgl6Ewww4R.mWD4mGlmIU73wWd5zoeRkR8PbiYCpqBbAGGmy4337Cq.046CswF0TAdzkArZWW2+PWW2h9LnJwxPds6fJkcIX5u8UPG3cV.PFGGmQDQNZznQ+918uMFkkW6hWef2IVrXeyxYbPdn8jNNNm0ww46Un5jgO7EQmsvlGZ9PYWFrJG1i4hXdumxww4GBfI1Db+bcdTnLGvLI+2FE6YwVpm+Z4.yj4wAXgKbgYuexjIAcFS7UlqYONl5ReVAkonISlLqvWV7g3yDkuJHxQqJNNEmB6MBKk22geLsB.LEmEwkMeNe.aWI7x.CmJUpkFMZz+gPdgnuDvGEnAf6v5qU.WwTN7hPZg5YSW.9fBcZvUgVvCOdiKv4TJ0cGIRjklISlmMHzFxV++yA9Xns916JOO1U.Nqqq6RhDIxCDTgOlFKv0OV.vGw5+CEKQd5r6.Sp3rhXWBlE9dTzQeOOgbGUoTKNc5z.7rP1Ee9CMO6hLO2k.9sl2QIacxlE993.OH59zY.Niqq6BhFMJ9GWY5erQzVm88fdg5q.brToR8UhGOdYsPX5zoeRfGwWcKEva65554FX+mPqtRu9+iB7qL+1xtuuE++gPO9Bz7+kTD7+KBbzxk+6gRbLfGJpyeM.HRAt+UDQN0boE+swDSLwIhDIxuPoTqp.ORg3KykvkPKn2D9tebtdpftnwzJRQgNKBf6ns1Z6NFXfADu6c7ieb5t6tuCzSX9Ybcc2XznQ6nTJP4CVSt8Y.d3t6t6633G+3YOuiAFX.os1Z6N.lu0YfDpmMcA3CBP8MzPCKrmd5IlU4wos1Zao.eTkR8fEJ.hTrvR3m+PfGY8qe82Uu81aNm4y.CL.acqac9MzPCMA7eRoTepfRW+VfqM8rQANCp4gVPk6IH7+oytCLGKQnaWBFd2cCrrAFXfE3Uu5ryNWDvinTpGJd73K2XTVODvizYmctHq1iEXp+KsTaGLO+R.Z53G+3d8oizPCMbe.eTyNtyAl68QangFtOWW2Hlwiy2vGVh+muXgRotGf6smd5Iac63G+3wPqwmOs4ZYG+3GOa++d5omEAbuleaYAe7+6zG++ioTpOlO9ey93+2ooLd2AYbvTMFXZN+0FAVZU9LocANaUjd0P0GmFnWGGmMaeAzq46JILsB.Tnyhn6t6lCbfCjSlIqolZhsu8sy.CL.n2ExG2008OOHC.842o2y.CL.ae6amlZ55Zht0VakCbfCP2c2s+e9zdFHEKJDengFZfAGbvr4gc6xCZ0ElHnSBXlbek.22.CL.uvK7BdY7sbn4V1xV3jm7jfVMnKZtfAwLEmEVTy8u8o56Cg19nuvK7BY+m0rl0.5iB49RmN8ikNc5GCywiX9N.v7aBhgQEG31rsxayYc9g.VbznQ6vaAPiP1KF3drOWXyu81.hGf9BWEXx0st0wXiMFfdb9V25VwPyEu0st0riGGarwXcqacfVCPWsLooMhXy+MF70BAt+zoS+jFsLzHvBsMJNyuYlbGgw.VPE3LoWJ07dqLE39QQyelKizhHGMc5z8YeIhbTzZdpjPw5E.2vDYae6am8t28l0xSqu95Yu6cu.5Ei5s2dA8Ny9HlAokEL+1GB395s2dyJvQ9n81291Kpxd.vM7t5qu93jm7jzd6s6YAtzXiM5wKtDvDAwRbMSte+.2+N24Nyo92XiMlkl0We8rl0rFurD2DAktvMXAtS5QK+mEk88stljvyRjKTaXLzC5mpuurfQssWC3h6ae6K68W6ZWKIRj.f6SoTeJSvX49RjHQNBAZ9MuOvkJSU.eEfTFAIAfVZoEPqhuk5559kRkJ0+iToR82XzNzG.3NMOC.dBglB3JkaafIcB+1.Wwt9sksrEZt4lo4lalsrksj89lm4J.ucPREwFd1k.tvd1y0OIqVasUO9+8pTpGToTOHv8lHQhb1Lh42bAJe9OvTOFv9xS3HP6i5nOVvqJh7VkKs8inQi1go9VWAdjTgEslkC2Bb+5TJ0CFFZctPvSn6fpc0YMPoTxTc433rAQjWSDQYiSbhSnDQThHWVD4LhHWUDQcnCcnrOyi+3OtRDYDQju67l27VwzQK+WyadyaEhHeWQjysxUtxru2CcnC4Q6qZn8kEQTm3DmHmxn4YdMGGmMTpztX4CiN5ndzYBQjSKhbBQjSY97.hHOeHP2CJhnFczQ8W2ThHWTD4cMWiHh7NlmOPz06JRjHeNQj8Hhzqo9eQ+7.qxwQEQNrHxqZd98DIRjOWkfuan4qaJaudA99.01an8qJhnd4W9ky9t2vF1fWeudMWWcCaXCY+9W9keYO5+pkC8M862iHxYV1xVV12q0Xt2wzdOgHx0L++o7OFXYKaYJy3i8TNi+7tDQddu1fW7Eewru+QGczbn2K9huXV9dXz+yv+eEQD0t10txRmm64dNkHRZy28JhHoetm64x986ZW6xqb7JgwXeeiAdUQjiXFee47wSL78yWty6MEz+m50N+3O9imklVyG9JAc7VQ1ljy3wvbd1hjW7JEXsFkg+7SCi4d7Um+1hH+XybqGzL2dONNNOica77l27VgiiyFbbbdFGGmMTts+kJetbaWJaA.dhm3I7FDdPCy4UDQR8DOwSj8YLCDSKhza4zXXZr+whHorm.vP6TFZ9sMkgz1ztXY.AoAQoxtXfRDY.Qj83337LhH6RDYW96bD.5Nfe5Zljw6Jooi+qa57+sC6IBLKJ87lE4yGe9nhHOejHQ9byadyaEgwDeSEeuZH.foN+CDQtjceKqIbOpG+vdxHS+yKIh7CBvD.OS9300UWcJQDWaACL2KUgZWbbbdlfzFXIH9YDeBh5AKAgOSXsvmgt8HhLt8BdVz5zlqbJSlECFWDomvpenW4wLmztLy4jxtboTYmOHsQ3i.w2s3A6wzWHkHhZkqbk4ze6odpmxq+1KEl027cMSK.fge7RhHW5odpmJaY3PG5PpUtxU5UVRY3WARvWKd+AEs.2orly0ad2W2Td1kY9wdLO+gEQ9Qkaefpk..kcf.xb9hiBbbGGmuGvIAF09LKMpiLBk4YgY9MI.hZqZSKZeRCsOteZWsfQMqi.bzXwhs8LYx7rtttc4551UlLYd1fZAvhVEhWFfgFZnr2+jm7jzau8R2c2MM2by2E5yg9g.9v.KUoTehfPW+XhIl3DxTeNSYOapIlXhSbyt+GCYUC8H.u692+9ydea0PSdT+r4YeWfQB.e3r.iC3crN.YGSI1m0u4ui1Vask8dV+lwIfFFlos+mC7qAlv9n.7f4dS.7qEQ94gQ6u4cbVfy1e+8ms++BW3BwTWWBvRZqs1x5JXCMzPze+8i2uKL6GZ8tVLvClHQhndG6In44lid3D.GKZzne+fRSisabOnMBwntttb3CeXZs0VYngFh0rl0vN1wN.sOxO5bgwcSEL0uQANyN1wNXMqYML3fCRqs1JG9vG11HLCrAHa7DmlAZs4ladI8zSOQsM55N6ry6BsAu+4.9S.9SAVMvevW+q+0aF3QUFiENfU6JFJaA.Fd3gAc1XZbiamLNv6atO.1SJdakKc79s1SvZnw66i1Isoc0B17gJwfOqyfbbu.egG5niNX6ae6Y632SO8HMzPCKE3SnTpOUjHQVeXWdlkAWeeF5v3q6mFHeQer6D3N8GQ1L3LhHksDoQiF8mALF9rC.uE9au81YrwFiwFaLOCSDagBrN++jRHbNzFWJ8MAd696uerW3au6cudK591.uYXF6KL1QvoARYaKFabiaDz13QLyeCj01KRgNa3U11fPgfwfbeHfEu28t2rBdL1XiwpW8pA38.9UgbP3IuF813iONiO93d+aZJCi.6lTbQL0Uq5enByh1KFXY6bm6bdG9vG9FLz68su8wwO9woyN6b9n2LvCzPCMTWu81q7U+peUAswpdWylMF6fFJfSKhLN.lOmrBPmB8aKVZWMv07JKgMr148us+96eh1aucOiL5FvZW6ZYvAGjFZng6BsKHFXWA7VcXI.1ErW.x1h+s+ayybAfyXVDurfYwij.uedzpFs2d6bfCb.NvANP1E9yiVxtHvXgX3f8pXl30VnDq+NzW.xHf+oAFw1HesmL19uMOyH.mMrCCtFAp+v.Ke8qe843INlxv0.9UhH+ygku36yHDS633jU3OOuMxnMjOHPcy0GuapeKEile77DswFaLaCwNCAz.jMKZGGH1l1zlnu95KGitt81am95qOZpolXe6aeYcAzSdxSRGczg2FAljPvXrqjHnB.DUoT0a8+ESPxnTQg1cWVZa9rRP6hEUT+u0nJwA.Fn+96erUspUk0p+28t2cNGMvBW3BYaaaafV8nUa+PdlBUrbZgkZnOW+82eNtBmmUva6BblcBeNBG0OedfwLuS.sVeZngFXgKbgYE.XgKbgzPCMjyBRley3.mOL1IpwxpWNv81PCMfsq48BuvKPCMz.n2Ez8G1VgsHxu.3sSlLYNGGx5W+5Y8q+5J4pu95yKh381hHmLL0HmwB7WMvijHQhXlwX.Zs9X32uAvQCSMfLwDSbBGGm8B7uA7uBbl96uer0FnQCT0Cr345i2M0uEiO29bSaZSdsAmAMuZffnEFyh1IAFcKaYKYV8pWclgGd3wQqErS2e+8ewUu5USKszRNZCavAGj1auc5pqtRALLv4lMerLk8DmlA72EP8lAGMBbWl6CjyYV6OpEUJHku20MPazc9yg1ykvDSLwIhEK12B3v.+TfeQxjIey8u+8ewt5pKVwJVQNpm1rajHTciM1NT88A24g1s3l+z8fAAVtBmxuZnyi5mUDPWfyCFM+bAfbz5i2hO6ae6yilXufj0yNl4cDHXhEGeIfV.tC6Eg8f4d2Avi5559kBychZzjx6.bYaAO7y+Me2kAdmv3728fUz.7QAVjsp+GZngnqt5Bz8O9MlwogJRmNcetttavww44.9W.dOaaRwRvu6pJNdeFAl52cA4Tu8r6l2C3ewww4+KWW2+KAQKLFMudLfe823a7MFDsPEuLv+O.6272+xibjiLx5V25R6oYfUspUo5u+9GE3WBb3Xwh8MK2xP0.ks..F0MtXfFMApmFAVTd7CYWJyygz7aRB3lG+gdQ9n8hso8bIXEO1WJ5E1eazcv92Qa.jJyjP9QkHCcUnfvQBkR0nc.pIDoYg7u45PGVnu6lat4Pjb4BytAdWfQsUC8ZVyZxQ8+luaTf2MLT6mo++3.J+ADngFZHRlLIISljgFZHxS..RALdPO+eq3w+GCXo8zSO4nwCaMhzSO8.59neLS3GNT5CX1A04vXLldzzKkv5UVrL9xPcWWlXQxGAnwt6t6bV3w72WAsg+c9LYxrrJkZ3sB3KiVfGIH1Z0MSnP0yQ8LD4vfHQiF8663372IZOQ6eLVrXeMWW2ur4ZMhH6B3+EPenEP3ey72+ShH+3Xwhs8Yy69GBf..lcbDA8tB9b.sBD0VsLlcmLNv4KmIDM+lyCLt8NuLzHpgleNSYHh8tflKAyDv+A.+Q.OF5vu5ihNTmVOfXrJc.rCJIWKLKGlEStBjWMxbu.Otqq6+2oRk5eLUpT+Ocbb96Cp5fMz78gbsFdKq.+Q.Vf8BwgMr1MvYGd3gywZzs2InwfPOqHxwBiA9l9+WD3x1B.6o9eO3cL.1+O5cBewfJHhIRG9P.qX8qe82vYu6++Mpj+AAdnfD.v7CKiwLGsv3AKsubZujTTX.SnF9AAdvFZnAwV.vMu4M60lmAcDZ7wbcc++Lr56W.bVt0wX+JUjlP7nXmXhINQ5zo6KSlLOalLY1i+wzYxjYOttt+Wbcc+ShEK1+Yy0eoqq6eVX3AXUCT1B.3IwehDIlOvRSjHws2SO8jUh795qOuyj4sJ2IDsl38s5u+9yt.Pqs1pGsucCsmu8NSlKAq3B+JFXfA9.c2c200byMuDzw38U.r31ZqsbVbzLI0U.FKHFhleXVLYLfIsW.Zu6cu1BA7HnShMOFvmz00csAYGQFZNJvUro411117bEu4u90u9bTEbk.hHuJZMuLosZn8f4doPe9yuZXPSyXlK.bA+t3pYAuIAlz+Bhlm8B.WHHSBYct2ObCMzPTaAr2111F82e+ze+8i+62PCMDA3gUJ0GKrVDzzO3c.FOe7eKsu7NgoQWYNy4OHFU+6gAGbPO2uCzdCxJPKTdn02uFt4Adt97MCK5mCJm.RfRoiFWEBVAJkSGzfBhUPH4T9C3J9gcfgnXCDBE6kgOb3BDrUNbkJHXXp++HQjKVvJtErhBcGUDYWgc4wDXLNYc0UWdCHL93MWVD4GGzfRjIHa7FEJHznT5fuiOZG5sKl59oqqt5tA5aBFOmNnAeD+Wl.BzQ7W28GHb7fUPx4HAMPzXn8.9G2YM9dTyUg99CGFACGK9+yKhbLwWDOzJBI9ZgI8TprAirC5eb+zgvpuedZSlx.iUXW+KF5GlyyVjzuhD3ulMcMqOP.8zO8SieWRangFhMu4MypV0p.s0XNniiy2IHREYrB1uCZqf+LqZUqhMu4MmiJn8r7RKIxCcXcdr9U+VZBgyZcZvn.muwFajMtwMRe80WNwd7wFaL16d2KqYMqwyWjeKfWKLUEpGLVj7uIYxjizTSMw1111JnaIFhz7GB7aAFo0VaMuVcqsQQYPn2tXrF82LYxjYrqyCN3fjLYRWf2TD4WDl6BvnMgyhkFPLzNEvoLWo7JOlm4JnOJh.oIBk16ZtM6bPwXiMlmZ+GC3WXtFasqcs4b176bm6Df3p.jQ.8Ciq1lFxpkCfr69eBBQsu3CWhYWwY+BYGNyWoT2+bUsNXNNlON4OUnCEluTCEBkijHVRWjuqKYjPqmvT5Wij38Xd2WpPzuRIUnYm3eayNQmz7tmz7+e6JYH3zzF7CL6p+8EQbyScOiY2XGVp.gB37TddIytwtbAZKlPBgvwoOZ9iDslflzhNthNODbQq6UQZWrBMnutniA+dz6Zl6Ep6926RzZ.4vl98tFd9qY5O9sM+8kMe2kLO6tBovPcuhHmypOmqnC2u+XS7N+YDsQRcFeOy4DQ5Mj0.y2VD4L90.is1WBaduUat839o6JT66aeYlG7UEeZDxJbPeLQGm5CsXged5STU0.fUtP3.hNGLjSnv1RqWkUt2X130TvmyFx0suj7Dl1Kl1kflVIOCZeczKsadUz6V8zwhE6aExVhaewiG+MMVC+8g1K.tcyWmAs0fGZ61vOlXhINQznQ+dtttoQG1iW.5cFblPNpecCHSlL6IZznukqq6mGccuNz0cOq7OEZukXLQjiEMZzueUp77EPaeBEp7b5vh2XQy0htcdAn62cULtJG5yh81M2KznsGlXhINQ73w2twnLeSzQ5KPua32IVrXeyJAeOVrXeSS+9Sg1kGmD3c7zviqq60Pq0m4gd2+CGFi+hFM5OKc5zKUoTWD83s4gtO+YEQNnm+tGIRj0qTp2CsG.r.S4aTQjWKrrAkHQh70P6sOKw1dO16d2qmu+eJQqglPElw86000Ez73Db89490fpKUf994AIAxbfCbfHdFg41111XKaYKQSlL4JvLWnqqKwiG+Muo6bosfkKX9IQGGJhkHQhbb6YiVuxPHE0Kmki6CX0tttOlu6G27ckDDkRIS0CXFb+eE3QLCB.vKkv9a.5yww4mXa3MUiNb1p4Jc5zOoRoVKvCmmx3uVD4uKLCNG1zdlZvU9Ty2roxBTYKO4qMnZ1t3uNWs38dz0O8Jz8Ca5NUznRv+qQJ3MI...B.IQTPTgFMZGFW882C3iBbGiLxHY85g1auc5u+9u.PuwhE6qUs5yAYMPvrnZLGnwsL+q.5ngFZ3dN4IOYdeNGGmq.7ycbb9aCK2hCx+5AUp4Ygrs++WAZy00Muw6iFarQFd3gOCPewhE6qeyr.OdXJ3ySKJk1kfpA.WID86xRA1MxQhD4rTAiG7SEsmovrgxfGlIJK4ilUyxwLE+uPzsRWdJl2eXWFr182pPK.frycty7k3edGB4D+S9Pdd+yH86iDIxAUJ0GX3gG91qu95qeaaaazRKsjS9RYtN5qu93jm7jrksrERlL43.utHxAmMMuXHfbr6D6M2VtuC+nXE.nPujYSFFyMCkwZnFpghDlcXuDzYBuaPSkF0eON5LRZnm3eJD7qskJs1W7iLYxrmHQhrTkRkIYxjObWc00RI2fiyjDvXg+zf7MmZEYd1HQh7ltttd4BglH2P99UQG3m9MhHGJr09PgP0n8WD4sTJkmQuVtaTeZMD5o8EOEEjpg0uWT3lgxXMTC0P3f8t28x12914HG4HWA3+PD4HUCsPZEUDWLPbGGmKa9p6.XBGGmQpT1AhejISlm0ndb+1gCTAsAAq4ZSQt17SEYdVe1fwoQaCFv0s8my4337Cmq09aD74sAFxwwoQJ8n5ZZfg.d6oRHvoU.fBTPRg1P3lxWd0B2LTFqgZnFJMLE69KC5399QA90gYb+epfwPLeTzFi1sy0y.oyC8BRmv7Le4pQ4wrnWeP0ylTrlq8DNNNd4cf2hJ37rd0yYJ6twCUy1eeFc9zY7o1njLD0oU.fYRqeuXwMCkwZnFlqgJspuyyt+Vf4qRB7d1dhPkFl55cCbeiLxHKBflZpo4CYCK1yewKdwS.bh3wiu7p8bNUK54atVufwx4pFyyNSNO9LQ6egD7Ypx3ikpgnVTmsP9JHy1VT8lgxX0.U6yirFt0C++yduqwFWWW446u0ophTRVRTjR1xxwxhTTztih83lOZF21YR7HQFgjAnuHQRDLAnGbmFRhgFyfaey.8nclj9CFwlBBoycvDXRpv4h.jFwTTVw.2fqCnHiRhwUc6PQElX61w1hTtjkkjUrIoK8lrp5rueXuOkNUop3q5bphjp9Crgn1mC49reu1q8Z8eYrP4uDF2fzxxZLQjeqerY77r40w.h2XiMxoO8oSP+1kUVYNAnr3bW.O8mZexcQq0jW5+8SiOcVYbAyD2+YpdubAtKZvXBjxcAtZf.VVVWC3i8qElKf7uvV4ix2r4+WCnFzi0.XTkRUVf.AvuFqY3fg7FC2Yr99ypTppFZngVaas0VQG3.G.P6C9CMzPQAtnHxYuaXMH28EN+ryISy0tDdND2B3iFZngt+1ZqsPoo++i.tkIhPtfntOs7.P5fqvSqCoz3nZtIQqdtKaYY0iWYXF9oJPVnCyl++cnWPd8baqA1FcHT8MMpJ84xWeiK1foMuIzBbAd7384qkuobaE3ee0UW8pcni2ZqsVFZngFEcrXucu76vUc0g7m.WWuWtzEjMeK6AsaIlJoq7onu9w2G8cu9KyGtGseBiveedzi6JA8ZMAb8JN2M8cbOzYSaQ9b8eWi+VOZi+qTf6Csg+4FWGscobMzjwkmT2A+s9Oqcu.yffsglTN9Lb6IkIJWf+rss8CDHPfMjMmHHkF+YjQPXquvvn.Qrrr7jNf4qv0BROIv5Zu81Ym6bmTVYkwfCNn0ANvAV2INwIhqTpONebujKFgw2z+ln2DHgQPYaaGLWv5Z4yx2nkoOKvpcyDac1YmTe80uZfOqss8W2q9NBDHv2UoTOA50ZteR1py+HyZLOQtP3VWq6sYtslObiUgVH7p.tnssc4Y65eyWf4.e6GceeEbaVgb5vj.iLWYjv785+ovBgo5Bhoh6AcaiChgttOmmWlSp+yR9I96Y3F7QEQT6ae6Kon.1vCOrpiN5PUSM0nLbC9bNR.lAt2e1jhJ4.d5OelL7i8YkoHJIJhLtHxqrXsMHWmL7tc+hHS5pMdRQj98y3uP9t7MkauhHW2Ipatu8sOk6eVzwi.Og++Mbg9qJhLVEUTg5HG4HNUW0QNxQTUTQEJQjw753Mvz7s7whHpcricnN9wOdRbw+vCOr5HG4Hpcu6c67s8AYy5eyWRthFquiHhcM0TipiN5XJiJqtgLGiJhyGV+2Ll+WHhb8YTk8Nq6SJhz6bYdYtp9OiE.v0jfHUTQEyjPA6btx6pwueQjnykFey2Pzb0By45jo84WKhD28hiG+3G2Ivf3rnb3ECKDMeIktvBs3ygD54CkunC1HukSXf1UXmNwlglwcukjkggZWK9c9LsVyniNpyFsm2OEx2LO6UbDDwcXHdpP1t927kjS+tHhpiN5XFU2SocXNI.v7g0+8.A.ThHmbtLuLWU+mQjKrILL9T.OdIkTxJGbvAorxJiwFaL1yd1CVVVXYYwF23FcGpVUj78CMqfRo1.56aIanq3f.kZ9asnBF0wtgRJoDKm.BxXiMFaaaaiHQhDE3COzgNzah1F.duBp+2SQ5HkiYKQcrPq7WJfkip+Mi4tJvUcF+YdlEj43CwLAl63bc.qss1ZixJqL5ryNSrNSmc1IkUVYzVasA56idcS08hlMvnB1GGnzAGbPprxJAzjQzF23FSZsu8u+86NLcawLSM4yaQvfAaD3Q.pbu6cuzRKs.b6PvsSc2MbxyjlyLR37g0+MeyN7PwjoT2tijiWA.37yJfqIyABRJWU+motA3SiNRb8.8zSOI3h6lZpIGt39S.tY3vgWdyM27J+U+peEna39jrjbHRZQsYavPHc+MVL.yhqqBXM6bm6LQ9G8nG04G+2.9inYmq21qhHa2MCmMzTJ0lI8yaBpTpMGLXvFCDHfmeW746xWD4hJk57M2byKGcDIbLzF7FQhDoh0rl0TFZie57hHWzCJ+R.B4HbQqs1ZhGzZqsRKszBM0TSzbyMGBnDkR8DABD3ITJ0FQaWRw.tT1DUDMs4qE3AbGCBZqs13Ye1mEtsgeEKb3vkbnCcnROzgNTn1aucPGUTGcgLIjYh9nkCrj8u+8CnOjQ80WOn2bKNoer30PO13RjcLRXdc8+LvBgtuG9Pn4Ff6aKaYKzXiMl320Hrzn.ebVLFv2q+yHA.TZK+rhRJojDUx95qOmM+uHvuGsUOdO.q9G+i+wEgNjg919vIOuF5NiIRIemvgXpFk3hNXNsSo.2iw+SA.iUYeSfvVVV+rEqF+XtDowPbVNoOra5DlNeJaa6w8JCPMeW9t9NdoXwhgRo9XzV+8mJlvuqY8gUAbKwDNp8hxbVfkazP4ZParfNgD52KaXlMy7rx.JtgFZHQ9lM+uAvIAdaQjwUJ0CgtOXcs1ZqVnCPQmOWXTnwhE6oUJ0lcD12KJSWDey8u8su8DB+b3CeXmW48PONHcmt77.+JuNjvaPNc8+zwCEwiGuBkRsAklKL9R.IEdhaqs1Hb3v.LhOn8UOs9OkB.3h6iqF3AcGGtccZyhPa8iWC8oB9.fO1GcClyCzapA+CizpaCskpd2.VJf0F23FSjgQ.fqCDYg7IOlufYoU.ubt8Xurx5mmuT9tg4uQlr1d+vR2i.Dsmd5ITSM0Ds2d6IzBf4D1tutwOC5MhV9V1xVX+6e+rwMtwRqppptNv4lqd.iQ0og.Rn5eWHNPbQjwcD3wrwvSnTpRyEZdyUnRdi.2iRodjnQitY7NpHtLfU3V3m96uePuV+4XZh+79jvO4k0+SotLbf.A1EvCA7.6cu6Mw3iwFaLGAD+Pf2wGDF1Sq+SoNEbw8wOJni81NvwGfQK08mC3yC7EPySx3im9LlXBAwtShHuM2EvBWlME9JnOwEt0.fI1feStKncHWfThFcEYaai6jCRMeaa6hPugzCjM2Mc9t7yWvH75k.t7ANvAXrwFiVZokD0uVZoEFarwvgHV.V0t10tV9YNyYn+96myd1yxN24Nigl3Vt0b86vb2s2QLXc6ae6.rBfOuRo9ZQiF8GEMZz+QkR8DACF7krss+1wiGuK+7z+t3+iu.vm+EewWrZz1pv58BBSxLtY4.AceHiwGebvX6Gj4Pv9mAnVKKqerwNB7Rj2W+2XSbaE3yVRIkXcvCdvDOyn5+I.daKKqelOLFvSq+YT..Wp.phm+4e9hrssS5NNN8oO8crvy.CLvJPKUz8lOYsqEiHXvfMZYY8iiFM5OBXqnk5Ogp4.HRjHfVvfGMZzn+i9vjuBn.7cLwDSLrHxIAd6vgC+o0UWctOsO8zSOTWc0w3iONs2d67IexmPas0F82e+TZokRqs15M+C+g+v6C7dhHmNKWDNBfs6x+nG8nr28tWJojRJC8Aj9x.+GUJUyQiF8exxx5exOW+yE+e7T.U1d6sWz25a8sDLmX2KD5yn8ik.IeHigFZHPe8GSkfUqD3uF3IsssaZw1dAlCFuYf03dbQe80GG6XGCLDB0Bgqfc5rpff.AcanYSEL2OTLJbBTOEonJ3mF3w.tmpqt5DuyfCNnyOtBzjDyWv11dOEDBXtioyJfcPZrHXOIdrmuK+7ILDnyaC7tgCG9FM2byIpeG9vGlN6rSFe7wogFZfCdvCxZVyZn0Va8FQhD48A9c.+KVVVGNaHhmT0DgabvCdPFe7w4Lm4Lzc2cy1291WEZ0u1.Pi9k.3ABDXWF1X7K.7fc2c2zRKs3L+2laGg57BDBR9PFF3nYk6PC.tNPXPV.qEpLASe5l.pLCF923nO8+OO+7EN6vzYDfWCX7ppppxfjstvLXQhii1vGtqfOryUHUUAmt2ot5pyc+iTas0t9gFZnORoYRs48RhNeDYvJfWNl6aNkW2w3btF54AYc7XOeW9yCvRQuIT..10t1E6e+6mJqrRFYjQXm6bmNm35Zn2n9BnEX5RVVV+xrU3GC++eRkR8fgCGtjZqs1k0SO8jj8.TYkURkUVIM0TSL1XiwAO3AWxgNzg9b.K2KsACPu4iRo9pnOHv8Mv.CPc0UGCN3fNVl+kAtrGJzWlbi6Lo5+E8vbPrOGvxxfg+8dhHuwBgS+CSg..SLwDCa1jel1YOFva.7GxCVAbAT.9BR0JfMp+KcFaSBiywKcCu7c4mufKWcccs2d6E6Pw080WezTSM4nJ5IParUmGssuTDZCSa8111Ohss8ECFLXV4IDwiGuq.ABrNkREXngF5wqpppJc6ae6ryctSZngFR5zwkUVYbvCdPZngFXaaaaa.XbuJ9vCI17oZR+l++Yf+X9VnOWGLzIN1ufUKToBig+8v.aHGa3e9FlNa.X4.k97O+ympuElzc+elybFmrG0mb8i6pQJpBNpipPce+S6bm6zsJfiOzPCcdfOTD40yWe2KlvDSLwvl6lNSFaSBiywOF+muK+7DBBTTCMz.G8nGkRKsT1111lyl+ftc3Vnc+3GG3Kh9zwOIZUw+ksss+6CDHv2Ma9HhGO9yIh7qANAv+1wN1w9zlatYVyZVCabiaj8rm83DS3AfFarQGCErR7HixyEmDbum4Lmg5pqNmXv.nuS92TD4U83SdFOC4OcWc7U.9WQeMLKz0BEPRF92lyCF9mugYByBHSmM.XbIvnT3t+8EXzFSO.+K.uNZU7haqy03A.QAdWfeCvuwxx5vKTTEUAL0n3hKdSlEglVh.ZQjQWcKfIpppp3fG7fzYmcl3PGc2c2Td4keOn0DRMkWd4OP2c2cHWOOT4kW95AdBkR8TlSuMmQ73wetPgB8OHhzCv+u.+Jf2Lb3vWtqt5RUUUUkj.4FhyYE.qdA7cfGEvM6F5fhPaffYZ+iK.bZaa6cuXY8GilbdTfUuP2v+bio6J.9TfyWUUUUJfUu81aBidvDBPcd8q.LBvkVHI8S1B2Kz520aGUAaYY0N5PiZo0UWcIdtou3C.9MgBE5G3WeOYpN6msEo6u8LMuE5X9BQ.kmPPfhKu7xwg9wcPSM0DMzPCTWc0YALUOuzvgCuYkR8TEWbwYEI43lKDbQ.OedzBgTaKszRwNLWnq4lqzKnhby5wWF3iqppp1v.CL.szRKTas0R80W+x.dLkRc0fACdNunOWD4bJk5Vf1iubV2u5pqlgFZnkysC63oCwLZpZQAbSIxae6aeAug+4FSoQ.FJTnefILPF.3w5u+9Sm..WD3sP2.7KMFpxFDQ7jAhyGQZhQ4WyxxJWEexCBrrL3A.i4At8T5KzLTmEQ9.C8qtNzFskm0Vjlx7lVVVer4w2qo7RWd4x9CeCymHBnbMbw1kk3Nd.3lLfZokVbhG.S4yat4lcGu.lUsElM5+FJk5APOV6W55ZVFt3hK92DMZzuCPEQhDYco4OwLi+VmAvxxpGaa6UCrz5qu9D1Av.CL.0We82Gviab6trtOOPf.uuss80.hc1yd1D6STZokBZMarB7v517U3J7a+n.KYwfg+4FSYG3DSLwvgBE5fno52K4h8+v00BXilTHVpss8emss89TJ0eqss8dxV0tMeDtFP7EPeOi+6M+6Wv119a5mpe0kcYr7zn9e.t9bIvSLSJ2LTm+hJkx4dW+OfG1VjgxbKojxTd4j9C+F2sRDPtPI.AyT7..zmze5dNZOInj4xIwiFM5ynTp+CnGa8ez119+tkk0KEHPfuaf.A1kQ0vqCXkkTRII98bo17Tor04LLD9xqh9p.ub80WeBNQXfAF.ziUVqG1meEfqZX+OfDjAmimnrrL76EToTadg7bOGXhCNUAr9m+4e9DZYxkg+cYzF+2kbt9MmT95ad1foUBNWjxwGDNb3DQ7nFarQ1xV1B.OHZ9P9qhlPL9R6XG63IApQoTeoEJMDyTXlb8f.UZaa6bmigPeBsGLGrf6JAVRZn.3IP6NTdNlh57lPaUraxqaKxPYFD8hsqy11N3TjWtr+n.VjByZWkC7Xc2c2UURIkTEZAL2lRo9eWoT+eB7+FZgTuGm.lCjfxbiCDwKEJOd73cYtFv+UfK1byMSmc1oyUN3YQfPiFDtDvGcricrDBz3hN3eXzL9W5v5A1ZznQ+Q9Da.lSfwla9R.Ob4kWtalmLQjQDsFY2rRodFaa6CFMZztiFM5OcgRceFoBGCmVOLvkcngSPyHW6ZW6BzzA75Ku7xKs6t6NXO8zS.zps8dWrs.7TDlFChGceeYBl1xkBDJMzx7MvmhA.SQcVPeJMIk7y51Byu6JSSYNSgu2e323tYh.x.m3A.vsiA.t+4d5oGltmi1X1l0aDalusJfRapolRv7faYKaYUni+IeVfJpt5pWV2c2cRaPX94+Lvk759fXwh0mKg.Fo0VacxN5nCEZWw9pdU4Y3a9v.2xwp2KqrxXfAFfsrksHj44lKGMYk8zr.lM.M8+2Kvpcq5eWF9G.qF83f+RSpFzzh+SyBf59LZwUCgX7aUJ08FNb3mrt5pa4NFcygO7gcGgnbiEq2OjyccmygqMESmG.bMfq4S226TUmyl3UcALE3tYh.xbGzNrv2C1PCMPKszh6SdkT7.XZd9kYtuQ7jnOIuEvcTFohwFaLZpolHb3v2.cjB7j9QePrXw5KXvf3DLfdlm4YtGz0SOKBDZDz3q.7fG5PG5wJszR4.G3.TWc0g6qEvMRwcwKxxxZC.gmK1ew7DrT.wsg+0XiMdGtEeZvBh59LdS53wi2k4p.9cgCG9SqrxJos1ZysAnwHiLBc1YmNbG8mP1EKjmWBiw.sL222my0hfOcG7tJ6MidSfjXiLignbEQjK5Sk6TUmE+nsv76dEl6tVZLzsI9V+Qt.whEqOaa6cGJTn+KgBE5uEMqNd9z7pNDAz+8PgB8eYgtKX45pGeyvgCOdlhG.gCGNd3vgiOEOebliaD6hJfuXokVJ6YO6gd5omjVyCza52We8wd1ydXMqYMbhSbhqBbZf2Lanh3oCwhEquPgB88EQ9o.ulHxqDJTnWzKKCyeueOve5Ye1mMds0VKc1Ym2QavhXbSLtC4hQLqN8V73wet.AB7cUJ0MiDIxm8Ye1mccO6y9roZHHSfV0WukHxu0Gj9Mg+N6Nyov+n8L3xH7Vg6.jgQCHWCXT+RfGWAmoRc6A.t1vMB5Eq7ixMS04X.A7i1ByI.+PfQrrr1HZC4JFvGCfkk08ht+Nc4EEse49gKVD.0YdTf.AdaCgjjJRPDP43OMeCtXgOBGN7i1byMe+M2bygLONJ5S799.DNb3JZt4lWaJO+iPuNzqOW1H1nAlelss8xiDIxM5pqt9Lc0UWKmLevoqh1fvdWQjgxELBmi2H3m+8Kt3h+9FuA6SFZng1Tqs15pYlYqA9wUQkyV+2rFz4ANqq0flovutFNOs9Oq+EhGO9yYbOquNZqNcUba0COI5MhtrHxuymj90weme5TxuXll3SsGgR.VlyldiM1XN2Gzk.9DuRfmTb+HP2W8v.k4lXlbY.fi4im1MS04qArR+nsv0huwPuY9xQKM9c3FfoIuqAbQeTE3o6DA4xSIjuK+bFbsdia2AEL8whH+N.L9i+c77r0UPcop8uBFq82TFKgayU9QMk2m.boEargpQHfCZ38fmB88dWBI2F.2VvHaL1cAd+UQkyV+Okqf6bnqyNBAjIg.8y5N3w0+4jDSNjRCjL4q3.edvua+cNmByc4TDPPGivy3Zjw.9.ujHHLtWzig1JjKB8Ds6ERxRbcNw8X3SZeXJpyJzm3oD+psHUdvGx+DAjgfTFG8jb2m1b7bw0MjuK+7AR25Moo+sqo44dR46tLREKl1zOU3RSCI0N6.2F6s60g7g1jb55+oaMHH45qa3y0cviq+YsJS74A8IcplYfgWLs+MxFXTIzj.2p1Zqc4fNrfhl5K8L0MaFrsdfGs6t6dsG3.GfvgCSIkTB80WeI7E0d5oGm6++88KiMZZpyeDPY0Vas2SJ46opdOc0qYZddMbc0DCaLxGPe5fbx0MjuK+7Mlt93bwXfEyazOSQZZC7cMskOW+OGUeSE9d8edqEb65jNwXt+cFCu+jQWFX30rl0rIzmJ+SPGHN75MfKF3dbSzItwfCNHM2byfdw+yXbUS+BoqN+VnMRukrl0rlJveaKl2fTtZBmH.ykyUVbe9t7KfBHWf4wq+mSPtp9OuU.fLXDXyF3r.omcxHW2ITLz9GaPfQEQNoOXuCQ.tRCMzvxaqs1Rvs3CN3fbzidTNzgNDnog4A8yHP0TUmEQNmwVPFA+ssXdERUsf45Mdy2keAT.9MlOt9etDoT+qjY+d0yn5unTpTIwk4MHMABkoy.LfzXDF9gkQ62K9Z71hmBsc.rVRtNeMzm7+srrr9+NWY42YpNWXinBn.J.uFymW+OW.W0+xAdHzsCtCBSJy+5dO7ag9ZXCCDd5p+yqE.vAyTCv.xIFgQNCABDXWFpn7dQa7GAPu4+mBb9EaVabAT.EPAjJtac8eGX1G3aB7EsssSH7iCaf511.rrrrANoHxOclnI14sWAfaLUFfQ97zm9sUma5.6xobRcfe93j34ivAbAL+Coar1hYMA4xsbeXzqa9oNd5h4ZvVEZtX38BFL3KsXrMHeg7jA3kDRS++0DQ9cttFTeq+2XO.EwLi39rHYWybJwBBA.RGLpG4ah1mTiYYYcYKKqedtPcO45vArKRfwse3FyxxpIKKqdTJ0FRIeOusHeDNfKf4Wn3hKdSQiF8+F5qjZE.SZYY8mQS8vkhd7GlwedR++zwi54JgfMK9+TncAqkALlss8CYd7l.JC3FJk5diEKF.OmWV9EP9Eoq+WoTOfRo.et+2PA7NTR8zs4dLy6tthKt3MMcyClQB.LeSELFUh72.73nCDQwAF111NneG+ycElZeB.GiSIJvY8yxOC042211d4nImjGEepsXJpygUJ0Gf99oJmbTaQAj6gYy++Qf5PGKBVB5EaFEMyetJzB.n.BaaaS1z+mhvFqF8BewQS7SShlaJhaYY8mMTFLtDB1SEBw729A.Ve2c285angFnxJqb0QhD49AnjRJYEiLxHze+8u5lat4qoTpGXlr3aALyv7g8exG8+l4.OCZALVKvsrrrtGyisQS.Z1tX.UP6YVqUoTaKZznUaYYEdptp3oT.f4hQXXquPhn.Qrrr7Eivvw33Ju7xW+YO6YYrwFCiKp8g9cfWHkvTqS6WHikZ5akeFpyaDsQertxKu7GzuZKll57R.dPaaaIk7889hBH2Aylw+k.ORu81KM1XiLxHiDrwFabsgCGdsvsuKRKKqJ.9fro+2EQX8WfV6BBZgKtI5E+J17uiZNgTbfGAsPv1.mKaEBIEbS.6VZoEFYjQnmd5gsssssBHQDGzIHAYCKNuFjbMlms+SNu+OVrXeCfZQOOXUtdz0POuZDzBguFzZl0gYdKy7diCrZyemzpQhLJ.PFN02r56GXDu9jfFNP9AA9LNweaCc3tD7nXg8Tg7Q3.dJpyKC39SS9dZawTTmsvmBGvEv7GXNA1ZA1vd26dwIxnUYkUxfCNHUVYkIhNkiLxHfdy4473OS4UJv8ZaaWlqGI.KyxxJgvF0VasOvPCMzJ.TkWd4qzDYLw35Xm2qDB0xx5WZaau4HQhTwAO3AW1AO3AYu6cu.5nC292+9IRjH2.3BhHmNaKu61w7s8exG8+Jk5g.dnd6s2U4Lmqu95issss4P20ehkk0O2XCBqFnrt6t6D7FSe80Woaaaa6gTJ0FynFITJkjtTf.A9xhH8KhDUMGgHRTQj9CDHvWNSkyrMIh7CEQdOQD0niNpRoTp8su8oDQtkHxuvKKqzkrrr9dhHusHRp0UkHx.VVV61qKyonNGSDYb+tsXZpyWOW1VTHk6StVKH1vCOrRoTpZpoF0pV0pRLtyAlweWUD4UJpnhpZtVllw7CHhLgy3Ky3Jky++3G+3pie7imHOm+uq2808xwfhHcHh7NhHpScpSknNepScJmx6cDQ5Hap2ER2wXt4M6+jq6+Mk2YqnhJRpdUSM0nLq6+xVVV6VD4kEQFulZpIo2qhJpPIhbVQjtxTYjQUonx7o9lMHHPoJO5jftnHfCHTRC..f.PRDEDU20s8su8DThq4TuWGHheS5CpzDZbcEFR87vA7zTmiCrb+tsXZpyjqZKJf7JlDXBmvP8PCMDQhDg5pqtDgF195qOGBp5b.WNaN0kILz9dbmQ3xDTaZSM0DM1Xir8sucpt5powFaLUVybFGtymIvX0++IfwLp6EHgpeGG3LVVV+7Eqp+u3hKdSNoo54dQYMeb+GyI6OKvmll9+OE3bdYHY2TdWJb3vzYmclH+1ZqMPqp++BkNxf9W.rJS9.Pmc1oCMweIm.lU5vz03ljZWb76voCovYwyVU2jQXTm2pAVt6.hiqM8tVNvE3tiPiqIH3bU7g.xyzTmiCTje1VLM04njR3.1OaKxv2Vg6a0mggUxtHv6aYYUNZUwOJvmFNb30Te80uFzyyuIvG.7Gx1fA0DSLwvABD38TZ2tx8B32zTVDIRD1+92Oc1Ymb1ydV5ryNIRjHYSwNkvzNDA3xCMzPqvxxxYsME54bK011tofACxhEOfwkgnsdzqCsTzFeYDzAgragd8gRM+abKKKOIRLx7j8eRwVD9L.wFZngR86INvFTJUoQiF8o7B6OHXvf+lnQi9k.p7.G3.q0QniFarQ1xV1Bm3DmXinExs7srksj3p4.3.G3.fIbYOUzD+bQ5pqAbdzgfV2vIbDt7632vifQRt6AHoJqYR+07RoulBjoPi6GgGFNfcvzTmUYHeutsXpBGvkjqZKfz5Nh3gK3T.oAoDVTcDpaTts6+cenuy+aBbgPgB8C7n99Kg1npTba6LIt6W3PG5Prm8rG13F2H0We8o96OmhdJoClwc+mPaHjafj2XQPaiNqFnbaa6UGHPfM3GThswezeZkRsYQj2NXvf+F+R.Xyl+eGfZ.pfjWaWgls8toI+U35YQA9Haa605CsC4z8eL1hPS.OIPkjYaaY0lD3Q1efQH3eqRo9LQhD4d2+92ukIfqQmc1IUUUUKEnJfft0PfwdDrA9ShH+1op7mKpH67.8ZYYse2IfdMOKegaxcptPOEoKz3ZBGuQwiCGvyPDKC46YsESQcNNZWNQxUsEABD36Zaa+2CrMfFA92aRMhNFY+2GHPfuqWWtEfN9CXaau6PgB8sCEJz21119+rss821119+bnPg9+HTnPsZaa+2Xaa2ZNViLwZokVbhDkJW4qxv6OqgYy++NfuHvmaW6ZWKq2d6Eaa6DoAFX.d9m+4WZ4kWdk.OtRodJuRc3tgwez+Z.eQkR82FMZzuiwHg8TX17e+nMBuGau6cuK+Lm4LIpu81auR0UW8p.V2V1xVVw.CLPhm0c2cGp7xKe8.+0Jk5q5wee4z8eLq+sVfMXaaWj697oHEDsgKttoxkEmgkeWns1+yenCcHFarw.zFf61291AH31291w4p4FarwbtFtK.LxzFj3xnwAnMtf2vsAdYLzg2HcFVyr88mKoLYXH9gwFltTQEUTUhH+BQjq5X7StMzB+v3elh5rsHxGHhX6msESQc9CLFo00xEsElwWupHx3UTQEpibjijnNejibDmxNhHRuEL9vEGISe9qIhLoRoThHwEQtrHRbW++vFCT88DQNuy7AQjIEQdMuXrfwXrduTM9qLAQjq3GFjrYt3KKhbg1aucaiARNrHR2dcYYZ6OoHhcGczQFqqY5YiN5npUspUoLsacLGK+799Ol0e+EhHWOiMBoAlx9jdw3Oy2PuhHStu8su6nM1sg3ZLB2Imo6A3oFIieCycJ6DgjhZYYgkkUTxsQ8ImPi6UsrrtY3vgOOveTD424SD.TlpyCi1HoFNGzVj15LZCh4rqYMq4Z9YaQwEW7lTZdP3wKu7xW0fCNXRF6USM0DCN3fTd4kuRfGU4Sm9p.xsvXDoQPqoIL+63t9+eJ54A+Klzvlm67tQxVCQ0LN5y.7Ps2d6IhJm8zSOrwMtQLy6nzRKkctycRe80GnUO8D9j8.sBfx9Vequkzd6sWDZ0R+T1116wKOosY9VEUWc0hycOO3fCln95X3mNOqs1ZCKKqDFqVYkUFFaS5y.r1EpyGM8gWF3bVVVS5T+SM4bxb.m1FEvM8BCg1bsluOvGdnCcHGWskxJqLFbvASX.3iLxHNm9+CABOSF+sfhJfSIVneVLTRKl6+0uU8XlBMtVVV+L+5tmmp5rbaZ388wPCu3wsEy1vArezVXV3ac.qss1ZKw.d2nrxJi1ZqMZt4lWK2V0aELNvEvvXzcW.3csrrVM5M7+Xz7v+pPaGBCGJTne.jfrhJx7tiBbgrcSXy3nx.Jdm6bmIxu4la14GuFv0iDIBG6XGK3wN1wl.87jy60qGYZOlDvdvAGjVZoEJszRo4la9AABYaaGvKtycyl0qFX0tqyFCKKwO2e+8m3+at9ONvANPBgBZngF3PG5PKCXUKTmOlh8ubdz1CUwnEDac.Kq6t6NwZRiM1XNGNYTfOxqDBz3u+ODv5NvANvRLFacBU+CI5etEv6LS2CXAk..vcFKzgbqUfmOhE6SWc1uaKll5btpsnDf.o3lWIglZpIZt4lC.Thxac8zDXlbmddIcjluK+7IlXhIFt3hK9GXrB8U.bUQj2VoTa14+6llSS8c8vnkY.fjD7r7xK2wMqVNZiMLBvmfV.kyYYY8K8fxMILwDSLrkk0kAtb80WeECLv.zTSM4X.jqE3IUJEACF7bYiP3lwXk.TjaO7w3gQeJf0YO6YWo6eGSaQRdggqe26wqlOlOf60+hGOdE111eEf5A1vV1xVRRajG3.GfvgCGGsA38dd07uXwh0mkk0WAn7icri8YGYjQRZy+QFYDGCv9b.evLs+eAm..NHeuvV9n7yTYlq9Vx2ketDywXQNf2PGo46xe9BLis91d86NKwMA8hrNK5d1ydV5qu9n+96m96u+UNzPCsRzp88i.lToTOAfm2laYY0iss8pAtm5qu96afAFf5pqNFXfAn95q+9.p1119alMVetZp87nqBP3vgWY59ccCWBL4YtBd9DFARw11d8.ObIkTRP27gRe80Gc0UWf45YCFL3K4kkugMB2DvFZpolVlQfL.bDB4lX3hhY5eyErB.T.20gH.w6omdxnV.LSFiSVd2uyBW+Y5vjncGnYEmzmuK+B31vn18KCLdKszRotU6ciM1XRaP1SO8HG3.GXcgCG9dTJEABDXWdsq.FKVr9BDHvFTJ0x.9B0We8Kq81amVZoENyYNCUUUU2Kvp8.UtmIAMuU5dVJ9d+c73r36XdELWyzlAVSO8zSRp9eaaaafNvX8G7iqj1nEfuNvnCMzPKy8yFZng.sFntvrQX+ETFAXAb2ILpz9R.W9.G3.IYvMNXrwFyM4Wbor4t2lit9S5REg1mwefYi6.kuK+B31XhIlXXQj2F3OchSbhIZngFRX.bohEYFi5TE1YmManGGX7ECrBZf.A1E5.N0l10t1URB+YNTxs.9ChH+J+RiaF9c4JY3wyZ9eof..Ev7dXVD9j.uU3vguRc0UWRTQbO8zC0UWcDNb3q.7VhHmrvocK.uBFU4N.v.m3DmXr5qu9DV8emc1YBqxFtswnhV.tr1OvSy2RiJk5qhlPhV1.CL.szRKL3fCRUUUEnsAAufENiO8uxsQFrN9Xn0BQtxCs7MXZ22FviURIkDJUZ28Dm3D.7N.useP.TtfC4XkNDiYI+uT3J.JfEDHd73cEHPf0oTp3gCG9wZt4lu+latYmwuwPe2quoHxqmsS.co12yYBswYiJ3OGvEmMK.luK+BHYXt62WzXfg+YfGLRjH22wN1wVywN1wVA.NpgG7GiQ0AlqF5wARb++CN3fNrf3eFXHKKqelGH.bl1jYpFKdCzVJ+MQaCJWA3C8num7Fbckb+6.VsaU+OxHiPqs1Jnc8t+MSLrXACJH.PArfAwiG+4RGU.iK2ezKT8VFb8mYrQ3gdwynnsagyOauOv7c4W.ICW7g+5LYE1jJE8Ur7vs1Zqh6.DiAdpwu4JrLuVmM+6omdbbIwKC7uJh7pY6b.QjyoTpqCZCayQU2kTRIDIRjU57yoA2DsqJOF58VhAL9BcgOiEK1SC7YA1j6vgMjvHIuAv6B7wwiGuhhKt3ELFFcAA.JfETvwkb.+MX.kNWuDxctgW9t7KfaCige8WhlO7KBMQ+bMzBZUJf3dCQW1nxs7xuCWzxsUc0UGc1YmNm97h.CHh7pdg5mcEzil7zm9zE4rgWs0VKm3DmnTme1MLAmlUiNtAbCzB+DE3bFgm7Cuyv2ggDx9R.Ob4kWt3vE+fly8Mt+XbfGBX0111+0111KX79lBB.T.KXQtXyszTF4zMTy2k+c6v0otqZfAFnridziR+82OCMzPq04c1xV1BtuSXylD2.XrokK1mEvrw7UAFqiN5XcOyy7LQQqgn+fkk0g8pMaL7Mvn.idzidz04P.Ps0VaIB3Rtquf9dvapolRztTc0Uy92+9o4ladY.iVbwEuoEhBiZD559wn5eGL3fC5v5dfl2IbGLjVv38MED.n.JfBn.lZDDnn5pqtDTAblPe80myFCmC3Bd4h+lnC2anTpk8LOyy7QnCAwm0OXeSQjSpTppFZngt+N6rSokVZg5pqt6vc+5ryNokVZgJqrRb6W5NvH.PwKTYBPCVJf3tuOcsEtPQVVVa.HrOUuiNKyOinfW.T.EPAT.SMFE3i23F2H6YO6g95qujbE0wFaL5omdXm6bmN9B94.dC+HhXFLXvWRD4U.dMQjeZnPg999gZlMZt3OA7ds1Zqr+8u+j71gd5oGps1Zo0VakZqsV5omdRzl3zdXtlfOEHxBb6.3ZLG1b0OfwcJGm6LRvFi4f6VNWz.PPkRs4TC7DF54rfFEJfBn.Vz.yotOoRoVd3vguUWc00C1UWcsb.IkW0F8lcgAdS+J9fXznPN4puJt3hOXznQCBL4gNzgp3PG5PK20q3DNvu4PCMzRat4lWIIyc.QQ6YN+woKlzOKQNc+Gy0tbdzZZYiLyLrSey6aLeONAGNmumnnM9xYs6VNWZvVO5Xu9SmR9EadVAT.EPArnAwiGuqfACdNCGvudfUgVsvNaF33wEiIh7dACF7klOeuuyTXDB36aLhu0iN.AsTLrsIZq8+Zn8FmxvDuNb87KJh767X+hOmt+SJdjy4Xp8HGe26a75.h2bQ.fki1kHJfBn.Jf6JfauOAtyfzDr3ziKbGeERsNmo.RV5dtGhb99OyTOxIW48MdY.wa5D.Ho68XZ364YzeiBn.JfBXgNVLtY+zgopN6SsGyq1+Y9lG43Es4YzH.mBiMX1f4jgIT.EPAT.Evcunv9O4FjQM.jAiMX1fX.ivh.dft.JfBn.JfbGJr+StAYT.fTL1foy3GbiBzPZAT.EPAT.yYTX+mbCDkRkp6rbGX1PGoEngzBn.JfBn.7JTX+G+CyHA.JfBn.JfBn.JfEWXAMw83EtAwhAb2fKIMaB7O9YPBZ9DlJ2xJWTlNk2ciyCuaXNWAL+CoSaHYiVOVPpAfzDRX8zvA6BAXZC95nCTIqFSTBCcDHKBvkWn2d3JLrVNZxWI.551EBEJzOHU+P1D019Lnuuv3XXlsPgB8h9why4CAMxP+NnCEqeJ598etW2uml4b2D3iMO9dQSPLKpmG5pseMnC9KNs8SBbUfOwOZ6KfBv07u0ycZOD2gcOLSGCtfSC.EWbwax119aB7D.IQEh111Ay0QeIWaRsBfq5Wa1jlxaynIDi6CMKX4FS.7Q111qMPf.aviYhqbFhEK12.nVfGEcXWEzB3LRznQWRwEW722vVYaJZzneGf5.pDXIl2cbfUa967bd02kqIiqE.KKqbhvVABDXWJk5uA3ygN1zujTdka.bIuteOCy4hQxB.Djb37vb8IvM84+c.OB2VHnPb6EfuI9PaeAL+D4xwel4eMA7jnWeqnL7py5nP3BtfAjw.PVGvFsssCYaaisscHzKL8fyj3ktWAWm5rdfu.P8QiF8+V5Fb3Uvr4e8.egRJoj02d6sW7YNyYvzNvYNyYn81au3pqt5M.73Jk5K4meO9ITJ0CA7f81auk5T+5s2dWB5M.erXwh8MJt3h2jYC9MC745s2dWhq2sTfGToTOjW0F3ZyvmDXKlzSZaa+M8y1Yyl+eMfmrjRJoh1au8k3teefAFfm+4e9kUd4kWIP0Jk5o7pumLLmKnIu0YaaGLWLOLXvfMZYY0tkk0QiFM5OJZznG1j9QQiF8ErrrZOUNh2qfgFfKulZpox1au866Lm4LKyzVD3Lm4LgZu81WYIkTxi.7jJk5qEHPfc4GeGEP9C4qwel4RqEXC111E4LmOMoh.1.vCLim+oTJYgTJPf.eYQjSJhnbCQDkHxIsrr1cN9a4WHh7IlugOQD4WDHPfurOVd8Jhb8cricnlNHhbU+76wuShHcHh7dqZUqJo5UM0TSh5lkk02yzGb0ZpoljduUspUoDQdOQjN739f9EQlzU67jhH86WsyEUTQUIh7SDQNeEUTgZzQG8N6rcAQjq4k86SybtzkmmNOzT+6vL1+cLyyttoceRyO+Ilm0qHRGEUTQU4Ck+P80WeQ2wN1gsYrkRDQsicrC0niNpZzQGUUQEUnDQ9.QjehW9MTHk+R46wet1m45poAlukWclN2eAmF.LHcgmwn.2LWx5SJkZCnCBFqzj0JAJyjumCiZfdjRJojk0YmclH+N6rSJszRwxxBKKKZngFnu95CzpKehEpDggHxoAtPjHQraqs1RjeO8zCnUA6inTppQqV1kaxG.1+92OQhDIFvEL+c7DX5aKkjIljP.k5W86tNA9Zaqs1nrxJiAGbP13F2Xh9bmPU6fCNHn62i4w86yzPhpmNOLXvfMZtdm+Jf+ppqt5Gt81ae0tNAdnyblyrr1au8UWc0U+vNuWznQ+Nd0owlXhIFVD4h.i9k+xe4KbricrwiDIx3ns4hIO1wNFM0TSTVYkgYb58Crtbo1HK.+AoL9q9pqt5GIWO9yLO9x.myxxZRm47oIM6iBg4aoqliRi8SLmrKlQJ7Xl+eNQp6hJpnpbcxyK3bJHy2xGHh7xdslHL06WQD4FuvK7BIj36HG4HNk60EQNqIcQy2wqIh7Cy28YYSRDoKScIoS9t6cuakHRTS8M5t28tS7rgGdXm1jyJhzkWNlvxxZ2hHug6S9ZJq2vuz9j4D.udZJSkHxGIhLrYb3nl99S5kmBw0bt2wbhGm19KZRQM4Mo4c7j4glx8eVD4sbF2O7vCq18t2sx8IvW0pVkZ26d2pgGdX0K7BufRD4FhHusHx+rWnEDWm.70Ls22RDw1UePBMgL5ni57+e8bo1HKj79jqweusHxsxWi+TpDqAzkQCCutHxoMogL+6qadVWylxbAmQ.ZhO2mUoT2mIKGu.XXQjy52F.Xf.A9tpaepyGB3dR4UVO5XV8xBDH.dkw.YNMwpAVZs0Vah7O7gOLnOw2+JvaZxdE.Hh7AACF7kx1x14d1U56jOi+cS26js8GVVV8XaaWNv82RKsD5nG8n.Pas0Fc0UWAApv4+6fVZoEP2lbFQje2hQ2ypjRJgHQh.5Xx96h1BfChw377RiQMCgfzozK.x1x1k807YA13.CLvRO8oOMUUUU2w6FIRD5pqtnqt5h1aucFXfAVZ80We4.SXaa+0yVCRzXiIOBviURIkrp1ZqMZngFnxJq7Nd2xJqrDUg4Z4McvLe7oUJ0lEQd6fAC9abLF1zkue8crXFoL9qhAFXfhyWi+foNhDlUjeT9VJq4RxHM9PlS8Za92g756dIMRC1g4zUWQDQs6cua0wO9wUNXzQGUcjibDm6n97hH+yd02i4jmmVR+ct9AhGdO2oor+dhHup4zcgMs0+ZQeW3ul4m+0lSFG17dupkk02yip2upHx3hHpScpSkntuu8sOkHhZe6aeIx63G+3NsIiIZaDvSOEVdTC.8KhnNxQNhRoTpScpS4beyNi05UDoC+1dOJpnhpxIMU44Qsy8KhL1K7BufpiN5HwIt1291WRiCN0oNkZqacq1hH2TDIdGczgyIwFSDo+roewLuuaQjKu0stUkRo0vzN1wNR5z+4pwClwB+Dy7tSala7CMsW2Q994XgEyoLM9KcX3gGNowmd43O+NsfS..WpB+JNa9ZVz+JhHuheI.fYSvSJhLwV25Vy4FhkY.4PYP.f21K1rcJZu6RD48Zu81sc1zMSo8su8oZu81sE8UxjUpe2cY672OUC8K0+uqMEUdw2PF5GxWB.DKUi.zrPixr42aIdnZGyWI2860TSM1ttRmDa76dbXEUTQrd5omnFAgunHR7gGdXUM0TSVONzUausSYaDv21TdumnuR.ee7f4aoaQekOSXlmcAQeUjuRZx+k8pqhwcJPf.e4Lk7CgAmOM9Kk9XkXNHnRkzgOTd03O+NsfS..yjfesHhJEA.ThH+Z+XwOWVg4UbNEfRoOwu4tnSLnXqacqNeOerWMAToRH.xamIA.DQ9gNS.8x5tq6+8CbNosiVNbVPzbBrDmN0r3bVaIzyFqeMcPlkVD6LreHmK.fHxOzou2s8e3.2iCc1PX97oNltjKg7GsiN5HQcyY7mqSacYiPOugnO0auh9Dvit6cuam2aTQjWYtNFHcd.gorGWt8osi5dcA+X7f463kEs1dTczQGNkkicW7Qoj+MEQ5MaF6OM26blRy46id9RJSi+xj..oI+3d03O+NsPU.fWOCB.3KFdiYA32QRwPzbeZSWc9SJ5Sg3IFfmqIgulHRjLH.vUMaPLfeLwyT+eKwkJnyDbYThuU1V+M08WMKD.3FKzE.vrXzKKhbEmSZbpScJkXb+rgGd3DeGtlG3qtipembcp6aN7vCmXdli.ml+eDivg+PmjQH4ehHxvUTQENFC5MkrvEMcefCm1ZiAfMoQXqq39ayOFOXFy8JNax69ZfLk0MRS9WOaFC35TvusHxDotg2LHEU7PCBcdv3uIyj..onAf3hHQ7pwe9cZAm..SycgeZex56eYQjq41RyccJjqmh..um48+gY6.+TlD5Xo0oqd6NMg488L0NYlP7ZhKUvepScJGUglj1.15V2py2wqks8Ett+0KjZ8zssWnTIq9MWoKHhzsObE.IM9yuF64psOca.kHsu8suDBlN5ni577Er9htoM9jhHQc09lZ68YkzX2KFgARbUYl4MyYdIv07+wb3diScpSknOnhJp3NFK5kiGL8+uhn01QRZcy8XfzjeV4ALYq12b0164a9k5UR30W6PFF+cc2iAciTz.2GYl64tMHmxOMyp5Z1XYh4Qjou6PYH+4LbY882yN24NSjuw56uAvntdcEvmJhzqss82Nas7yTX.JG1VKo2wSXCpY3mCn4b.Pao8CMzP.b8gFZHGKuOIqwW7QNYnolZZJ++9EL0owIYehOJv39Q8Uo4VfkBjvpyMV++sPa8+e3gNzgnt5piwFaLJqrxb5iVr6K5NzuquByb3OA3hG6XGiFZnA.X7wGGaaa5qu93rm8rTZokl5u508hwCFt+nZf6afAFf5pqNFbvAo95qOw63jemc1oS9WB3O5EdiQVhf3g7iggI99wFl26mFMZztck9oQiF8GYYY8i8K1fzMJszRYO6YOIlyc1ydVmGcEzTx6BBrPU.f.4pBxL38d.nwFu83JyleeJZg.bCaVbhh.nt5pCHQ8+5.e.Fg.b+bf.Y6DeylWqDXUoJny3iOdRuqyBxtSnIrmU5kaBZb4lODXXKKqaXYYcCfgA9P+fvkLahDGfwFaL.XW6ZWfNN.rBfK.7tgCGNw3SivPg.JwqV7MWBSc9l.wFYjQn7xKG.GRNx4+WFP4VVV+SNo.AB7cQ2muhxKubFYjQ.saQlsDSzMQGeMl7Dm3DTe80mf7Uppppn0VakHQhjHOzyKhjEkGPB9les.26YNyYnt5pid5omj172I+N6rSZs0VA8FP+AQjWMahMEyBxm4NRo.O4PYovG9OMvmGnFWoOuI+mz11torgFryv3ujpGNt9myAebQBYqFue7mugEpB.jqQlFDGEcGrufTlDFKcSv7D1fZlg3vsWDt5pqFzBF8P.2i4+m34.S5QC5imE+tJOn7SBSLwDCaYY8y.F.3+OSZ.KKqelebZKSe3X.2zn0IN7gOriP.O.5Xfvx.lvQHrE5vTmuJv06u+9SbpaGNfvnItRA9qAZDXq.eQkR8Tn09UoMzPCze+8C5MiuZV9IsT.qie7iGLMZbKcBddEfquPkANgDiy6A3eA32.76.98lzeHMo+DYe6bFwLjO78DselgweoaOfnG6XGi95qOJqrx34e9mGzBltFOd7m+g78cPLGuel2H06iQ7ICwxTdCjgx6BFCcwIOawiMDw4CFAnoM30DiWNnTY1F.bxyCsAfLZHRoocvWsEhT5S9Il15dEQ9I9oQ9HZ9m3cR01GN9wOdRFhpi8YXLDynRVZE34yjoe+cpnhJhOWcCvJpnh3l1srZLfw3B60Le+lRZXAPSdQEsue+5oy9Dxh1gvyj6+2kcIcQwCs77Yha.JoX6EJ8GuWaKDSqMIHdjm+joweoT2NuHxUpnhJRjuisgXF+Y6Ei+7yTAA.lYC790ot3qYitqKIavG1hHC3GF7wz3FfuiXHAF+Xfljm7B.Ws+tcEo2xHvS5ZG7UAgTpjbKx21z+ecyO6aFbmK++9CDIYhORozK76laJLiMur3gDQUtNYlm2qHxnYAQ.MpHRudjfn+PQaLf8KZCDKcoesYSJOiPxxWFA3b76z2BRVyPuRvyD5OSi+bU2Tl8gdaQts6Wd7ie7TIBnrd7melJH.vLaf2qHhbc2K75ZAoa3R..O0K.RodOiD.vMYb3g0+6fG.15V2ZRK5TSM0347.PpeGtVHNmyGBNo7Qz.zU41souNV5r97QGcT2dgw.9E4PkKRtXdySKhbiScpSkjP.YJ0QGc31M3NsWtYry2U5NMreR.N4C2.bN1e4qBFOE7Rfmy8.oL96loY7miFmB6VfDWi+lT7Y1o0KRED.XFjLCDdOQRlG.b4771Tq...H.jDQAQkta2eC4Sd.vyIhi7IS.Neo+OMkeNyM.SSegSPo4iEiZ+cyE.FA.hIKfU+eJ02zFLfbe0GUTQEoKXrrnfUDcRtzDvEb1nQoTNq23KDAzb7arKQqEjegWsYb5FW3mtAXZF+cGACnoY7mSex79weED.XFjbc+SW0MieoT5S65Du5EwaYBv4HO.3GpCK0XAvaH2l++eMQeh3esQ.DOMV.Len+e5J+bUY6Llvzezs463lR5UA7qMeewmYRxk8VbZQjQqnhJh2QGcjjPONbwt4N+G07t9pcYjGaKdYIGSEvy1zBcp.NMs4Ni+FqhJpvdJF+YKZ09OzBgM+UJkHJkRx2Fh3rAABDXWJk5aATiaeh2Xc7+dQjN7pHvWJk62UoTaC3uZKaYKg5omdbG4utCXYYccfeskk0+y4p63DLXvFsss+uBrEaa6kMa+8Mtn1u0xx5+qrwkfRWz.TD40cakywiGuBkR8DJONZ.lJxW8+oT9+WAdLmx2T1uoHx+S+prMQmrmAcj2KHZd.XIniRcONfjx2yoDQ9w9YaQtBthLaODP4naCtGzsCf1SbtN5nSXXfOHTnP+fEiQBOyZBeSfMhtM3x.uqHxaqzdAQR4aaa+syeesKNPZF+cen87F2i+tAvelEXi+VvENfEQNmRoFGcit6u+X3SjwB.ACF7khFM5C.D3Dm3DadMqYMqXW6ZWryctyD9e8XiMF82e+bvCdPPSVLQVH6JPNvLP94llWaXf4rPFyTju5+y2vr.zigN7GWLZA.tI5PyqTRIkj5uxhF9nvL9qUyleecfUg1M.Kx7JShd91mZYY8yyFgcmuiXwh0WwEW76mgvA7uI07y2euKFvh4weK3D.HPf.uuss8GBLhkk0FQ6elQQGmx8ExXAt8f.il.tDvizUWcsgt5pqkAZF4aMqYMNu9kPehvea1HEnot5vC.UxsGvMSfewG.4Uju5+ymvEgv7HCLv.q9vG9vze+8S3vgAzDiiCQjX92n.QVrILjSLQGRzljDVHbhKu.l54cTWyT9Ef2fEii+VvI.vDSLwvACF7mYaaGC8h9KG3Z.WLWP8kwiG+4boN1MATKv5b8JmGX.QjdyV0uZpq8XTs64AJgaSHEYhDmrwrA.v4mGPGndJx28+4QDDn35pqN2rsXRXrwFygYxtHvkVLJLjCVD2OW.K.vhkweK3D..tsjXtkBKW1gXJqus49fKCXMb6ShdduXyeGjt5JjfYrtC3dQ+EKCRSE469+7DFEXzMtwMt78rm8PCMzPBAAFYjQn+962gJX+y.uoewLgEPAT.KdvBRA.bP9dANy8QOFZp+b0l+cL+P0qootdW+h64w9+nyv77DLwDSLbf.ANoRoJIb3vS9rO6y9Yd1m8YS0nPuI5XTvaHhz6Bo6gr.JfBH+fEzB.jug49nu.v6ZYYsZzmR6BKlU85c6vkQHFkaecL9Vz.zAwiGuqfACdNiQHsVzFhzRMO9lnCLUWdglQHU.EPAj+PAA.xBXr71efwd.VAvUCEJzKlu0LQA3evkQHNrkkkSj16bjCL.wEiFgTAT.EP9CK33AfBn.x2v3NPMg9j3f9j28T3j2EPAT.KjPAA.J.OAEWbwa5tsSf5bJ761p2EvcuHeOlOeV9op0sECy6KH.PALmgKFxZsnImlqXHfDOmA.KfBn.x8vEKf9vnYfwhPayIWLWn0q7c46h7eVC5q40gKVtIZC998VHudWVYC.4aoAymHeW2y2RiZlX7eBnNfGDH.vXJkpzXwhcIVD6kBoykLuav8Kmug4KyAWr1e6h1gqBMCTtZza.NAPXaa6fEWbwuueU+mmT9+cnoa6G.s..NF9aLfqoTpOaznQ2XvfA+Y45q.zKbC5Ys..tt+yG.MIrfkkUBhXYw78flFoACXYYMIveVD4jNTxYNr7SHMpkkUNSZzhKt3MYFCTOPUCLv.TWc0Qmc14CzZqsNpRopEXAOGz6FFNe3oPyC3kflG9cfkslslhBDwxx57K1mKjOPlNMnkkU93znkgwKLrrrVTbZvTgss8WAnpUspUs4cricrp8rm83v8DEaXgyOzvGI9R8cdR4WdM0TSk6d26dE6bm6LQ7eou95K3QO5QWRWc00pAVpsscL+TXD2HM6Aes45bfYk..FZv8I.dTf6mjcCpOx119ABDHvSDOd7oi23WvgTjFb8nC3FAPKI3UTJUUQiF8yWbwEeP+XPv7IoQiEK12.8XfJe9m+4ot5piAGbPZs0VU.2RD4h9UYmqgqq4Xyna6WCYlEFAcewH98oStaC46SCZFGrefOqo7cyJmQAhnTpMEMZzGxuVCHWByoKWAvJFXfAJ4ke4WllZpIN6YOqyqDBnTkRsgL9GYge4uTfPs0VaKsyN6T0ZqsJ.TRIkPas0FG9vGlctycJaaaaaC.i3mBi396xLO3IPG3mRPE5yo4.yzvFnILn9plPhn5HG4HIBGhG4HGwI9HOlHRu4hvhZNOrIJxOTD40qs1Zuh659oN0oT6XG6vI76dZQjeneV90UWcWqiN5PM5nil3a33G+3pcu6cqDQr8pP.blRthK4iUSM0nTJc3vzDBZufHR2KDBClyjjIbL2gI7dFslZpIow8YBlP2b+KVZGlOjLi+OYokV536d26NQ3O1zdOoe1d6Jrb+VhHSricrijJeWqALo4c7s4e4xjIrS2qIDeOYtNDXOOo7+El0TufHxmHhbCIkvxtHR7b07cy5u8JhLoxElqyAlpSxjjTGJs5OerxKu7RGbvAoolZJwyapolXvAGjxKu7RA1rRodpz4mxKTQpRC1VasEyxxBKKKN8oOMG8nGk8t28VD5SmTtWW2cW9uvK7BE2e+8qVyZVCVVVTZokxYO6Y4vG9vzau8J.a.XsYhpfyV3nVLfR6omdXrwFyIZH9o.+QQje0hEUeGKVrmF8I+ez8t28F7zm9zIMteJPP7wSmb2FR8zfabiaL09Ae8zftz30C2d6sWzQO5Q4vG9v3rFvgO7g4nG8nzd6sGB3gAdTyuyBZDLXvWRD4j.CgN7Be2X4eJf2EcrUYI.KsjRJg1auc.ns1ZCzZg5l4vOskys09jCBArzY8bfYqTGNm.piN5vQJLUGczgRozZBvHIRu4BogJpnhpJWIosKoAOsQJ+gEQtoijfiN5nNsGuleT2muHMp4Dwuky3.yIetlHxu1xx56kK5uyTe9z87YaYIh7OKhbYGMcjN3z9mqOcxcao70oAcMN3i25V2pRoRZsuO1jRrF3V25Vcxu6ECZAvUa+akuFimOKeS++OQD48To.iVWcz7cNo+1rWb+hHQc+sLW053LRC.FTBPHGIuMAdjj9YyyBAThxGO8SvfAazxx5GGMZz+onQi9OYYY8iCFLXi9U4YJyWRD4+GfSA75.+Izwjc.RXbH.E4G08YgznShOJMpnue+KzbyMeQKKqqdricrKC76A9CACF7k7ixzU+8+inQi9+JZzn+Ob2mOcOet.iFTtWf0r+8ueuppT.yQjuNMnYbv8CT1d1yd.fCe3CC539wu2jthIOLuSY.qwuzBWd.WBcTF8ttx2be5iC7wVVViaYYQs0VKCN3fb3CeX1912NncA5hyEeOFuM5SLeOIzBEvGC7IyV1HcAGU.6xHHpGs5tA3b9sQ.4JVa2kwXHeTfUs28tW.cDYyfIEeJX.UbwE+RQiFci.AsssuG2OeO6YOzUWcA5M+uteQKsACF7khEKFJMe3WLv0Eez5mmNidIXvf3oFESxnD.qFZngo68tEI6U.EfGCSe3yYl6UEZWO02gQX9UBX4b3mgFZHPG2ObliU0PCMzJA8gfZt4ls.VoWcP.i2G7zJkZyhlmM9Ml0CRa9dQYV.2FVVV+Raa6kh9fWaZngFZSM1Xix3iONs0VabricrkArpbgQ.50X1nAfH.Q6omd.HwoNc+ylmEEHherIHjPh7GDXS111Ky11dY.aB3AyERbabGrm.XykWd43b5PyI.tAvn90luyGjFchIlX33wi+b111eCaa6utss8ea73weN+ZgGW82UZaaGx11Faa6P.UB7fFaRHiOetNlvr3cHHIs6jwWetTFEvbB4iSCFHM4cKzBaeSboIvo42YNAiqG90.9hJk5uMZznem.ABrqnQi9LoluOoIz0Q5OrXPkRs4bf8dkWJ+hKt3MEHPfcYb85f.WDsPeQhDIB.TYkU575y96eeN.y5YqAXsl05P6AxbeLGz5zLRC.l.fxk.t7ANvAdvFZnAZokVnkVZIw6L1XiwANvA.s54tjWtIn6NXyB9qljMBhP.q1119qDLXPG0j34DzQvfAaToTeUf+JfUzWe8QYkUFCN3fbnCcHPGTXtreJEtKoQuFPEKljFMcvLopTtywpAM4uzo54Y4jReKD+lsvKHAjBXFi3oIukvsiFioS6Oo62YVCiAX+uC3wewW7EW2y7LOSTfGPoTkfdLdR4aaaujfAChWXHttbA1JPuASpXc.0GMZz0a3BlkX9ltkWnUv7c4aD75uB8ALVJZW7ck.kTc0UCjjleWlRo9pVVVayqJ+zAy5Yql67v6AXNrd2LR..Wwi76Kb3v2Sc0UWos0VaIrD2d5oGNvAN.gCGdbf2VD4jdQE2EgGrdtse2tTRu5+pDnXaa6unsssmSHKlukVAdRf0Lv.CPkUVICN3fTe80C56k4csrr94YaYkN3Rce0hte67lGcuQhDYUPtWZzbHR0hWcmevo44yIH5v9aD.UO8ziLCs9eeGdIIfr.ES4oA85ByLN3J3ZbP0UWMCMzPqF8FS.rZmMDLZAUglVryZsfZDjeE.k8s9VeKQDonVas0JQ22+o.2aJ4WryUiksiGLQ4zGCsmvrpz7JqB3uFs1guA59EKfqpTp6MVrX.Lm4Dl7Y4aD75A.dvie7i+ns0VaANwINg.vV1xVbr2J2GB9APSI5dV8OcvLFujL73YiF8AlE1.P73w6JPf.qSoTDNb3Gs4la99at4lShHf.dKQjWOd73YMKv4hs4dRzatWzz7qrBzjzgClDMgrfWXa.lukGG39bX9NWa9GGsQXb8roLlJLKjFUAbS+5JXtaAFsd8w.idvCdv0LeP..OmDPV.gYvoAuOfGyxxp8PgB8C7p1Ay3fOAX7idziVVSM0D6YO6gVas0UBTCf.rRGCD7nG8nf9Z5l0Fj0TT9SBXO3fCRKszBkVZozbyMuVzy+CkR9OHPHaa6.ABDXCy00hMZX5dA9L1112wluF0NCfXYYspsrksrpZqsVZngFnzRKsr5qu9HJk5AlqAIr7c4aPPfPG3.GPsu8sOo+96GPqs696ueZokVbrGD1xV1xp8gxO4OF8067H.2e4kWdh7Garwb9wIl0+QmitgPWhlTfdMS5UEQ5xKc8LS47KDQttZNBQjqKh7pY62kwUP9EhHW2g.PN0oNURt.lHx3hHut3CDAjKBo4z80WeQ2xV1RbmxcqacqIHkDiKH8IKxbAocKh7FtcAHSeqxjeWS0yyF2Dx39QmTDI59129ToClx4F4BWTxqcAnERIwPDPFWtJctcoi6XcRudNnorOsHhsi694xEvTNiMLtGns3wDBlYL9vhHpLs9SZx+xhHuxbcLgq0eubJqyopolZT6d26V0QGcnFd3gUJklLxdgW3ETacqa0tzRKcLy9By41frr7G0iJ+tEQdOw31o4x5eF9ddEw31otIhJy3tnxbv86m0B.3N4m9g+7TA.t1zTduiHxOwOZSDWLAna1nazQGUcjibDUM0TiRD4phHule6O94xT9T.fLwDftYgwbo..l1hAxPccfEq7NfKew9cTSC7i4ftV78iDQTSAS.pLuybdi2on7eYQjKJt3bfYfP.gmqsEl0aFnjRJ4FacqaU8BuvKnN9wOtRozL+YGczgZ26d2NL.qSJlHRDQ6y9+yYSavbr7mzrA4oEQ9IdP4+5kTRIWYVT9Q8p5eFF+8whHI9Nbf4a3hyk95rxM.8S0MZT80kANmkkUZuB.G0.Y7CxTwjnMJuK5QFj3kABaYYsItSqrOJ56gZTfw8i1Eiw+stSe5Surlat4Gn4lad4nUQkBspeFC38.dS+xe7uaCFWs5GXT87UGZng1byM27pgjTAYA3yXhIlXXKKqwAF0xxZTLp9NkWKJZey2ymCpz1SSh47G6XGiicriMU+JEq7PavIVrX8EHPfMnTpkAbOlqefVZoENyYNCUUUU.P80WOc2c2zTSM4j+8Br5YqAA6h4EW1fCN3Rd+2+8o+96mCdvCx1111.80O5v9cQQGWTVIZCQaEXBRby00cmAkuyjuTW3OD59IGaCZNAWk+xGbvAWdZJ+nnq+2.89LKGs8HDDOn96FthAL+0Xr8LS.QB.14N2IgCGdRf2UlC1d27Vd.XhIlX3fAC1iYg1yycZDfqHkekqB7gb6AkQ.NukkUOY6hAo7s7AnI5CKzCDiidPvmBb4PgB8hYSYkIDKVr9L97tSz.bUnmvEGcceTQjemWX+EEvsgiP.FCvba.eAzF6SNGxsMHsXj7b2X3QFc17UDJTnWLZznKE3OidreQjbv3wOmCtNfk9O7O7Orxu+2+6Oku32467cV4K7B++ydu8wFWWm2+4mm6LindmuHKIK423KRNMNNolRLJ9WRZSpjY81fEKPKkzpjc2fenqkHTPK1EsPufjMdQ+UTKqHzl+32OXR4psaPgQBojULPCfyJQEZG+qJ0ghJpQwUwwhjZrjsjkMeQTuSNCum8ONm6vyLZFxgbt2YnHuO.WPN26clum2OOmy4446y9Vf46beoXL56KpTppe7G+wWL5IzRh1yiFFshV2z75OFvx20t1E6e+6GzmI+CA7fSWOQZRv+FlWaEO0S8TqXu6cuQ8rOmt6ta1+92+RN5QO5uGPBiGiMkMDxoQ9+A8y7usXFu+o.VYlS9uicrCOEQ+c.+tnQi9lS0e+YrJ..3YEqcX6xSFKC8qhtPwV5E3Mcbb9oAga.lszRlRPa.VdoA3diI8yVM9q7TlxV+5TQ7HAJiQv96QIRA.yth8A.8ZBGpoLBPfOHn3ehYBhoNXmY1terwFqF67cPzOPD4sUJ0mae6aeev9129VE5Egjoe9OF5EebEz6BwU7K7Mte7yhdLuk1RKsPyM2rsQHC.Yw3j+Dll7RRznQ+QIRjnRzd2TTzS.dMy1q+9Jk5wTZWhdUUWc0QMS9k5qSA5BtS.9WVoT0B76+89deuUr6cu6w1111VDPyGMG4HGg8rm8D6.G3.qE3hSWivqTm+gTiwuRfGYW6ZW2yJ+MS9+aA5ZZa3q9wYTTLurLDpTQCIIfiFXgWktqIwF.Nmn4o82KHrAf7IsTLsA.kJqFgqua.tgW4rt+UrJ2OYFWd0EuheWuKk.i.bhtrhNhmyCaO6RPoSvAJO8WpiKKEq7uou9aIhjlcGs6cuaOLdOOacHRjH+wlxkuuiiy1yWaAXF8N.3I1Z8qzZU0OvEMa0B.eHP+Jk5whFMZiAEQ.EJy3jJ.dHfpJu7r5ZrQ493shMaR11Ipv14AuXNZsCUr2ABqUAtJuU3e3CeX1111Fn2wgEjk6eUfSIh75AA2PXhRl0AT8t10tn1ZqkMrgMjFwvEjhgNxuhZbNQYknIGm4CAebYoXk+Mo84AoyFoFRm6VnYkv6ZbM3UYthpTpOahDIdBf+pICiYzJ.jCh.xw5uW27pN.OoRo9TJkxMHHBnPYlkrwMtQ5ryNWEZiOZQaYKaIau1JTJ0mKZznMNaqMP3j9kFIKk6AZ8f4bjmGfSCMz.G7fGzK3qcUz17PsMzPCwrt+kA5RD40CB6AxPPNOKvmt5pqdA6e+6mhcvxpTFWVJl4eyQMLJnySVD8F.KDMu2TC5w.qDXds0VarssssJ.tVdc7GAwVzD.ayxH1a2UddMh46dnYK9D+bwqbcD.8zSOpJpnhT9kq8VjoTJa2y4c8q1.yDNBfvq4VWlwAeUQjOrkVZw0LtVOF2B6mjk6+pA4wAIZ2i6cDi6n0SO8jZLWOw742IncGYS+wWWD450TSMoFCvrE42RD4076w9Kl4eSc+qIhbKadHo81aO0XehHpZpoF0t28tSk+Es6f+Sxm1AyX2A.iluqD3wbccmLV.Lax7bbbdLf3yV3E+PQKc2c2Tas0xPCMTZ2+fG7fo1Ft95qO.vwwYUn2dvPwGECy78sPusikgN.fcxPuPweEiEoeVkRsvu025a8Qn2529DQNoRSKrQruuiiyOLn1sKywQ7H.Oxy8bOGM1XiLAQJypTJ0SDT69VoHtrTry+F2eMNvENvANvmo1ZqklatY15V2JYiYRGbvA8RO2.X37w3Omwp.PnDJ4RFZngngFZfN5nCpqt5n2d6klatY5ryNAz9G8fCNnGsrl.eJvrDJiKISl7qy37z9R.ttRoVUjHQV0XiMlux+4y0Eqy7tjFNfMKjpBfE9hu3KRGczQp9bYQVIvZmtth2DIkp3xRoH+ab+0kCLuctyct1SbhSvV1xVRSAfN5nCNxQNhW3fePzwim2KeZKLiUAf7gHflDwuIBnPYFjDOd7TDfhQtMPxctyctfctyc54e3WG8N+bo.9LymSENfMq95wAd71ZqsUs0stUdlm4YVbmc1YDkRMjex+4gRZm4cdc+.VFEXzppppnM1XiYkPrL2ywwwoRfJ861Ck33xRQM+aTz6uIQhD6A3ZG8nGs1idziV01111DqWSgdU+WB37hHmIeICtYrJ.LADADLw98sK9LQ.EJyXkKi1CPtNZCh5tnamrXyyuFPbelXXxVHBNa6vvL1PI7zUxvnbqA3A81RxW7EeQ1vF1vxY7XRdXetYYhYQYWF3BlEkkVXPNClYMI5fhjuxJiVdEwJyxj+fleFVEvZ76cenTk+MJAreS.g6wQGjjVL54CcQSJQ8CbkXwh8RSE7lwp..jax2wL.SVkflTPBkYTxkDQdc63tcP5dbFqxcHzSt6oLZRzJZrPFmbXR.LjeaAxkRwJ5b9z.onC6ZqsV.7HoDGl8EJpCEijEFQsbzSBtBt2Pzdu.+FGGmeZ.kbTdDiSCMzPlqDuBGGmJvm28gRY92jGRczZ9EQvMiVA.OoX65Mgx8MxnhHusc6ihP7o3C.5wXfofd2o9.fa6337Hl689L6jY9VFvi355lYrvvy0qFivPQ8rZIyEkYrAguBPCVs+uDP2whE6uKf5OVxhKK14+wFarZTZFArXm+8sw4Jn.lvLkUXWJRKkZp3Maqz06dAYZYhvM.wNmamtRod5xJqrKTLJ+Mq.3G555lDsF9.bUQjKpTpGkwoH3qNK9nmb6niNX8qe8oHmjCe3Cyd26dAM829QEaEelK0+uD0+KmxXiM1ghFM56655dWJBs+yXU3eH53hhWbYIAZxQJPiKK1hQY2etRoJJ4e+t9eJo.fwpS+5F2OYoNNNifNy9iK1Dsh47H+yPWnWliiy0MVB6OJfWE3yoTpuD5s8wyvDG0ww4iCZ2fxJO+Pn29I.toiiy0QWWtPfwbbbtpeS.RVm+6pQe9S2www4SLOd4n4G8a533bY+DaqscOaA.mGToTesDIR7G5337QhHuWPW+m4JfrwpXn.VIVF.3pO6y9rKkzsCmwPaOF+ZQjedwH+OWq+eop+msj43+.iXFq4GGKVrTjgewHlnXhNhyG8wtMOzq5+phH+xfzaHxU8OvfhHmJnZ+ET0+SIE.La2ySi18eVFZsttrqqaEQiFkhkR.VgHw0gt.wAX.kRszjISdEBniHvv5TeIfmDcDAzq7KIvfAoaPkQd9QY7s9JAZieKB5ykdTf9bccwuVYr47e+FnO+WufPSRzVaKna.F0jV5y00MpegcNB.NXvy1M.FRoTqIQhDOZYkU19C5Agx1u+r3I987I4af1fKuKZkMA8Jthi10iNVwfG.lq0+uT1+yVlnw+A9mJli+qTpMQ50+CA7qgfqeXdT+u7jISBVmUueHAY8+TJJpYz7aUuzK8ROjqq6B5pqtVD5Ag2fqq62bhhTd9kXJL9l.a.Xsc0UWKx00cAuzK8RODvpLoQeWLM5pGXc0We8q100c9c0UWQ6pqth555N+5qu9UCrNkRUeznQazuw2JrPt1icriUlqqK82e+zRKsDq7xKeIUWc0Kz00Mlqq6hPGhJ8MxuwXzkqBnVCF3555wy9qx00Mp4dwP2.8gmHC0bpHlId9g.uMvoPasqzTSMw4O+4w00kye9ySSM0TknGP3yYHnlPw+kE.L+VZokE555RWc0k28VBPxhwY+OWr+eor+msLCe7+UQX8+Tu9eJR8hOuni7Ui3E8iZu818hFemLno9wLRCi1d6sqTJkp0Va0i5eCrzfgBHOiWjYZfAFPUQEUnpnhJR8YC0LdFQjuuehsEkPdcu7btDS8w08SZvzDUpNYlzwalTfo08NoeSCtlzvqIhb8su8sm0791291UhHCKh7pgz+r+eMI8+e6v9+AS++YB8+xi5+vw+uOr9eJo.fYhnefgyoSEBDMU.mUDo0ftAfWEQKszhqE1JQj9DQdkfZfeQjVEQNmWit0st0oDQRJhL15V25TJUpNCmyuKGrT.XXuJ5ZpoFUEUTgp0VaMEGPe7iebem+6Ui2.7XhUHXVoxYCv.IzLaRCugHhpmd5QoTJ0l27lUhHJOdx1hWteifjOzm27l2Zsu7BGmQhD4O199AE9STZIHwxv85upHxEyR++yIlPSZPkVrBExmKCrUlzzq53377doA+rL1f66lQ++wxR++TgnUeNeeBQjjJKIG8+FSD4sBHE.x65e+F6oP8edGJbCx5e+LMLEq+SJh7F4a8unTJYx2mfwEy4u8Wx3m+BnOSvyCzUrXwBzye0bNLOCZlfZolaeMfyYveJQDBSQb+CQGAlJGsgOcWzm8xh.DS532Hh7V944.Z3c88fdaupE81tB26Q3jDsKn0siiiuclbF7+Nj9YPAZ6MvgwOKLWzVG+uvucAFS6t+u.9CxfvMz.m989EhH+.+97nyQzoDRud3NLiyOA...B.IQTPTcHhJ+7rQsLDqGG84P5kNbQWeLLFqP1uvMi78JPa40KiwaG5hlBRG.sMALB9X9OC78B6oUw3k62wf8vnK6CB72IP8nM.2nnYesaZdkEit+uBc4vGYth6G3aL7rMit+2RsdjGCTZOF9cQac7w8K7mB0+eB5xjgvGa6OEq+uc.ge9T+6h9HJ6A379UbYXJV+eGfeGv+giiy+7jg+T1M.UiGihWf0smOZkAVsIVIGzFC0Xj9ftUfN9LOXPgeznQ+QIRjnRzTt3ZY7NCdxsQaIzwyWZXLekLb8kOFMoS7vnU7vSR.zG5I+mzJ9oA9dt+1Gi1HDWIoyDVIPOnyuxww4GFPJAdSfQ6niNlWiM1H6ZW6hCbfCfWX.siN5.LSBJAPX.0XHNeQzJAEYR9JiBzqeZLllAh9FnMBqpQ2tOSk.GA3icccWcjHQdrBUInLL.o5H6iY3fdRgGv5d9R9OOweALdehfB+OKZaqwSDz19.YbukYtVKvp8C7UZCOasj9f+d3koLezkSOpeguYx2un42MaTxdl0+9Va+7D+Lq+CB7+znKS8JyyV8uC54DpDnRWW2j9A9l5euv9qsjs5+Ef1HEKy008tSF9SIi.D.kR8E.Va0UWckFCO.WWWpt5pWFvSnTpuPPZLHJs+VWS0UW8hy.+UB7YBJ7GYjQ5w3WoCCrzpqt5klA9KDcG+.gbkRlLYGFWs4C.VX0UW8hx.+XnsL6jAgeXag+EAhTc0UO+rf+B.taPgOZErtxy9rOKc2c2r+8uebccY+6e+zQGcvy9rOKn8E8O1uSClfeySfN.eDwNumiq4gdBiU6GFjkYx+c.rQf00TSMUUas0lS+82eJL6pqtnkVZor5qu9GA3oTJ0lJz9Blz9CCTmkwFkOW9R9eFD9UOEvNHv+Qmh3GyGwOUTYsXl2mgg+i355JEyxdK7WFvCMEp6ilu3OkT.vhGlW8N1wNR6YlO+f.qLHr.0Lv+AyA9qNHw2HKCXE4.+U.rrRL9qHfwubfkmC7WNAX9WD4WBbA.2FaLcCs0DcrFC3BhHmzu2ABkRUKviVe806m+r4kX41aeQfG4XG6XbjibD15V2ZJx3AzThZyM2Lm9zmFLqHqPqKL63WkThXMzYP3OY63yrR7CkY2xTRA.y1quRfxxLNHa9bY.qTEPbAdH94E9Ovr07uYa8GEvcKaYKo8LymUnoGXee6+Qq3UE146CdvCl16433Xe4aQiRWsKf94.VUWc0EdJ+b3CeXps1ZSg4y7LOi2wf32RrLuQF40rc4mQiyP7KQ3a9tdQk0QswXBRO9VdOD+fE+ojV0JkZ8.OX4kWtWv+HkzPCMP4kWNCO7vOn487cBAID+473mZ0fYaGHNzgNTTfJ8aEPLqhtJxPwmSbhSPyM2blu9MQuKEWAeHZTZ7o3GEn1csqckpb+fG7fryctSPG1S6GvoyN6rpN6ryE8BuvKf4dWKfok2ahl2yGw5dEynwYH9AL9YIprtJz1eRlm+sW5w2Z6Gheviedq.fYUPO.PUYt5OO4YdlmgidziVEvC327ycH9yswGRo.xJJ1Jf3pCqnKC.6id3nG8nY60uDvOyu7FEC10BT1d1yd.fAGbPuI+GD3Wh1peW.5cm4g91e6ucLfqHhb1.lcBuDvwbrh3YE4nw4LA7eKGGmer8M8RCyVx+1zesgjsdVzFEW1RO9Va+P7Cd7y6i.vrJnU.rH6ses6t6N0+at+h.VgY6h8MID+413ao.xCLQJffdk5OfOaHnUBrL6y+2NemMwunfYLt8TSM0Tpy6+ke4W16UdWQjWy008ux00cmwhEa2hH+iFNi307auQYxjRcn3tTiucZX1X9ejQFoGQjyg1ciyljTD4bAYDvKDeeF+7kLBLDvy6kIwC3QBBYPNAumeyFRg3O2FeCYX7VhHJa1PziTfTpTDwguxDZFR.4mHhbWOBGRoTp8su8kKV3ZXS57PEJYvXQ.St144MsoM4w1iANiGZH+kyli75MLD.yYLWmVD4sMo4BN+GheoG+oX54rAAADEhevgedsC.lUhrbfkuwMtwT2u6t6lyblyj1pgLOe4.qxuVEVH9yswGRsU3qFRYw+LA++JU5iAnfEyNYj0y+OGxRA9OA7Eccc2pOTFrX.o1ZqM0M5qu9.MeTbsRb.HZwn2JxmxbsNfu.vWE+K+Gh+LW7Ck6yk7RA.y1+tbfxs29WuAAsGLz77xwGbAoP7CwGRaqvWQSM0Tp6mMEPLOeE3SGCfRGbQVNj94+2YmcdOu6zwObmDreLLjsjsMODOdbPa7e2X59aWnRwjCDBwelG9gxrCIuT.PoCAjq.PrWEj2YQdjibjT2y7bAXEluWAKg3O2FeKx3XI1Jf3gu0Yh6o.xRvGrCAqc9XYYtyGEQIW8QGUDYnhYBITBkPY1kjuJ.7n.qr5pql5pqN.skHaVIRhyblyvfCNH.TWc0Q0UWMn8G8Z8oUgEh+bX7Ma++pfTJX.LthGYQAD.dPk+DZPqBXo4y1+a4GtdwjA+vGvmQJEQefOD+Yf3GJyNjIUA.KRPoxrM3KFFpJKCBWI9PLoOD+P7QuJ7UrwMtwTVBeu81KCO7v.vvCOL81au.PUUUkuYGBVm+ez777+A35.+a.+BexGvcyw8ipTpJKve6BUtIvuE3e2b8qP6VhuI9W9OD+Yt3GJ2mKSpB.lAAWEv7sIeEqA7cfzGTz7dyGX4E51vFh+ba7Ma++CBTo81+aqvQle17dUPARKzlcPnJH8yfOam+uk7g.m100c6EZ.Yxvng2ER+XGL6vxhH6jARwT77C88333rmXwhssXwh8+VrXw9K7i7eH9y3wOTtOWlTh.xXM0q.RePvIZUPVu2JTEHorDh+ba7ss9eaE.16d2K6cu6Mqemsrks3QTNqx78mxCDlqy+2jllnuZRiu55WxMAT80WehW4Zs0VKwiGubfJBBBWZJHIEQNWIbhlP7Ks3GJ2mKS3N.XFDrBfGv15qyGw79KmBvZrCwODeyuwJs29+ISx3X.VdAbL.2y4+WLEy42NDvMxxQrrDfUYuCKkUVYqIRjHOWjHQ9tQiFswPW.KTBkPYhjITAfbY806XG6HqFeh8VDad+ESADc3BwODezSheOAgmrgucv4w79U.r7oC9lIVe.x37+W+5WeZXlEIpRodB+XxWyJ6uFvUsocXqx4eOkR8m5337O3337OjHQh8oTp+yJk5+QWW2+RSHLNHknJk5IhFMZidWkUVYqw6JfwND+hL9lXS+SPt24XeqseH9EI7mDVG54MLMkZfAFHEqCUSM0nDQFQDoGCqD8dhH2slZpI06Lv.C3wNQma5xJbg3GhuGqWYy3eFlvaLQj3lm2mHxXaZSaJ06zSO8XyNVO+TEaQjVEQhWQEUnrEyu4sMWY6Y2vjl7E1XyhM.Gce6aeovp0Va0CuaZJGtnAa0t28tcEQtjHRaEJSANEYhNemM5BwuzhuUavCY9MOqnYgxbkd7s19g3G73OgJ.Hh7CDQ9Da5d0Zf02QDoUShqUymSaf50st0oDQ9DQjevzYfnP7CwWD4ixghE8HhbHy.jGRLzTbVTT4ilp3an+21DQFdyadyo98N9wOtcdumbzIz6ZDyfyGpPmD1T99dhHpScpSkBu1aucu7nRDQsoMsI0wO9w8RKiJhbh.dBnI5xWx+g3WZw2zW3PleqQrwXBRO9Va+P7CV7y4Q.X1FgECrfrX80I.9PGGmebxjI6vDMr9PfDYwZrW.ZlgaJIg3GhuA+EkEuOPAD2ww4viM1XGxww4v.WDPYiu46sHyuyTUVDv7xh6+cWfOB31Y9EBJ1XyT9dVfqrgMrA5nCsMes0stU5qu9Rg4INwIRisB8QIQl2XRXhN+lM5BwuDgu0w.9XtttyyFiIH83a48P7CV7yGh.ZzrP+qWE3JdjLg4uWA3pYgVXGEXr7.mP7CwOaRhrn.xGA7QYf+GA7QYQAj6Yvy7TFAXzrn.vUA5GX.xcT4xWEiRVuLvu.3Cd1m8YYKaYKb3Ce3TDvDncUvCdvCx5W+5wjF6uPIBFQ6JhCQQJuFh+LK7CkY2RNcCvQFYjdbbb5G3BqcsqsLfEhdkWeLvuQD4jdtezHiLROQhD4jJkZEc1YmwbbbVAZ5f81.W.8fQSIID+P7yA9ehA+edF3+yUJ0x6ryNi333r7BAeKr6asqcsOtAaWzJY7aDQNmRotKvpbbbpir2OxWYisjIS1QznQw008t.etidziV8QO5QWB.s0Var0stU16d2qGGEbMS57mUntHXjHQtfqq6G.z6DjWyl3K4+P7mQf+UAdeC9yqXgcH9AO9hRojb8vxJqr0jHQh+ZfGB813NJvGIh7yGarwtGe6NRjHOmRo9JnItk4ALLvGFKVr+9oy.Qg3GheoB+LvdwFruhHxIiFM5aN1XiUiqq6VAdDSZKl0WOgA6K433bX+zOsM4wuFvmB3gAVR4kWNCMzPzc2cyF1vF.32.7yhEK1K4GbDPznQaLG40rsCht3y4+P7uuAeeG6P7CV7mPE.7Da2JHeFPYp99g3Gh+LU7mreqIxka7aB5wnTxd.dZf0hY0.0We8b5SeZ.7bMwegHxOHaJIUn3a+4rc9h1q3HHx+g3OyE+fD6P7CF7yKE.BkPITJ8hQAfuGvFcccWZlOu2d6k0t10NFva53378BYHtPITBkIRxqnA3LQIaDdQQj.NlvU9UrkRQZwt7uTiel2qTgaQpbXLfw5niNRy..O7gOrmG.bErLPxYqRX+uRS+uY.s+yZZpTf6rA49pc.HKmILnOuiag13XVH5AHupee1qd3mLYxutRyFSKEskheUO2gyOwZxDy4B8mg1EQJC35hHmKZzn+nfja3MmA8WBc7AvyfTFE3iEQNoeusy1Ror925b3VMZaB3NnMHQPyVgK.Mu8e4fnsmm333zBvmGsM.rHqGk.sQJ9qEQ9WBx5gRkD1+qz0+alR6+LROE8x+YaR9ZQokbwTg+mCrNfGEckNnG36tnCKswP2YnOWWWJqrxtfe1XHYxjeUkR8z.eVzg5VWfK655VQznQoXMHTFkEqF8N4LfRoVZxjIuBPfzAHRjHeWyfOOIlvjq4QIAFToTqJRjHqZrwF6u0uwtTV+WVYksFWW2uA5yduVCNII8A.iZRK8455F0ua64IwhE6u2nDzkQqDz7YbC+onL3aoRB6+UZ5+MSp8OT5J+mMJ22bD.Fs8dJf0dricrxbcco+96mVZokXkWd4Ko5pqdgtttwbccWDZRPnfiE8YJlUdrpW5kdoGx00cAc0UWKBswXsAWW2uYwXqnLcF+l.a.Xsc0UWKx00cAuzK8RODvpLoQeWhFMZiJkpdf0Ue80uZWW242UWcEsqt5Jpqq67qu95WMv5TJU8QiF02YilRY8uwXaVEPsFLv00Mp4dqx00Mp4dwPO.4C6Cj+RVkQFYjdbcc2oqq6+SwhE6+8Xwh8+RrXw9OGKVr+ObmkGBXC6+UZ5+MSp8eop7eVqTHzTXw5xPGhulHx0au81USjzd6sqDMWI+ZEJMLdOzlnla5OoHxHs1Zq13MpHxImNbNeAjFF0qrvvK7iDjoAQjuun4Zb0.CLfZfAFPUQEUnpnhJR8YCMTdFYZx8+yTq+Mzc7IyE8alk6cRGGmsGD0CykuB6+UZ5+MSp8eop7el307l27Vq80z42HuU.HSvJTfmJWlFf+DQjanLRM0TiphJpP0Zqslh+2s3p8djoI+yOYkAhHuh42W4MHjoA36HhzZPWdHZdg+rYfsRzADl17q.PQNv8bdc5L77+XhHi4Eq.LCFeNQjVCfx8WSDY37r9+c8Cd316xNf7nrjbL.nuvA+2ObkqwAl27l2ZiDIxere1WXdyadq0vK9skY+uVZoEWQyW9GxuwMy7jn4k8y1RKs3pTo0+qGQj1bbb1d.MtygDQd2L5+MpHxnYz+6c86w9Lk6ugHRRkkji1+IEQdC+VA.qx+VEQNSVJ+eOQjWwq9OnZCTrlyKW3aT.5ULiGcRQjtjwC9SuhiiyyOURehRMwFA3DPBAf9LetIZlGq+fvXbL3+MPeteONiyq6IQeduwxHMcCzrU2kPydV91YhZYDZOA5ygqRyiRflK5+MhHmInLDEK+.eC.qAsg2.ZifKNv6Jhb1f.ey4O9GgNeuTzm+5cPe16Kz72a.7N.c4559W4WXmg+uWG5y8NWxG.7KcbbdYetd+6.7kQuEmd8YRh9XzrOJs2G3eMVrX+My1LFIiQ38UUiaDZdiG3YCBeLZ6wnBzsQFiBfHnf6Y7mEv3zJ8pLWQMXeEz8ChfdLoffDbVrA+EYvtbzsAth4BC92wmw+af9nNpF8XNNnGyMt40pFcYtKZZCNNv4cbb9g9H9+9lzfmgm5R51.fWefaAbdfecghuoe22hwyeQX7x+GlwIGrOD3cQWuuLy8GCSYTgRHVYw.HKZF6XFoAu4Aqgwm6wSTnyu8.btXwh82kO44IzH.yv3OlHZn7N.C3559DNNNa0uJXrv+KZv2df1a.7dnqLV.5BjGz72kf1PwVkeYPJVSB8jnm70tBHlI8UgRoVQhDIdzxJqr86mS.jA9dCF5IKBsRIqToTqJHvG8.bWCc49hQOIblSDGEcmuJiFMZi9UmCCU+dQkRsZyu+JIck97jQQO.zc8Cby.+9TJ0pPqryJQ2VLy9CdFjn24lNqQAfLZ+UGZiPyt+XRzSDeSfEUSM0rnKbgKbWf2yLH9TVgvbX7YdJa+aMWkgt8X0.eN7QiQaBL9MOCM6ln8Dgn.eZzi43kF8a7sG+c.zJZ+aLe9lnsOlkgdbgU.rrB0PXy.+0fdBXX7I460745XbkCVD5IoVPghexjI+5.qmzWr0HnM.1dPOuyMPOtz7QaTf1KLZHfkY9clVFF4DzFLvM1wLRCeSSZntlZpI1wN1QZA9qN5nC4ke4Wtxidzi94AVZhDI9NkUVYSpR.SnQ.ZFD6gAVikgdj10wN1w3EdgWXAUWc0OL5UHsQWW2c3GFhhE9055553gY+82OnaPrPfdDQNF5fzxRsRadSJWvFjRFq.bC0We8Kqs1ZKsxg1ZqMpu95WFv+IfuroBvWLJorfeEYAeo95q+ABJ7UZJ18y.TS80W+7yQ9egnUD4occc+F9L9ON5N2Ob80Werbf+7PuKQMDP3WCvppu95cxA9wBB7K0Rls+13F23CzVaskV+w1Zqsnl1+OV4kW9CbpScpEb9ye9JQqr5xmNkEV8+qyx3yhg1HOWfHxqKh7ZnWs2pyvXzJ3994.+nnWI3Xlik50QOgyikQZzuwO03uXVMr431NG5Ilqvp8Xz..+HV3u.fqY114igdB3EXgejBEeSetZAdzicriUo07Mkgte3h.tfIHYcCz86dx1ZqsEX8tUB7nJkp1oaewInMnuL2R9HFEn+L.0cricLNxQNx8D0OarwF4HG4HzRKs.5xhmvn3yDK4wY+b5LOmmbIlyfRIhbYQjW0mhE4YE+MsoMoDQFRD4UMFHy87dlzxoKzyix76eV6ycLWh0YRcV+xXbBwetM9k5qoR9e6ae6pScpSoTpT8Quzz8LoyU+e6904y6Lcy2g3WZw2X2C8USM0j1usw9GFRD40LmI9qJhLjmsP3I0TSMJQj9DQNT.UFbVQjuePa2Al72vadyaNE9m5TmRUQEUnDQTUTQEo5yoTo520uHxqLYoo7QAfyliLuRDQsoMsI0wO9wSKgIiaTFEjgXkK7UpzT13jlFJ4Jcd1BoQnkAHdqsu8smWU.ae6aWIhbKQjeRgpDTH9yswuTeMcx+JkRs6cuau9ecMcsL6IY7my53377lI.Bj99g3Oi.+SJYn3okw99NlIGeGQjzlGxRQ7BxiDljxfaH5cg4zh1X7dCQuqPGxu52a5+8FYl+LSx6MNixV4GybiIEQN1jkNJDE.tknWo+sEQT6d26N0y2291mRDIgTfVC5Do.fRo7F.5h1MBxR5rfZDJ5U+7Nhw8aTJksK2LpHxmX9a1d96HE3p.CwetM9pwGD36KhzZtrxWKKDtUwrpjBE27L+Of4+y1yutT.6D3LjIfBwuDgukWW8QUTQEo86al.71h1qGt8l1zlR64l4F9HIOVEbATFjsqQDQ9PQOocA6UXF76JG3Onn2gMk8ys5+8FSVeuBgHftDPm.+2AF3.G3.zauZaBYu6cuTd4kGE3wTJ05K.LxpbvCdP.XKaYK.7.nM9EemUCMmazxAdvMtwMRUUUE.7xu7K68J+Ffel4uoteUUUEabiaDzFk3z57OCwODePS8qttt6.nQfulRo1bhDI9asswlnQi1XhDI9aUJ0lA9Z.M555tiHQh7bSWbgbm+OxQNh2q7d.+GnMJrThU9Gfjy1iKAgRvHiLxH8Hh7yA9sCO7vt6YO6I0yLyAr.LF8m2bB.rm8rGFd3gcA9shH+7fvH8xl8v0UWcQKszx7pt5pWMvWB3KlHQh83C1BTt75onX5ad9ye9T2ru95CzFi7clre3BQAfQE817+pnG.TYMvn2jyKG3A7aigxa.HSChEv3tCjuJFC7nJfk9LOyyj59m3Dm.zVd6EDQ9Y.W.3ll6C.l2eo.UMcMTjP7maiuwPn9B.OY0UW8m4XG6XOBZKr9Oz00cmQhD44LJHrSf+PfO6wN1wdjpqt5OCvSpTpuPgz2aRx+2FsafsDfE0RKsjRAAHU9e9.KsXXnTgxrSIZznuIZuM3COvANPp.fUc0UGM0TS.DoolZh5pqN.XvAGjCbfC.ZWCrWy2unHMzPCzbyMSe80GuvK7BwP68BOYdYLdSOYI0We8QOwINA0UWcL3fCx5W+5YCaXCf1cju7jo78jo.vplf2IpRopTD48QWXOTVF.bw.U32C.zYmcRu81K0UWcTc0UCZ2dorI9aMskECDa8qe7MxXngFBLtehoA10.tg49.f48iw37VPH9g3OcwuxN5nCZrwFoqt5Bz8K+xJkZylU8+kAVUWc0EM1XizQGc.ZujoPw1C+zx+lUXbGzVhcs0We8zbyMS2c2cp2wGy+gxbXYjQFoGGGmCid2lRr+8u+TO6fG7fTd4ki8p+MOOAv6433b3fxE8bbbR6p1ZqE6cnXu6curwMtQAXMJk5IBJOBxFyst0sxYNyY.s6w1c9j+yoB.Ftm9ygdU7YSdHzbv82.suwdCy.C.Ps0Vq2+tXkR8XSdVYpId61fo.nRROxn4KhIcOeHs7iWg7sQOI.l+day8Ii2e9S27eH9ysw2H2D3VM1XiL3fCRCMzfmR.O.5U8+GB7.c0UWzPCMvfCNnmKBcKy2cZKSR9eLztG0RO7gOL81audq7fLd+BM+GJywEypXiC7A1G0bUUUEc2c2o14od6sWuU++A.wKBG8zMA9c.8FOd7qefCbfzlPdG6XGfdGzdffZWv15V2Zp+uyN6DztC+uJVrX+M4COrjUE.LDOvVQSrFqHGe2khlQ51.ZxY4tCO7vodXCMzPpetIKQLcDOE.LG0.D.J.XjX.o1hIK4thHCYNmpyQFjOi06mMBqID+P7mTw7a+KANe73wuo2D7VJALef4aO4eCMz.wiG+l.mWD4W5Cq.JW4+EB7fuvK7BTWc0k1.QY79EZ4+DI1LvWoPBwuHfu0t.7t.2cu6cuodlc6Ry8uKv6Fjq92RtDvaJh7OC7V.Wyn.BPpImEfkVDUB91.2Ley6YUA.i1JqD3gsH+gTRFDNwiw3zPY1jH439EjL7vCSGczAUUUUdmEz7lruyzTxU52kza7GT4+P7mCi+XiM1gDQNIP2wiG+1YpDPVl7+1.mQ7uXCetR+Kt95qW16d2Ku3K9hXu6G442OTBk7VLql82AbgidzilZW.7jd6sWN5QOJnO66KVjnn2jhHW1D9k+PzLgY1j.SI3Ce3Cm4sVNvmxww4eHeN1g6aBGvYS71E.yVsDJgxrRwL.y+Nv6EOd7zlvOiI+A8YkdtnQi9iB5zk2V++s+1eaPetqgRnDXhiiyOEsAAd6L2wIymuC5XfvOtHkjhpTpUGIRjuK5iDuxxKu7r8dAUeiDaaaaKks27BuvK.Zat4oA1ThDI9NSFi7lUE.LmcxUA9.OibHsuz3F+PRzZbcsb8aw3AuC+VRbzidzTm4YNJ38CIWoeGzFik8mmJe+P7Cw+9AIqo+csqcQc0UGM2byfdaGy0peteO+GJyPDyp5+PfAxbGmLetefOrXEfdPSy0eUkR8+JZawYo1KF0r5bEv0MFKueKCBz+F1vFXO6YOr28tW5u+944dtma9n8Vnurqq62bh1IfrNnk0YtbVzQ3qrIWGnKy0v.y2dRXKKBdjoXlJekaB2iKAFDRBfTtehkLOkRUowUsdBx3HHr1hpBU6ubg+7y.+z7Uzh.9k57el3OaM+iYEFqG3SUc0UmxvmFbvAYvAGLkwPY7HlOE4KOfmehKjd9u5pql8u+8ygO7goyN6Tg9rPG09K4m4+IP7hHfkJID+hL9hHWlbabq2z77hkrXz82Va0UW8R20t1E1dofYGpGBn+.xfDuFvuB3RG3.GfCe3CSUUUEu7K+xdwDf5.dJSDrMqRNOBfjIS1gHxYY7P9XlxGBzkiiyODsO3uDaKE1xi.tY.o8ys.Fxq.2xX.8MwjtuK.m9zmN08qu95Ack+RL2ZInOSzTuiU9+tS27+jf+By.+EVjwuTm+yD+Yc4ePSDPJk5oAdppqt5EXO4u8Q.XoDvB.dJkR8zEJQ.kq7+gO7gYvAGjssssA5wA9.fnAQ9OTBkLjqf1qyxl3EoFCbISR.pu95KsI+ewW7E8TN97hHmKfLHwjn4fjt.9fsssskxl.Zt4lYW6ZWfNJYtxbsK.SlM.bExswMkTDYHi0M9P.UlExB4V.WKfz9YDfONd73o3D.K1GyOkaBjvd.vJqrRPOneEISl7qh1HHWh49.oFvLAEnqXEh+ba7MLo4Zpt5pWRlS9GOdbrsI.Kk.VBZ+O1OXgyaB3Z6huMzPC1m4ZOnW8+BCnx+bsqSnOY...f.PRDEDUCBQUJUkJkpRxMIf4G69PH9kV7uuQ5t6t4fG7fTas0x29a+sSBbNf2IHsGGQSG+GCMY7cayQxAjx13VDvxxkaHVHFA37TJ0iaHhjOKfXe9Glsl+iA5O.094J.2Mn1E.ihKCBb8bPxQ0nzgI2Z.VbVT.55.CNcU.JOweSkX7K04+Ys3azZe9Xn5zLl7+NnMLv+83wieGak.rnI04WfzP7EPO49n14+N5nCOeN9FnUBXUD.4eyNGbKOLyPVN5U2TMYvUIVu6sJjceHD+RK9yjkLIBHGGG1vF1.6bm6bz3wieYf+Uf+0Xwhs+.zcDWpRo9bFE8uMvsscEeKWjL2bwQADHDRKX.su8suTOOnCFPR5QBpKlYfhHi2KLX.Eh+863eFQjDG+3G2KDmdcQj2x7ruu4+udM0TiWjRKg46TPXa5+cBQjD1gj0d5oGu72XAY92JRDdW6nA2l27l898GvborCUplHA2ckBLZLFheoE+rckGAnnBJzuOEwKaQCvehHxg7qzwjf+XhNr+FWzyEqrmKzpeXNiHh2WFNf8prEcX.9sEQTs2d6pLE+nQQoNbvFheH9hNhncZQG4KeWQjW2Kp.ZEE.ecyytn4cekBAaSjX6GXFb4dB2uG+3GOvy+lzvgjLTxefAFvdRH0l27lSo7gRkVTBsfF+ID+RK9Y6ZFlB.mSLQdSu9hEy76wO9wsCKvp0st0kV+PyBwuyD0OLeT.3zYBdtDSbHVYzFYZGFPmL7MXbZQu5mWUDYnLCGj1uWg1nvfyYEI83Rc1Dq3P8YEeHTvFheH9VSxeHIGg5WqPF7gxUHCdpbY568FhHi3kmas0VK54eS53XhH2xdUl4RLSLcKQji4GSFDheoE+bjdx4bBAjB.EM7lJ3OQh0BweWQjVy0u+Dp.fYPkSHhjLW.c7ieb0912971ZRWQj97iI+y.+DYj4SHhbBSgi2VjllVnl2KoHxIJzzh0pgdWQD2MsoMcO63P6s2tZcqacdkAuqHxOvuzFLD+413WJtL8qN81291cUJk2QKjZW+Zu81Sq+V6s2t2pQ787uIs71hH2phJpP0Zqsp5omdRgcO8zip0Va0akm2x7t9hxWg3W5w29ZxlSvuOxghMdSA7UqacqS0ZqslV+vie7i6sCbd6BSaSTZbBU.HiA9R3M.PVttsHxkD8YQdH+pPIC7GUF+bWSM.i4cdEQjdxHMlvOGHxZ6vdaQetmikQYPRQjqJhbRI.15qP7maiew9xakeUVYkCr8sucWS+tqJ5iDX.S90N+6YO.usem+Mk8eeQuRzKJ5yWNywftq4YGSD46Gh+rG7yRZYBmS39Y7xS7GSDYPS+vQyRcwvhdG3lziATTJkLQlYXznQazDXfdDzA8GadM1yMetFP+NNN+X+lElrve0ns75aBbYGGmC6gUFuiWPIeXfKY+dEpTVYksljIS9UUJ0WBcPRxq7HgAuOVD4jQiF8MCBK+LD+413WLkxJqr0XHPjZPGsMuEZe9+ln6GVEE47uoe9eF53TxxXbxWZTfA.tZPLFTH9yLvOizwDNmv8y3kG3eGzDLTRz8CWLZuEx0j15G3JwhE6klr9gSpB.dxD4NQEiA6rwOW3kYZLnSWEa7BwOD+ho3ovCZ276J1SrmswCJl4+P7maielogYJyAUrwuPqGxaE.BkPITBkPITBkYOx80QCvPITBkPITBkPY5IgJ.DJgRnDJgRnLGTxEGNGJgxLdoTelbgRnDJgx8yxzxF.JqrxVyLsAbKEoIuIfloUVLaWLQHuuBZNHeAnsJ1OQD4mO1XicnRapa1uD1+ebLg4d8+Cq+GGS3965+ojW.jLYxutRG6yWJ5nw2UiEK1eeop.vxUkVIPY.WWD4bQiF8GEjoIqIf7b4vAK1S9jsFeyFZPNQho99aArdfm.c4u.nPGzdNGv4JksImsJg8+GWlIz+uXKg0+iKylp+y6i.vx+meRzY7w.9fDIRr3nQi9OWL7GRaw3ajeSfF.dXfH.CpTpJSlL4UPGlR8cwT4+mBrNz9BK.CnTpphDIBAYi.qF7ODF+A0ww4iQ6SnU5kdbbbtZP4ipSlqnDjc7RlL4WGXC.qaiabiy+fG7fTWc0Qu81qzbyMurN6ryOOPDy682FToi4hRX+esTJ6+Ckt9eg0+ZwT+uYfeelMT+muLRjgInNqGWfmQP+onR6oVrx16IVApDCOjeVYB393B4xPKiulHR+qacqS4IFJfseQjWKnnFRKFO7cEc.dvisC+HSd9hhlFNuoniBa9JarYx6GRzAcl2xv3Wuh45Xl685hOxDjYI+2lHR+YKtOnTJOpnc.Qj1temI9locE1+uz1+uT2+Kr9e1Y8edq.fIXjzkHhqWAtIZCMlHxa63377EqF.lzxaKhLlWXH1zfzUDoqfJsHhzpYB3zh5RYF3EBhNCFreGwDEnTJMGbahACoEbHLJB75ALkLmPzA8oKKiSAyAFEYZ5.7FhHtd7PtWDIa26d2oJOLoi2Hn4n64ZWg8+Kc8+mIz+Kr9e1Y8edq.f0Jv9PQjTACBi1OCFjZ+XeYoE1fdZgYMv+GJSRvOn.w8XhH2xaBmcu6cqr+eIfhBVlx9WSD4Fd34ICLv.pJpnBUFkE9RPPJK48QswNSEOL2aT+D6LRCmLCEcxlxOJYBh+0gWETavv9+kf9+yD5+EV+O6r9OuU.PoREfPdcQjgpolZTCLv.1E9mQBnH.k8kXE8+5omdTCLv.dqBdHQGmzCjA9M39NUTQEpAFXfzhNZG+3GO0DwhdU595VPYGUFs634kVrESCwaHh7Z9klnYaxWSisr0.LPl.NbG.J8Wg8+Ko8+Ko8+Bq+mcV+OkHBHiAN76.NW73wuSyM2L0UWczVasAZ2wZISTLCvmjk.rf1ZqMpqt5n4lal3wieGS552EMZz2L.wM5AO3AAfst0sBvsAts4+w7rn.QCfxgQAFot5pC.NyYNCCO7vzPCMP2c2M.zQGcvANvA.38AtpOaPP2AcvmXxjj.2QD488QrIRjHW.3p.Wq4laF.NxQNBtttr+8ue.vb+g.Fv799tTVYksFuqb8rf.27I8DzXO1XicHQj2F32DOd7aWh5+u.fxJA8+W.fSF8+uEEu9+2DcPWZxj.o+G.leyKB76hGO9cyR8+BBx5+nQi1HZicdQYo9+bhHucPXDdl7zR.lWdL9ui02wOk6f1vKmLIASg5eQoxO2.zX0k+IniJfOJ5nD1xP6FViAbEztg0EBvnB3elA6m.cjQJFi6BXWBHNAPDoxx56+7.qEXgnmP9FnqvWL5Hi0sAdOfS4mtGiA++VfmFc4uC5J5Dn63YWGdYftbbbZwOiBhF7+Rns3VOw0fcl3+eOVrXeW+TADS8+eNZu.nlMtwMhkW.PyM2Lc1Ym.7e.7u5mk+FK+8Kv3QiqHn6PdMFO53UA55hwHfiVXVomUhNh7MOCtohHeAk0HGIRjuqRo97nsB5UgdBuz5+GTtFloc3dP6FnON59gY1+Od9DEzlphIe+GA7oQOYPRz0yQQ6VbyCsBAuKvuJ.5++c.9h.qgw6uk.caQ6Ex8A.mzO6+kQDgsRzs0Wt4u.bWfyC7KBh5dK7qF3AMW1t.7U.9UhH+KAQ6dC96DndFedmD.WGca+Eftd3Z.+VQj2ZrwFy27BIS+8+mQO+yRsdjxb4U+OFZue3siEK1eW9TOjWtAnIA7rnm38gP2AvdP+HnmXXY.q0008Qcbb9S7qNhYf+Cav2SDCtKC8fBW0uw2DQzdHCFyGc9cAlKaYQnGTrlDIR7sJqrx7S7WJoGJlikwm8jn.Kw008OorxJ6B9L9QP2fyqtOa6fz7.d.+L+aU++4P24mN6rSV6ZWa1d8G.er72xsudRC11k42Fsh.yGccumj.3ibccWYjHQdL+ZPIqI.+z.0gdPvLCO28qTpGywwY8AvjP+0n6C93nm.vq92q+eU.OVhDIdfHQhbL+bvXq79SB7Xnm7GRu++ZQ6ZZOheiO5IYtF5A8WB59CKMi2YQnai7Pl9L9RY+HiLROQhDoOkRsJCFq.c+7r0+OBvR8K7KqrxViYx2uH51byKKu17QqXvhKT7lF3KnmT9NJkZfxJqLeMTTag+mF8hO8F6KFi6FffNbH2KPOQiF8G4m3qzte4ix81dydwW2BsRX+ZGGmeXdWFLYmQfkEH1WM0TiZ6ae6p1au8TFAhmb7ieb091297NGjaIZqzrfOSnP7CwuTgukqWdo0st0oZu81SYyE8zSOorAgMu4MmlUA2d6s6ctj9lqAYNGvWQzt9j65V25Ts1ZqoUNzd6s6YTV2xblg9xYxlgUHmLaXepScJO6OwyUL8MigJC7GqDgumK3l0x9hD94rtOnv2zt60EQtkZBDwmM736Sw+MBHaeJev2c5f+jp.fIA7SDQtwDk.7jAFX.uAFusHxIJzBjP7CwuTguE12LW30d6smyzgQYj2qPMJHK+d9cEQTd9hctjsu8sqDM+PTv7gfA6TtfpmaWkKwxnr9DQjWsPGPND+RK9SgIfThHmtDNAXH9SC7y2c.30DQFvSKSypLRcUQEUnxz8zLMB+Po.8I0P7CwuTguA6WUD4SN9wOtGQCopnhJRaE+JUJehNsAnsbMnBxiLLVe8aHhjv922RYGkHhplZpIkBIhdUfErmfXv9DhHiZWFe7ie7z3fB6mYYY3uiTf6BQH9kV7sT97bhHiX2uyVL26rAjKPGhe.ge9p.PqhdKUupHxvl+FWzqtItnc6L01291SkfLrxznRARHMg3GheoDeQ69OukHxkD8ppFTLS1ZKdCFWQEUj5dVtJzz1sDsF.3R1+1V6vf2p8iK5ib3tacqa8thOPHLVXeQarsH9jQMkI2RxXmILJlbcQjWs.U.KD+RD9dWVrP2wDMS6cCoHMAXH9AK94EO.XR.sJ5sC8jhHm1jPdGyfvejjgVIVZgVv9jZH9g3WpvOiNecIhzmYfWks3gu88GXfA7tWWS2zf0wPb2rr6BJQ6Sz+.QqnxqH5UK9FhHs4iG+RZX6sSHh12qunnU7HMkh7CkeBwuzhelWFER99hd0nJaQBvI.CwO3vOuCFPnszyki18+pjraApoDO+UmwsV2BUBwOD+hN9Jk5wXbKLe0ni5X4kTUUdAKrINslO+T.k8LOyyj5FG4HGAzVd7+gsK+DMZzFUJ0iIh799jKHdOXab2RP6FXdtBFwiGO06zXiM58uKxTFFh+8m3mRLdiv4TJ0l7ieuP7K83OoDAjwMH9Fn8A8MTe80uhVZokXc0UW355dOWYQhTHIvP7CwuTguYxzuFZWPplVZokxN+4OeVwZRRCY8l4iXF7d9.zPCMj59lA6uFvmX6xOISlriwFarC4GS9mKryV49Dj2Cw+9T7CkY+xjtC.l3u95.9TszRKdrsVQSBwOD+RE9F++82u7xKeE81au1qnepHiALjTXLyVtTTeTQjgJfe2BA67QRhNFsGD48P7KN3GJyhkIrwkgNCqFn1csqckZv2AGbP1xV1BUVYk333j1keJg3GheoBeC1qF3gewW7ESM4+AO3ASgqsjY5vbkDMYr7AEH0Dmqk1MOkRUYA76NsvNG40rk26k.HuGheQE+PYVrLg6.vXiMlGc+tncricj59M1XiblybF.5GM2qOOzLk2TwlBlTID+P7KU3aXRsp.hsksrkT2eu6cuL7vCmqu1sQSIs2gwoJzOXJwLWYHhHuuRotK.c2c2o1J3pqtZhGOdE.KurxJaMAgM.jKrMRRz40ahdWNhfgG7QOo0.noEbeOuGhewA+PY1uLgKYx9LnrLpJuAeuEv6fl60GBvYiabi9ZhKD+P7Kk3iw38r25+IXxePOweelzTe.eDvP9vJvFDXjSbhSj5FFkRVFvmIQhD6IRjHeWGGm+eccc+qUJ02v008OORjHOWAhaVw1TNGAcrG3b.+Zzw.i9Y7UrNJvmDD48P7Kp3Cn2QLixkOA4VQ6nJk5IhFMZi9cvvID+.B+IxEALjPwIEQRKrylg+G+ghH2UD4dHGkB00HBwOD+RE9Fr6JGtay8vC.Vtl0GIZWE7Rl+9FRAPFK4IO.bYQjdDM+Hb6.fG.tzD3G5WRzth4k8pGLbvvkjBjIBCwuzhuRkU2f8bRt8C8aXddWl2+P9DSDFhe.g+Dp.fEMDdWaRl3Tm5TowFaaZSaRcpScp6I1zWnS.DheH9kJ7MXeBQDWa59MaL9mRo4c.6zjWrCPzJDTPjwR9xDfUTQEoHCFQSXQEbbHHWXepScJakdRwFid0AhlDZ9Ig3e+K9SDKzkiIfruFw78NjOPDRg3GP3OgJ.Xk.dOIKqvxV73f5rjnl17ibH9g3Wpv2J.r7QqacqKm3t4Mu46QwiLRC94.w4Ur.vPRPWU7uXAf2fP4EWzalX5CEQdkP7u+E+7kG5ykHZFJbZyDmg3G73muACnW0zfRs6cu6zFHtmd5Q0ZqslZ6HyHAjPJvHzTH9g3Wpv2Z0W2Zcqacogq8tP3wA+dJBLv.CXGY9tneLQvTLZ.Nh3SQiwLvdBiFelfPjRzwgfS33377g3e+K9yEl.btN9SEp.tMQS8p2Pt2sa3NhdEGCH5vRnRzmOUAeNjg3GheoBeKp27ML+9tVX5J5sYOt4YilQZZTQO4+OwunGTS4vOPzSt2uGVdGQg0VB+d9Q4dVJKNjnsIiKmk7q2tcbNQjWyww44Cw+9a7mrsfdRtB7s.OD+BGeQoTR9ZEhFRY4QPS+jK17nQQaMpCXrNwkCr.ztmxkcbbNrevJYg3GheoB+HQh7bJk5qX9s8v8l.eh4uyGXE.ki15rGyjltrHxubrwF6PEB9YIs7r.ONviArzxKubFZngn6t6lMrgM.vuTD4+G+DWPWGjLYxupRo9Rn8.gxQ6BlftbnefqDKVrWJHb8rP7K93GMZzFMDh0iXvKFSr2i4h1EXGF3REZ+uP7CV7yaE.rkr4hAdM3reVP4+og3Gheo.+Lw092ehRS9I9IRjXOnoE40hYv+5qudN8oOM.dDTzuPD4G32J.jszi8mK19adH9EO7yDKCGcbOhsaG5momP7CF7mVJ.DJgRnT7EiB.eOfM555tzLedu81KqcsqcLf2zww464SACnPITBkYoh+xcqgRnDJAsLFvXczQGL3fCl5lG9vG1KBvcEfOJj9WCkPITlLIbG.BkP49HwwwoEfOOvmBXQVOJAZlG7WKh7uDza+enDJgx8+RnB.gRnbejXNFf+Zzw9fxQa.hdF8iuYzkgRnDJy9kPE.lFhcvWYlf3YfHkJiPZlTYwbIoTaDZkJYlV+OnzjlB6+MtLSrMw8CxTVAfhgUdOURGYyRrCPWv4qqzAigkBLBvUiEK1eeopbvZ0fqDnLzw96yEMZzeTPllrbKNunjyfhH+7h41NWrq+CkRqD1+abYlP+uYBRwt7elxbe9oj2gO0rr0i333L.P7fxuWmfzvJAVBvnNNNeL5nAWkn8MVbbbtpeuUnV9e6Shti2X.ePhDIVbznQ+mK1a6pw+P+l.M.7vn8+7AUJUkISl7JniC89tXF74OEXcXJuAFPoTUEIRDBxAgJk0+1oAu+uX55iy0kv9eZoT1+Cl4z9uXV9a4K9qFMOfbSGGmRxws42k+4kB.VC794A98.Vn4Q2F3BIRjnZGGGuXR8HD.jggIM7+M5JbuvDaRzD.yGilbXVFfBHtqqKkUVYWvuRClUdrpVZokU2byM6Q5JeJ.GWW2j9IVSlTVYksFSCxM.r1t5pKZngF3fG7fqdm6bmCnTp0C36CDXBGkeMfMTe80uLOeOe8qe8q7Lm4LaPoTiDMZzBNNzmMoTW+mkAAtiiiymXdbJxGpTMvvrcIr+Wos+2Lo1+EyxeCVeCzbuQsnIhmD.8455FsX0tKvJ+mBTRXaUVYk8aG3SLgcRkHxMEMEsdKQG8ydKwm3g7TTVnHsJZpfUc7iebkRo4A9ZpolTzenmHEHGLmsKGGmmWzgYQWONg2DY3FSD4s8Kd+dJjVdaQjw7BNHlPDpqHRWAUZwTG7tRFAlGqvS56JhzpeRApyDp+Ms++Al7mGErlPzTx5kM+uuR+wgWoeE1+qz0+alV6+hY4uUTAMgxRDeHNmLSn7epn.vqHh7IaZSaxtbHE+iu8sucUO8zi53G+3JQyO59Vi.C9ulHxM18t2cZ36EWz8hXa8zSOJQjj9ckimRPhInz3EHNLAeEeIzqlOWlFjulHxfYjmUlzVaAQ5vf6wDQtkWcvt28tU1+uYh2i4Wbe+Lk5eq79n1XmohGl6MZwZfg4RWg8+Jc8+lI09uXW9aBHXmNK4SkT.Q5zYJk+4kB.5eW4PhN3ljV3H0dGA5omd7hHU84mJ.XoEVR6N9UTQE2SnX0zQ3FhHuleqEpowvqKhLTM0TiZfAFvtw2YDedWOxQ8v22fkpmd5IUXvUDYHQjWOnZPZv8c7JyMJ5oDyJx8lHVzqRuU+D6Rc8uA+SliAAx18NYwXfg4ZWg8+Jo8+lQz9uXW9aZyc1bjOOaQTAf.o7OuXBPiQFrXzVZI80WeodVUUUECN3fTas0xZW6Z4PG5P2F3CDQ5ymOajw.RTWc0A.m4LmggGdXZngFn6t6F.5niN3.G3..79.W0uOaFiA176.NW73wuSyM2L0UWczVasA5yfYIYiS38Kw7au.fEzVasQc0UGM2byDOd76XRW+tnQi9lAHtNG7fGD.15V2JnsAjaa9eLOyAHZ.TNLJvHkv5+6f9r+lLIIvcDQdeeD6YbRYkU1Zx7x69QhD44bbb9GhDIx2MZznM5WXZJSuH59e2Ni9ekArjnQi1XP0GzjWpj6s+2sA9M.+NQj22uw276sDf4kQ+ua.biL5+MOf4G.kA2A8XvSlLF59p9pTVYksFS4+R.JKix+ago7OZznuYPNFbFhCvpxrOfeKJk5wPWllLOd8jLEJ+EkZxcCPiAH7+YM0TyWo2d6cgfl2w8FLFzM914N2I.WC3eU7Q1HyX4qaFsAf445K2D8DPUh1vL7jqB7u433zheaHJVQjtm.3yh1ZzcPWneEzrv1oBR2PIQhDeGzF+RsnGzSALH5I8NuDPtASjHQ9tJk5OBcdeonyy2BsgetXz0A2B32B7u4559W4WXakueZfpQOH2cQOXyh.raCeIftbbbdY+p92B+uL5xcO7FCc8el3+VwhE6uInMNnhs0Wmgq38.nq2cXbhH55naStJzFk40AdOGGmBxJ8yHhnsXFuM2JQaLn2Bc+uaa9J2DeHRrkC7e.zi4TA575M.hiNxPt.zsM80HgoA+cBTO5xVGzF+5uE8f8eJzFBFnG+MNv4cbb9g9A9Vi+9zn666I8itOvxYbZk+V.mG3WWn3mgmm4EENuC54.dTy8tMPu.W.cagJP293l.eXg5lnl79eIvm000M08MAcqKitrNhUZa.fK4GFAuU9+QQOt2CiVAHPWt+wl+eEVoga.7Alz0Emr7ed6Ff.ibgKbgadvCdvEt+8uehGONszRKzbyMCPp+tyctyJ.pQ4SVhYYkU1ZTZ2+oNFexePWYOORexeLedgFsl7MwxsS9LnmDvtiPTLgqQkR8vIRj3w8aWSxB+OGZqfuLyiDzV+9x.pUoTepf.ezCvdGzC3DAc4+hy3clO55nUEMZzF8K7GYjQ5IRjH8YpS8b2uEjkWcLxOsjKD7871.X7NcdhBc33b9ln0UfLobovsjxn8W0L9.QdxXnGLV.V7K7Bu.u5q9pi9q9U+pHttt+I.SqzUNrB6j.eHv6ft83BLoomDceQeyJsyA9JzS3+dn6W.5wEpFe1Jwsv+yhdh.OkMcwLYi4yKBsxIKD8DBKyO7DFqweWKoOl20Qq.x.ny2q0jFVjIstfBEeyhsdJzK5vq81Pn6W8uitM2sPuXfZQWG3MGwM.Nm42v2VLRFxpMW1xs.hmHQhUEMZz+oBo+nU9+yv3i0544SwMWft7uZziKsDfOM54i9Olr7edcD.l.Kxv.CryctyDwiqwcm6bmo19UPqDPSM0D.qAXMQhD44xme+IRLCj9v.U655h2EPzMtwMNut5pqT2qs1Zipqt5p.VuRo9Z901OZF7aG.eEfmpolZZoG6XGC6zywN1wnolZZonqv9Jttt6Hfv+y1TSMsvbfeEAE9JcLn+2G3gapolhkC7mG5AB9RA.90C73.qnolZJRNvOBPM.eg.D+k0TSMQNvWPqbluhusXMgvWF3Y.9CL+8K6559MBhsgzZEn+Q.e1m64dtkX2uq+96m1ZqsH0We8KAXwszRKr28tW191297PyYHS6iFyp+ectttwLXF0bOPuxuw.VsqqaTyyigdACObtBapEH9dJceGzCBuDfZrddPfe0ttth03eqfwUDcd.UZ0dLZ.f+ilw3uKFc49UQOY6BrddjBEeS6kkCTSWc00R79sapolpz7aeaGGm+qNNN+SlzxmoolZpJu2qqt5ZInGKX4A0VyuwMtQr6Gb9yed10t10hPOg8ePgLFPF4+Eak+ihdweehHxOSD4mgVYzxZpolhZk+WL4S9eJXDB+DQj9EiE+64JVYJVFixG5GFBXtrByMu4MmS7EKWhoPvVoRyCHtnjg62jMwxkbtnHxqTn4+YP3eoP7K93m4kkAQloEAGHVeclVe+jk+8LRSqxgBx37lLqvVzFmbfYk1g3WZv2peW+ae6aO0uqU6ptbbbddK2CMs1lFiQu+BsOXtLBvL8FIawJMdooK9Eq7+jp.vTc..kJE+.3Jh7F9TCv6oBXfAFvKSppnhJRKcY4RLErkfaJfOsX4+4JkR0d6s6oniphJpP0d6sm5YVVnaA6Spg3O2F+rjd1tjaKB12s9Zwxpqs6iMQ4eKKy+VhH+jBQojIyJrMS.EXVocH9kN7EMuGzSl+1l1cW1LA4qHhb4JpnhrgeORAtHvbk+Up7dLfSOcGCnXj+mTE.lnA.rIgkL4G.ShLtHxgBhJ.CIfnDQtcl3aU3+VExfO1ZgY+6aoE1cDMwmYhqB5..fBqjDQAQEcmLKeL9m7UkBPCzP7maielokHQh7GaTH4sDQFSYIhlPbdKGGmmORjH+w9ElhV4+As2wMq7+nd4cOex1SLiMbcQjWMHVAlA+2wLAz6Thl.LD+.DeC1ukHo654lw9SZd1aIhjziPfTpzHnt2Jnx+Ynj6ky1X.FNxYZuKDEi7+DZC.lyNXU.U2TSMQCMz..zc2cy1111Hd732EskPdsN6rSN7gObpu6V1xVvbFFKKHNClibji.ZK87r.WsyN6L0yZrwTG6xhTEfw.ZN+pkCTgI+..6e+6GzFiwo.9+y72jl6C.6XG6.zFjRUS2yAKD+413C5ye2ww4eLQhD+2bcc+unzVi8iBjvwwAuKzFd1ipTpM6559eIQhD+2bbb9GKD6PvjtqDnhm4YdlT22jOcQ22OY4kWNczQGL3fCl5c1yd1CnMNuEVnmCcnL2TLtz7kAtlY7dfT8s7r2mZ.hXtGPp4FtFvkCB2hFf8t28BZaf3eG33jkw.LiYTAvxmN8AJF4+ITA.Sh9AXhG.7mBzEvse4W9kS8Nl2eg.UDDC.blybFXbqg7Z430xzCAlRhQ4gECDY8qe8otugCtG.nOGGmeHPe.C3wM2.Xd+nn8LfokRHg3O2FeKNO+KB7UA9BnsvZau.I0qat+m07deUfunqq6VmtJfaR2kCH1J.bhSbBPaw+KFXwczg1Pm87Gcvex+gxbaw38.WA3Jc1Ymzau8Bn4dlMtwMBZ2.ckabiajppRa7+81auXVL3U.tRP4drViAb9IYLfH.Kd5zGnXj+mPE.LI5kBPVF.3S.duXwhsezthxf1YdqUguz.b.fai1EP7cW+xRlOPpc+..iWPbcfgLdHwP.W2y6Hx38meH9g3OcDihyqF3wbccmmsUXmGWyCsBAqt.U.uLfz37igGdXu6urVZoEZngFnwFaD6cgyGK+Ck4vhiiyOE87KIxxpfiADKKq9MAZdf3mFToKSe8gIfGCHny+4ia.FCHkFFPpA.tNvMFYjQ5QD4h.2xb+oCFSWIo4xcxdwBPxU5OoHxPl7+Pja1WpPy+4K94RInhE9g4+fA+7g80JERrm64dNZt4lYG6XGd6HW1jfr+uaF+sXKg3Gv3a7i9KAzu81qauaS1+u4c5G3JlIlCRIvGCHny+SEh.JSw0joS84B32Zlrjq7UTkRUo0mm2T766a3a9atpKCb7MRX92mwORjHWv008p.uuiiScS.FYSFEM6Pd4Bbfvrl9qu954ke4WlCdvCxgNzg.8pNJnibq.jfTIiIShRgMNpeHkx7efiuHxuToTetgGd3U0QGcjZ2ketmKcZloiN5vawoAAUzmMIeGCnfjfL+mOUbI.Ry.eLxhUJ0pMLEkGijkR7NuBfQxCLlthSF+MHj6BjFgGUc0UC5iFoRCIwTKvRM2mLd+6Fz3i1PsJY3Gl+Cl7+HiLRONNNGF3W.7l.+Rzbd96y81uZDy8+Ml26MA9ENNNGt.GH7dx+M0TSzQGcP2c2sG8eO.vn14+hT++4gdbmEFfXLY3O+RL9k57efiuwP19PfaYamY6XG6.6s+17raA7gQiF8GEjoISa8xYBFCvu5CDj4+IbhSQG7MtNj5b+Avy.DVAvmJQhD6AMWTuBy8w58cAFVtOMvnXR22DXrrXbGKCnVCqrUKvxxhghMFvMmt4+P7maiOn2BPWW2sGKVr+BiK.9pnCHNwbSmY1hAbQQjW0ww44iEK1egqq61KDpHMW4+rDPntIvByR9WQAl+MRtBBSUflBTWd80WeABQAg+xJw3Wpy+AJ9FEXuJvGczidzTKFsgFZH04rO3fCxQO5QA3iH.BDbYJ4yX.90bfAY9eBU.vr0g8SFtgfwEeJCs0F+0L+sLy8ARYLBCA7IEgyhIPDS59SH64+n.edf+GL+MZVx+WiBH+Gh+ba7skQFYjdLSleE9+u8tddMJRBi99loFlCqKxFcusWB3BKh5gD+CPHw8ufP.8r4xB6wbbumCA7l4RN3gvZRPLGDhXBD7pLHABXPkAW1MDWESvDhRryzYJO78UI0zo6YhNU0cjTOnOjtGx66My7U8OlpdOdlEmr2sjr++ONNdQWL.nT26.fcsuyid5oGL7vCalHTJvSTQJE8uM.1nazuLv4m.3GwoAVyB5q.fyXuJkbIB7Wr7aUGOCRtGX2KZfrOM3I+1C7Zw.fwFaL.te6p.32Q1iA3jyA5M82IyHfXi.ZkjlbfucAoNYDCFilf7uSX0MNAmKzef+Sw7mbKOsBXo26wFSNYyM27XoeKiBZEpKrAXs9.yHZNhnOYa+p0pU6.9GYjQZo1j2ObR+ef+hk+D0wTDQalzzoz5CLdp2+sZ5NYsUjNAXdnemaEvtvGjS4CfByKr6Buf2I5Ov+oa9yndtKwYcwdzgNx2KHGj8F1aDaEouvV21Cxkk9srpzocQ8XWGIOQiAIyFDW0+G3u342pNtMIViqIyIz5VbkuU7j0ampSzlE70X.9P+eMgAzblKBHsv.ZgEVPOzPCYK766h6Fw5NdZXyGQTCY+2tcG2g0v86j9MYSf75bh9C7G3Oi5YRhn4I1JPmmHZRWxm0E97VyI+M8280We5YlYlVNYPsZ0LYvglX6Q9gtZveqwedeu816QdZChkq1xmGdn+OveAwuYSFqeUhnVpAou6yDQy65dt18DnGXfAZ4FBpWutcOv5DQycRW+GqK.v5KASKuYrsHxjaef3bCXJWI7NcGORc486HR3YpNn+ski6L8G3Ove65MLa93+szWUezQGce4j+6Qr2l+Ah8h7j5eGY.poccnDICD+PhSYw8r3rov6NV6y48+A9KV9s993aSF7MxSbZMpKycl1n6r9IlSa6iDmMBS6gKH245+Xu9UiiiWrZ0p+SiFM9Cv4Cv4AuDPJAYlNBNihekRotmqlElQQQ0UJ0e2rYyXv1s3Y.OqieSoRklMNNdQkRgrNtqpiig9+HDCXnRkJ2w0yB0.+mt4OM3SNhhhpWtb4Wq05yM93i+Yv57cfWNR.bNGbVvq9.i92B.q4C8u+96OoRo9WwZjMK63x.XWbnUf+ifyefcAOYnbV+ef+hk+333a.dl1+y1K8sYmcVyZe++HhdpK35q.uArUzWV96cAujXcdOfuzOo0Z5asnR5w39dPOa9RiqNcbeVO4EmA9C7mWnZ0pWHNN9ZZs9h..DQqpTpmDEEUOq7EHudOHsd87r+Ove9vuRottrL69M.bI.7CarwFG3LsCN3fXokVZK.73JUp7WtV2kKW9VZs9OAvkkkaK.fI.tdN.VrToROxdV96xZv25uqbvp7d.uNw2Is5Ivef+umgnuT0XQq8z3OOqo.+9meILrtI3vv5WA.lXhIRK3aVGdL3eZCZRDsZ230FsC4g9KZKrLf.BHf.B3HPBwpeArY6bjiKFQ0VfSjOuE7OEExC8WzdHc.ADP.ADvQflSQ1eBG9arC.928t+96GKu7xMAvKIhV1W2EdQh7P+eAOWIKji7FNZB.....IUjSD4pPfIH" ],
					"embed" : 1,
					"forceaspect" : 1,
					"id" : "obj-21",
					"maxclass" : "fpic",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "jit_matrix" ],
					"patching_rect" : [ 30.0, 488.5, 100.0, 100.0 ],
					"pic" : "/Users/rob/Dropbox/max-stuff/Max-Connect/patches/font1.png"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "bang" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 2,
							"revision" : 0,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 645.0, 229.0, 915.0, 570.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 1,
						"gridsize" : [ 10.0, 10.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-189",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 500.0, 220.0, 60.0, 21.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-188",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "bang" ],
									"patching_rect" : [ 260.0, 391.0, 40.0, 21.0 ],
									"text" : "t b b"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-186",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "bang" ],
									"patching_rect" : [ 210.0, 391.0, 40.0, 21.0 ],
									"text" : "t b b"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-181",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "bang", "bang", "bang", "bang" ],
									"patching_rect" : [ 220.0, 161.0, 90.0, 21.0 ],
									"text" : "t b b b b"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-126",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "int" ],
									"patching_rect" : [ 220.0, 101.0, 359.0, 21.0 ],
									"text" : "t b b i"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-112",
									"maxclass" : "newobj",
									"numinlets" : 8,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 490.0, 420.0, 180.0, 21.0 ],
									"text" : "pack setcell 0 0 val 0. 0. 0. 0."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-113",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 560.0, 390.0, 60.0, 21.0 ],
									"text" : "zl slice 3"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-111",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 360.0, 141.0, 30.0, 21.0 ],
									"text" : "0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-108",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 360.0, 191.0, 95.0, 21.0 ],
									"text" : "expr 7-($i1/10)"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-102",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 320.0, 191.0, 40.0, 21.0 ],
									"text" : "% 10"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-101",
									"maxclass" : "newobj",
									"numinlets" : 5,
									"numoutlets" : 4,
									"outlettype" : [ "int", "", "", "int" ],
									"patching_rect" : [ 320.0, 161.0, 99.0, 21.0 ],
									"text" : "counter 0 0 79"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-95",
									"maxclass" : "newobj",
									"numinlets" : 8,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 260.0, 421.0, 180.0, 21.0 ],
									"text" : "pack setcell 0 0 val 0. 0. 0. 0."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-94",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 500.0, 390.0, 60.0, 21.0 ],
									"text" : "zl slice 3"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-88",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 470.0, 191.0, 139.0, 21.0 ],
									"text" : "pack getcell 0 0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-83",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 560.0, 360.0, 58.0, 21.0 ],
									"text" : "jit.matrix"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-78",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 500.0, 360.0, 58.0, 21.0 ],
									"text" : "jit.matrix"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-72",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 680.0, 270.0, 178.0, 33.0 ],
									"text" : "jit.expr @expr 0 (1./32.) 0 ((1./32.)*((cell[1]%16)*2+1))"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-73",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 680.0, 250.0, 148.0, 21.0 ],
									"text" : "jit.matrix 4 float32 16 16"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-70",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 500.0, 270.0, 178.0, 33.0 ],
									"text" : "jit.expr @expr (1./32.) 0 0 ((1./32.)*((cell[0]%16)*2+1))"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-71",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 500.0, 250.0, 162.0, 21.0 ],
									"text" : "jit.matrix 4 float32 16 16"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-33",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "bang" ],
									"patching_rect" : [ 220.0, 121.0, 59.0, 21.0 ],
									"text" : "t b b"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-30",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 4,
									"outlettype" : [ "int", "int", "int", "int" ],
									"patching_rect" : [ 220.0, 81.0, 60.0, 21.0 ],
									"text" : "key"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-100",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 530.0, 171.0, 40.0, 21.0 ],
									"text" : "% 16"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-99",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 590.0, 171.0, 102.0, 21.0 ],
									"text" : "expr 16-($i1/16)"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-96",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 560.0, 141.0, 40.0, 21.0 ],
									"text" : "+ 16"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-55",
									"maxclass" : "newobj",
									"numinlets" : 7,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 30.0, 281.0, 179.0, 21.0 ],
									"text" : "pack setcell 0 0 plane 2 val 20"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-18",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 360.0, 21.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-19",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 120.0, 500.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-21",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 230.0, 500.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-23",
									"index" : 3,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 320.0, 500.0, 25.0, 25.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-88", 1 ],
									"source" : [ "obj-100", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-102", 0 ],
									"order" : 1,
									"source" : [ "obj-101", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-108", 0 ],
									"order" : 0,
									"source" : [ "obj-101", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-112", 1 ],
									"order" : 0,
									"source" : [ "obj-102", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-55", 1 ],
									"order" : 2,
									"source" : [ "obj-102", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-95", 1 ],
									"order" : 1,
									"source" : [ "obj-102", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-112", 2 ],
									"order" : 0,
									"source" : [ "obj-108", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-55", 2 ],
									"order" : 2,
									"source" : [ "obj-108", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-95", 2 ],
									"order" : 1,
									"source" : [ "obj-108", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-101", 2 ],
									"source" : [ "obj-111", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"source" : [ "obj-112", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-112", 3 ],
									"midpoints" : [ 610.5, 414.0, 568.5, 414.0 ],
									"source" : [ "obj-113", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"source" : [ "obj-126", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-88", 0 ],
									"midpoints" : [ 399.5, 134.0, 479.5, 134.0 ],
									"source" : [ "obj-126", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-96", 0 ],
									"source" : [ "obj-126", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-111", 0 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-186", 0 ],
									"source" : [ "obj-181", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-188", 0 ],
									"source" : [ "obj-181", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"source" : [ "obj-181", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-55", 0 ],
									"midpoints" : [ 253.166666666666686, 258.0, 39.5, 258.0 ],
									"source" : [ "obj-181", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-186", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"source" : [ "obj-186", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-112", 0 ],
									"midpoints" : [ 290.5, 413.0, 499.5, 413.0 ],
									"source" : [ "obj-188", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-95", 0 ],
									"source" : [ "obj-188", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-71", 0 ],
									"order" : 1,
									"source" : [ "obj-189", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-73", 0 ],
									"midpoints" : [ 509.5, 244.0, 689.5, 244.0 ],
									"order" : 0,
									"source" : [ "obj-189", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-126", 0 ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-101", 0 ],
									"midpoints" : [ 269.5, 150.0, 329.5, 150.0 ],
									"source" : [ "obj-33", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-181", 0 ],
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"source" : [ "obj-55", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-78", 0 ],
									"source" : [ "obj-70", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-70", 0 ],
									"source" : [ "obj-71", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-83", 0 ],
									"midpoints" : [ 689.5, 330.0, 569.5, 330.0 ],
									"source" : [ "obj-72", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-72", 0 ],
									"source" : [ "obj-73", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-94", 0 ],
									"midpoints" : [ 548.5, 386.0, 509.5, 386.0 ],
									"source" : [ "obj-78", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-113", 0 ],
									"midpoints" : [ 608.5, 384.0, 569.5, 384.0 ],
									"source" : [ "obj-83", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-78", 0 ],
									"midpoints" : [ 479.5, 337.5, 509.5, 337.5 ],
									"order" : 1,
									"source" : [ "obj-88", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-83", 0 ],
									"midpoints" : [ 479.5, 329.5, 569.5, 329.5 ],
									"order" : 0,
									"source" : [ "obj-88", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-95", 3 ],
									"midpoints" : [ 550.5, 415.0, 338.5, 415.0 ],
									"source" : [ "obj-94", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-95", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-100", 0 ],
									"order" : 1,
									"source" : [ "obj-96", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-99", 0 ],
									"order" : 0,
									"source" : [ "obj-96", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-88", 2 ],
									"source" : [ "obj-99", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 680.0, 234.0, 123.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"fontname" : "Verdana",
						"fontsize" : 10.0,
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"style" : "default",
					"text" : "p key to matrix"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 21.455326836228615,
					"id" : "obj-51",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 28.0, 256.864864864865012, 182.0, 30.0 ],
					"style" : "default",
					"text" : "Wobbly Word Pad"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 21.655862281202499,
					"id" : "obj-50",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 28.0, 288.864864864864899, 169.0, 31.0 ],
					"style" : "default",
					"text" : "Start Typing ..."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-194",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 710.0, 179.5, 38.0, 20.0 ],
					"style" : "default",
					"text" : "reset"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-192",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 680.0, 179.5, 30.0, 30.0 ],
					"style" : "default"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-190",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 30.0, 426.0, 65.0, 22.0 ],
					"style" : "default",
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-157",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 440.0, 210.0, 69.0, 22.0 ],
					"style" : "default",
					"text" : "jit.* @val 5."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-156",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 445.0, 140.0, 123.0, 22.0 ],
					"style" : "default",
					"text" : "pack offset 0. 0."
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-150",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 310.0, 389.0, 52.0, 22.0 ],
					"style" : "default"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-148",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 310.0, 413.0, 62.0, 22.0 ],
					"style" : "default",
					"text" : "xfade $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-146",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 290.0, 437.0, 169.0, 22.0 ],
					"style" : "default",
					"text" : "jit.xfade @xfade 0.05"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-142",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 440.0, 170.0, 150.0, 35.0 ],
					"style" : "default",
					"text" : "jit.bfg 3 float32 10 8 @basis noise.gradient"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 290.0, 325.0, 214.0, 22.0 ],
					"style" : "default",
					"text" : "jit.slide @slide_up 10 @slide_down 20"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-54",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 290.0, 296.0, 78.0, 22.0 ],
					"style" : "default",
					"text" : "jit.matrix"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_gl_texture", "" ],
					"patching_rect" : [ 30.0, 590.5, 70.0, 22.0 ],
					"style" : "default",
					"text" : "jit.gl.texture"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-65",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 290.0, 140.0, 141.0, 22.0 ],
					"style" : "default",
					"text" : "jit.matrix 3 float32 10 8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-66",
					"linecount" : 3,
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 290.0, 170.0, 93.0, 49.0 ],
					"style" : "default",
					"text" : "jit.expr @expr snorm[0]*3 snorm[1]*2 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 286.0, 574.0, 255.0, 22.0 ],
					"style" : "default",
					"text" : "jit.gl.gridshape @automatic 0 @matrixoutput 1"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-156", 2 ],
					"order" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-156", 1 ],
					"order" : 1,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"order" : 2,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 8 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-157", 0 ],
					"source" : [ "obj-142", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-72", 0 ],
					"source" : [ "obj-146", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-146", 0 ],
					"source" : [ "obj-148", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-148", 0 ],
					"source" : [ "obj-150", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-142", 0 ],
					"source" : [ "obj-156", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-157", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-192", 0 ],
					"order" : 0,
					"source" : [ "obj-190", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"order" : 2,
					"source" : [ "obj-190", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"order" : 1,
					"source" : [ "obj-190", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"order" : 1,
					"source" : [ "obj-192", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 2 ],
					"order" : 0,
					"source" : [ "obj-192", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-142", 0 ],
					"source" : [ "obj-2", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-156", 0 ],
					"source" : [ "obj-2", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 0 ],
					"midpoints" : [ 689.5, 274.0, 299.5, 274.0 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 1 ],
					"source" : [ "obj-24", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"source" : [ "obj-24", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-146", 1 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-146", 0 ],
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"source" : [ "obj-63", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-66", 0 ],
					"source" : [ "obj-65", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 0 ],
					"source" : [ "obj-66", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-64", 4 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-72", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-72", 1 ],
					"source" : [ "obj-73", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 0 ],
					"source" : [ "obj-75", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-77", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 7 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 0 ],
					"source" : [ "obj-89", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "font1.png",
				"bootpath" : "~/Dropbox/max-stuff/Max-Connect/patches",
				"patcherrelativepath" : "../Max-Connect/patches",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "jit.*.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jit.mo.time.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jit.gl.buffer.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0
	}

}
