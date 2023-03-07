{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 2,
			"revision" : 1,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 540.0, 87.0, 1160.0, 936.0 ],
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
					"id" : "obj-72",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 24.0, -42.0, 407.0, 35.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 35.5, 143.0, 407.0, 35.0 ],
					"text" : ";\rmax launchbrowser https://developers.meethue.com/develop/get-started-2/"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Courier New Bold",
					"fontsize" : 22.0,
					"id" : "obj-65",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 24.0, -164.0, 469.0, 31.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 31.0, 13.0, 469.0, 31.0 ],
					"text" : "Philips Hue Light Controller"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Courier New",
					"fontsize" : 14.0,
					"id" : "obj-62",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 24.0, -98.0, 469.0, 54.0 ],
					"presentation" : 1,
					"presentation_linecount" : 3,
					"presentation_rect" : [ 31.0, 87.0, 469.0, 54.0 ],
					"text" : "To understand how to access a Hue bridge’s IP address and to make a request for a username, follow the \"Get Started in Philips Hue API\" by launching this webpage:"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Courier New Bold",
					"id" : "obj-34",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 24.0, -126.0, 469.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 31.0, 54.5, 400.0, 20.0 ],
					"text" : "Developed by Josephine Pu-Sheng Wang on June 22, 2022"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1060.0, 1056.0, 248.0, 33.0 ],
					"text" : "For troubleshooting maxurl:\nEdit below dict @embed"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "dictionary", "" ],
					"patching_rect" : [ 1060.0, 1147.0, 45.0, 22.0 ],
					"text" : "maxurl"
				}

			}
, 			{
				"box" : 				{
					"data" : 					{
						"http_method" : "put",
						"url" : "IP/api/KEY/lights/2/state",
						"post_data" : 						{
							"hue" : 53297,
							"sat" : 12,
							"bri" : 202,
							"transitiontime" : 0
						}
,
						"parse_type" : "json"
					}
,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "dictionary", "", "", "" ],
					"patching_rect" : [ 1060.0, 1103.5, 99.0, 23.0 ],
					"saved_object_attributes" : 					{
						"embed" : 1,
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "dict @embed 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-64",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 855.9375, 223.0, 90.0, 22.0 ],
					"text" : "pak transition 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-61",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 735.0, 22.0, 57.5, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 572.0, 215.5, 57.5, 20.0 ],
					"text" : "ON/OFF"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-57",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 735.0, 43.0, 37.0, 37.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 572.0, 236.5, 37.0, 37.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-53",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 672.5, 342.0, 121.0, 22.0 ],
					"text" : "pak on sym sym 0 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-49",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 771.25, 295.0, 145.0, 35.0 ],
					"text" : "ZAgWUA-mrphififtLRGrBVgUvpaCIjUrDRCqMMJY"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 672.5, 295.0, 82.0, 35.0 ],
					"text" : "172.22.151.226"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 771.25, 254.0, 75.0, 22.0 ],
					"text" : "receive KEY"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 672.5, 254.0, 62.0, 22.0 ],
					"text" : "receive IP"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 194.5, 294.0, 62.0, 22.0 ],
					"text" : "send KEY"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 86.5, 294.0, 49.0, 22.0 ],
					"text" : "send IP"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.466666666666667, 0.0, 1.0 ],
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 856.9375, 382.0, 88.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 572.0, 294.0, 88.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "lightswitch.js",
						"parameter_enable" : 0
					}
,
					"text" : "js lightswitch.js"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1236.0, 828.0, 57.0, 22.0 ],
					"text" : "tosymbol"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-54",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 604.0, -10.0, 153.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 572.0, 121.0, 153.0, 20.0 ],
					"text" : "CHANGE LIGHT STATE"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-51",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 747.0, 622.5, 150.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 572.0, 348.0, 150.0, 20.0 ],
					"text" : "http requests status"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-48",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1463.0, 357.0, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1237.0, 185.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-47",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1247.0, 359.0, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1021.0, 187.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-44",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1028.0, 359.0, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 802.0, 187.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-190",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1312.0, 755.0, 150.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1117.0, 372.0, 150.0, 20.0 ],
					"text" : "New Name"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-188",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1165.0, 723.0, 52.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1021.0, 372.0, 52.0, 20.0 ],
					"text" : "Light ID"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-186",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1074.0, 647.0, 153.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1021.0, 334.0, 153.0, 20.0 ],
					"text" : "CHANGE LIGHT NAME"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-184",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1263.0, 912.0, 47.0, 22.0 ],
					"text" : "delay 5"
				}

			}
, 			{
				"box" : 				{
					"data" : 					{
						"http_method" : "put",
						"url" : "http://172.22.151.226/api/ZAgWUA-mrphififtLRGrBVgUvpaCIjUrDRCqMMJY/lights/ID",
						"post_data" : 						{
							"name" : "Light 3"
						}
,
						"parse_type" : "json"
					}
,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-178",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "dictionary", "", "", "" ],
					"patching_rect" : [ 1211.0, 949.0, 99.0, 23.0 ],
					"saved_object_attributes" : 					{
						"embed" : 1,
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "dict @embed 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-177",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 520.0, 254.0, 123.0, 22.0 ],
					"text" : "tosymbol @separator"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-176",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 520.0, 209.0, 81.0, 22.0 ],
					"text" : "append /state"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-174",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1236.0, 866.0, 165.0, 22.0 ],
					"text" : "prepend set post_data::name"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-173",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "int" ],
					"patching_rect" : [ 1144.0, 828.0, 59.0, 22.0 ],
					"text" : "trigger b i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-172",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "dictionary", "" ],
					"patching_rect" : [ 1211.0, 981.0, 45.0, 22.0 ],
					"text" : "maxurl"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-171",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1060.0, 900.0, 89.0, 22.0 ],
					"text" : "prepend set url"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-170",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1016.0, 828.0, 75.0, 22.0 ],
					"text" : "receive URL"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-166",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1089.0, 783.0, 74.0, 23.0 ],
					"text" : "route bang"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-167",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "select", "clear" ],
					"patching_rect" : [ 1089.0, 685.0, 120.0, 23.0 ],
					"text" : "trigger select clear"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-168",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1089.0, 755.0, 66.0, 23.0 ],
					"text" : "route text"
				}

			}
, 			{
				"box" : 				{
					"autoscroll" : 0,
					"bangmode" : 1,
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-169",
					"keymode" : 1,
					"lines" : 1,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1089.0, 723.0, 74.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1021.0, 392.0, 74.0, 23.0 ],
					"tabmode" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-165",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1060.0, 866.0, 103.0, 22.0 ],
					"text" : "combine URL / ID"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-160",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 833.1875, 22.0, 79.0, 33.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 671.0, 163.0, 121.0, 20.0 ],
					"text" : "Transition Time (sec)"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-152",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1236.0, 783.0, 74.0, 23.0 ],
					"text" : "route bang"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-153",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "select", "clear" ],
					"patching_rect" : [ 1236.0, 685.0, 120.0, 23.0 ],
					"text" : "trigger select clear"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-154",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1236.0, 755.0, 66.0, 23.0 ],
					"text" : "route text"
				}

			}
, 			{
				"box" : 				{
					"autoscroll" : 0,
					"bangmode" : 1,
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-155",
					"keymode" : 1,
					"lines" : 1,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1236.0, 723.0, 174.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1117.0, 392.0, 174.0, 23.0 ],
					"tabmode" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-148",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1563.5, 491.0, 67.0, 22.0 ],
					"text" : "send value"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-147",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1122.75, 491.0, 67.0, 22.0 ],
					"text" : "send value"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-146",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 855.9375, 185.0, 67.0, 22.0 ],
					"text" : "send value"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-145",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1463.0, 491.0, 81.0, 22.0 ],
					"text" : "send attribute"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-144",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1247.0, 491.0, 81.0, 22.0 ],
					"text" : "send attribute"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-143",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1028.0, 491.0, 81.0, 22.0 ],
					"text" : "send attribute"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-142",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 537.0, 327.0, 94.0, 22.0 ],
					"text" : "receive attribute"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-141",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 769.6875, 185.0, 81.0, 22.0 ],
					"text" : "send attribute"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-140",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 621.0, 435.0, 79.0, 22.0 ],
					"text" : "receive value"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-139",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1347.0, 491.0, 67.0, 22.0 ],
					"text" : "send value"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-138",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 856.1875, 140.0, 30.0, 22.0 ],
					"text" : "* 10"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-137",
					"maxclass" : "flonum",
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 833.1875, 58.0, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 671.0, 185.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-135",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 769.6875, 140.0, 80.0, 22.0 ],
					"text" : "transitiontime"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-112",
					"maxclass" : "dict.view",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 634.6875, 891.0, 374.625, 213.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 572.0, 392.0, 353.75, 358.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-111",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 537.0, 435.0, 62.0, 22.0 ],
					"text" : "trigger b s"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-108",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1463.0, 335.0, 150.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1237.0, 163.0, 150.0, 20.0 ],
					"text" : "BRIGHTNESS 0~254"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-107",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1247.0, 335.0, 150.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1021.0, 163.0, 150.0, 20.0 ],
					"text" : "SATURATION 0~254"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-103",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1028.0, 335.0, 150.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 802.0, 163.0, 150.0, 20.0 ],
					"text" : "HUE (0~65535)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-99",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 571.0, 523.0, 47.0, 22.0 ],
					"text" : "delay 5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-94",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1463.0, 401.0, 182.0, 25.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1237.0, 214.0, 182.0, 25.0 ],
					"size" : 255.0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-95",
					"maxclass" : "number",
					"maximum" : 254,
					"minimum" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1563.5, 446.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-96",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1463.0, 443.5, 29.5, 22.0 ],
					"text" : "bri"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-86",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1247.0, 401.0, 182.0, 25.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1021.0, 214.0, 182.0, 25.0 ],
					"size" : 255.0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-87",
					"maxclass" : "number",
					"maximum" : 254,
					"minimum" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1347.0, 443.5, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-88",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1247.0, 443.5, 29.5, 22.0 ],
					"text" : "sat"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-74",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 537.0, 404.0, 123.0, 22.0 ],
					"text" : "tosymbol @separator"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-73",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 537.0, 372.0, 115.0, 22.0 ],
					"text" : "prepend post_data::"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-66",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1028.0, 401.0, 182.0, 25.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 802.0, 214.0, 182.0, 25.0 ],
					"size" : 65536.0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-60",
					"maxclass" : "number",
					"maximum" : 65535,
					"minimum" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1122.75, 443.5, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-58",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1028.0, 443.5, 42.5, 22.0 ],
					"text" : "hue"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-56",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 537.0, 473.0, 103.0, 22.0 ],
					"text" : "pack set key 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-50",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "dictionary", "" ],
					"patching_rect" : [ 537.0, 634.0, 45.0, 22.0 ],
					"text" : "maxurl"
				}

			}
, 			{
				"box" : 				{
					"data" : 					{
						"body" : 						{
							"1" : 							{
								"state" : 								{
									"on" : 1,
									"bri" : 254,
									"hue" : 48000,
									"sat" : 34,
									"effect" : "none",
									"xy" : [ 0.3178, 0.316 ],
									"ct" : 160,
									"alert" : "none",
									"colormode" : "hs",
									"mode" : "homeautomation",
									"reachable" : 0
								}
,
								"swupdate" : 								{
									"state" : "notupdatable",
									"lastinstall" : "2023-02-10T15:06:13"
								}
,
								"type" : "Extended color light",
								"name" : "Extended color light 1",
								"modelid" : "AE 280 C",
								"manufacturername" : "innr",
								"productname" : "Extended color light",
								"capabilities" : 								{
									"certified" : 0,
									"control" : 									{
										"colorgamuttype" : "other",
										"colorgamut" : [ [ 0.68, 0.31 ], [ 0.11, 0.82 ], [ 0.13, 0.04 ] ],
										"ct" : 										{
											"min" : 153,
											"max" : 555
										}

									}
,
									"streaming" : 									{
										"renderer" : 0,
										"proxy" : 0
									}

								}
,
								"config" : 								{
									"archetype" : "classicbulb",
									"function" : "mixed",
									"direction" : "omnidirectional"
								}
,
								"uniqueid" : "50:32:5f:ff:fe:1f:9c:1e-01",
								"swversion" : "2.2"
							}
,
							"2" : 							{
								"state" : 								{
									"on" : 1,
									"bri" : 222,
									"alert" : "none",
									"mode" : "homeautomation",
									"reachable" : 0
								}
,
								"swupdate" : 								{
									"state" : "notupdatable",
									"lastinstall" : "2023-03-01T20:59:14"
								}
,
								"type" : "Dimmable light",
								"name" : "Yan_test",
								"modelid" : "AE 260",
								"manufacturername" : "innr",
								"productname" : "Dimmable light",
								"capabilities" : 								{
									"certified" : 0,
									"control" : 									{

									}
,
									"streaming" : 									{
										"renderer" : 0,
										"proxy" : 0
									}

								}
,
								"config" : 								{
									"archetype" : "classicbulb",
									"function" : "functional",
									"direction" : "omnidirectional"
								}
,
								"uniqueid" : "60:a4:23:ff:fe:c7:c5:9e-01",
								"swversion" : "2.2"
							}
,
							"3" : 							{
								"state" : 								{
									"on" : 0,
									"bri" : 222,
									"hue" : 48000,
									"sat" : 67,
									"effect" : "none",
									"xy" : [ 0.3274, 0.2933 ],
									"ct" : 173,
									"alert" : "none",
									"colormode" : "hs",
									"mode" : "homeautomation",
									"reachable" : 1
								}
,
								"swupdate" : 								{
									"state" : "readytoinstall",
									"lastinstall" : "2023-02-10T15:21:20"
								}
,
								"type" : "Extended color light",
								"name" : "Hue lightstrip outdoor 1",
								"modelid" : "LST004",
								"manufacturername" : "Signify Netherlands B.V.",
								"productname" : "Hue lightstrip outdoor",
								"capabilities" : 								{
									"certified" : 1,
									"control" : 									{
										"mindimlevel" : 2000,
										"colorgamuttype" : "C",
										"colorgamut" : [ [ 0.6915, 0.3083 ], [ 0.17, 0.7 ], [ 0.1532, 0.0475 ] ],
										"ct" : 										{
											"min" : 153,
											"max" : 500
										}

									}
,
									"streaming" : 									{
										"renderer" : 1,
										"proxy" : 1
									}

								}
,
								"config" : 								{
									"archetype" : "huelightstrip",
									"function" : "mixed",
									"direction" : "omnidirectional",
									"startup" : 									{
										"mode" : "safety",
										"configured" : 1
									}

								}
,
								"uniqueid" : "00:17:88:01:03:a3:9a:94-0b",
								"swversion" : "1.88.1",
								"swconfigid" : "0DC52827",
								"productid" : "Philips-LST004-1-LedStripsOutv1"
							}
,
							"4" : 							{
								"state" : 								{
									"on" : 1,
									"bri" : 222,
									"hue" : 48000,
									"sat" : 254,
									"effect" : "none",
									"xy" : [ 0.1567, 0.0867 ],
									"alert" : "none",
									"colormode" : "hs",
									"mode" : "homeautomation",
									"reachable" : 0
								}
,
								"swupdate" : 								{
									"state" : "transferring",
									"lastinstall" : "2023-02-10T15:23:00"
								}
,
								"type" : "Color light",
								"name" : "Hue bloom 1",
								"modelid" : "LLC012",
								"manufacturername" : "Signify Netherlands B.V.",
								"productname" : "Hue bloom",
								"capabilities" : 								{
									"certified" : 1,
									"control" : 									{
										"mindimlevel" : 10000,
										"maxlumen" : 120,
										"colorgamuttype" : "A",
										"colorgamut" : [ [ 0.704, 0.296 ], [ 0.2151, 0.7106 ], [ 0.138, 0.08 ] ]
									}
,
									"streaming" : 									{
										"renderer" : 1,
										"proxy" : 0
									}

								}
,
								"config" : 								{
									"archetype" : "huebloom",
									"function" : "decorative",
									"direction" : "upwards",
									"startup" : 									{
										"mode" : "safety",
										"configured" : 1
									}

								}
,
								"uniqueid" : "00:17:88:01:00:c1:b5:e5-0b",
								"swversion" : "5.127.1.26581"
							}
,
							"6" : 							{
								"state" : 								{
									"on" : 1,
									"bri" : 222,
									"hue" : 48000,
									"sat" : 140,
									"effect" : "none",
									"xy" : [ 0.2696, 0.2023 ],
									"ct" : 500,
									"alert" : "none",
									"colormode" : "hs",
									"mode" : "homeautomation",
									"reachable" : 0
								}
,
								"swupdate" : 								{
									"state" : "transferring",
									"lastinstall" : "2023-02-10T15:28:11"
								}
,
								"type" : "Extended color light",
								"name" : "άννα",
								"modelid" : "LCA005",
								"manufacturername" : "Signify Netherlands B.V.",
								"productname" : "Hue color lamp",
								"capabilities" : 								{
									"certified" : 1,
									"control" : 									{
										"mindimlevel" : 200,
										"maxlumen" : 800,
										"colorgamuttype" : "C",
										"colorgamut" : [ [ 0.6915, 0.3083 ], [ 0.17, 0.7 ], [ 0.1532, 0.0475 ] ],
										"ct" : 										{
											"min" : 153,
											"max" : 500
										}

									}
,
									"streaming" : 									{
										"renderer" : 1,
										"proxy" : 1
									}

								}
,
								"config" : 								{
									"archetype" : "sultanbulb",
									"function" : "mixed",
									"direction" : "omnidirectional",
									"startup" : 									{
										"mode" : "safety",
										"configured" : 1
									}

								}
,
								"uniqueid" : "00:17:88:01:0b:6d:ef:93-0b",
								"swversion" : "1.76.11",
								"swconfigid" : "3689F8B6",
								"productid" : "Philips-LCA005-1-A19ECLv7"
							}
,
							"8" : 							{
								"state" : 								{
									"on" : 0,
									"bri" : 222,
									"alert" : "none",
									"mode" : "homeautomation",
									"reachable" : 0
								}
,
								"swupdate" : 								{
									"state" : "notupdatable",
									"lastinstall" : "2023-02-10T15:37:23"
								}
,
								"type" : "Dimmable light",
								"name" : "Dimmable light 2",
								"modelid" : "ZLL Light",
								"manufacturername" : "GE_Appliances",
								"productname" : "Dimmable light",
								"capabilities" : 								{
									"certified" : 0,
									"control" : 									{

									}
,
									"streaming" : 									{
										"renderer" : 0,
										"proxy" : 0
									}

								}
,
								"config" : 								{
									"archetype" : "classicbulb",
									"function" : "functional",
									"direction" : "omnidirectional"
								}
,
								"uniqueid" : "7c:e5:24:00:00:11:d2:49-01",
								"swversion" : "1.3.4.0"
							}
,
							"9" : 							{
								"state" : 								{
									"on" : 1,
									"bri" : 222,
									"alert" : "none",
									"mode" : "homeautomation",
									"reachable" : 0
								}
,
								"swupdate" : 								{
									"state" : "notupdatable",
									"lastinstall" : "2023-02-10T15:40:15"
								}
,
								"type" : "Dimmable light",
								"name" : "Dimmable light 3",
								"modelid" : "Connected A-19 60W Equivalent  ",
								"manufacturername" : "CREE                           ",
								"productname" : "Dimmable light",
								"capabilities" : 								{
									"certified" : 0,
									"control" : 									{

									}
,
									"streaming" : 									{
										"renderer" : 0,
										"proxy" : 0
									}

								}
,
								"config" : 								{
									"archetype" : "classicbulb",
									"function" : "functional",
									"direction" : "omnidirectional"
								}
,
								"uniqueid" : "e2:0d:b9:ff:fe:07:bf:9f-0a",
								"swversion" : "500            "
							}
,
							"10" : 							{
								"state" : 								{
									"on" : 1,
									"bri" : 222,
									"hue" : 48000,
									"sat" : 254,
									"effect" : "none",
									"xy" : [ 0.1794, 0.0602 ],
									"ct" : 366,
									"alert" : "none",
									"colormode" : "hs",
									"mode" : "homeautomation",
									"reachable" : 0
								}
,
								"swupdate" : 								{
									"state" : "transferring",
									"lastinstall" : "2023-02-10T15:52:35"
								}
,
								"type" : "Extended color light",
								"name" : "Hue lightstrip outdoor 2",
								"modelid" : "LST004",
								"manufacturername" : "Signify Netherlands B.V.",
								"productname" : "Hue lightstrip outdoor",
								"capabilities" : 								{
									"certified" : 1,
									"control" : 									{
										"mindimlevel" : 2000,
										"colorgamuttype" : "C",
										"colorgamut" : [ [ 0.6915, 0.3083 ], [ 0.17, 0.7 ], [ 0.1532, 0.0475 ] ],
										"ct" : 										{
											"min" : 153,
											"max" : 500
										}

									}
,
									"streaming" : 									{
										"renderer" : 1,
										"proxy" : 1
									}

								}
,
								"config" : 								{
									"archetype" : "huelightstrip",
									"function" : "mixed",
									"direction" : "omnidirectional",
									"startup" : 									{
										"mode" : "safety",
										"configured" : 1
									}

								}
,
								"uniqueid" : "00:17:88:01:03:a3:9b:e0-0b",
								"swversion" : "1.88.1",
								"swconfigid" : "0DC52827",
								"productid" : "Philips-LST004-1-LedStripsOutv1"
							}
,
							"11" : 							{
								"state" : 								{
									"on" : 1,
									"bri" : 222,
									"ct" : 366,
									"alert" : "none",
									"colormode" : "ct",
									"mode" : "homeautomation",
									"reachable" : 0
								}
,
								"swupdate" : 								{
									"state" : "transferring",
									"lastinstall" : "2023-03-01T20:51:06"
								}
,
								"type" : "Color temperature light",
								"name" : "leia_hue",
								"modelid" : "LTW013",
								"manufacturername" : "Signify Netherlands B.V.",
								"productname" : "Hue ambiance spot",
								"capabilities" : 								{
									"certified" : 1,
									"control" : 									{
										"mindimlevel" : 1000,
										"maxlumen" : 250,
										"ct" : 										{
											"min" : 153,
											"max" : 454
										}

									}
,
									"streaming" : 									{
										"renderer" : 0,
										"proxy" : 0
									}

								}
,
								"config" : 								{
									"archetype" : "spotbulb",
									"function" : "functional",
									"direction" : "downwards"
								}
,
								"uniqueid" : "00:17:88:01:04:89:53:78-0b",
								"swversion" : "1.15.2_r19181",
								"swconfigid" : "B7A3ED0F",
								"productid" : "Philips-LTW013-1-GU10CTv1"
							}
,
							"12" : 							{
								"state" : 								{
									"on" : 1,
									"bri" : 222,
									"alert" : "none",
									"mode" : "homeautomation",
									"reachable" : 0
								}
,
								"swupdate" : 								{
									"state" : "transferring",
									"lastinstall" : "2023-03-01T20:51:07"
								}
,
								"type" : "Dimmable light",
								"name" : "Hue white lamp 1",
								"modelid" : "LWB004",
								"manufacturername" : "Signify Netherlands B.V.",
								"productname" : "Hue white lamp",
								"capabilities" : 								{
									"certified" : 1,
									"control" : 									{
										"mindimlevel" : 2000,
										"maxlumen" : 750
									}
,
									"streaming" : 									{
										"renderer" : 0,
										"proxy" : 0
									}

								}
,
								"config" : 								{
									"archetype" : "sultanbulb",
									"function" : "functional",
									"direction" : "omnidirectional"
								}
,
								"uniqueid" : "00:17:88:01:00:e5:ba:42-0b",
								"swversion" : "5.17.1.12040"
							}
,
							"13" : 							{
								"state" : 								{
									"on" : 1,
									"bri" : 222,
									"hue" : 48000,
									"sat" : 201,
									"effect" : "none",
									"xy" : [ 0.5349, 0.3183 ],
									"ct" : 518,
									"alert" : "none",
									"colormode" : "hs",
									"mode" : "homeautomation",
									"reachable" : 0
								}
,
								"swupdate" : 								{
									"state" : "notupdatable",
									"lastinstall" : "2023-03-01T20:51:27"
								}
,
								"type" : "Extended color light",
								"name" : "Extended color light 2",
								"modelid" : "AE 280 C",
								"manufacturername" : "innr",
								"productname" : "Extended color light",
								"capabilities" : 								{
									"certified" : 0,
									"control" : 									{
										"colorgamuttype" : "other",
										"colorgamut" : [ [ 0.68, 0.31 ], [ 0.11, 0.82 ], [ 0.13, 0.04 ] ],
										"ct" : 										{
											"min" : 153,
											"max" : 555
										}

									}
,
									"streaming" : 									{
										"renderer" : 0,
										"proxy" : 0
									}

								}
,
								"config" : 								{
									"archetype" : "classicbulb",
									"function" : "mixed",
									"direction" : "omnidirectional"
								}
,
								"uniqueid" : "2c:11:65:ff:fe:f2:69:b3-01",
								"swversion" : "2.2"
							}
,
							"14" : 							{
								"state" : 								{
									"on" : 1,
									"bri" : 222,
									"hue" : 48000,
									"sat" : 254,
									"effect" : "none",
									"xy" : [ 0.1794, 0.0602 ],
									"ct" : 500,
									"alert" : "none",
									"colormode" : "hs",
									"mode" : "homeautomation",
									"reachable" : 0
								}
,
								"swupdate" : 								{
									"state" : "transferring",
									"lastinstall" : "2023-03-01T20:51:30"
								}
,
								"type" : "Extended color light",
								"name" : "Hue color lamp 2",
								"modelid" : "LCA005",
								"manufacturername" : "Signify Netherlands B.V.",
								"productname" : "Hue color lamp",
								"capabilities" : 								{
									"certified" : 1,
									"control" : 									{
										"mindimlevel" : 200,
										"maxlumen" : 800,
										"colorgamuttype" : "C",
										"colorgamut" : [ [ 0.6915, 0.3083 ], [ 0.17, 0.7 ], [ 0.1532, 0.0475 ] ],
										"ct" : 										{
											"min" : 153,
											"max" : 500
										}

									}
,
									"streaming" : 									{
										"renderer" : 1,
										"proxy" : 1
									}

								}
,
								"config" : 								{
									"archetype" : "sultanbulb",
									"function" : "mixed",
									"direction" : "omnidirectional",
									"startup" : 									{
										"mode" : "safety",
										"configured" : 1
									}

								}
,
								"uniqueid" : "00:17:88:01:0b:6e:17:7d-0b",
								"swversion" : "1.93.7",
								"swconfigid" : "5419E9E3",
								"productid" : "Philips-LCA005-1-A19ECLv7"
							}
,
							"15" : 							{
								"state" : 								{
									"on" : 1,
									"bri" : 222,
									"hue" : 48000,
									"sat" : 200,
									"effect" : "none",
									"xy" : [ 0.2221, 0.1275 ],
									"ct" : 153,
									"alert" : "none",
									"colormode" : "hs",
									"mode" : "homeautomation",
									"reachable" : 0
								}
,
								"swupdate" : 								{
									"state" : "transferring",
									"lastinstall" : "2023-03-01T20:54:39"
								}
,
								"type" : "Extended color light",
								"name" : "cool bulb",
								"modelid" : "LCA005",
								"manufacturername" : "Signify Netherlands B.V.",
								"productname" : "Hue color lamp",
								"capabilities" : 								{
									"certified" : 1,
									"control" : 									{
										"mindimlevel" : 200,
										"maxlumen" : 800,
										"colorgamuttype" : "C",
										"colorgamut" : [ [ 0.6915, 0.3083 ], [ 0.17, 0.7 ], [ 0.1532, 0.0475 ] ],
										"ct" : 										{
											"min" : 153,
											"max" : 500
										}

									}
,
									"streaming" : 									{
										"renderer" : 1,
										"proxy" : 1
									}

								}
,
								"config" : 								{
									"archetype" : "sultanbulb",
									"function" : "mixed",
									"direction" : "omnidirectional",
									"startup" : 									{
										"mode" : "safety",
										"configured" : 1
									}

								}
,
								"uniqueid" : "00:17:88:01:0b:6d:ed:0f-0b",
								"swversion" : "1.76.11",
								"swconfigid" : "3689F8B6",
								"productid" : "Philips-LCA005-1-A19ECLv7"
							}
,
							"16" : 							{
								"state" : 								{
									"on" : 1,
									"bri" : 222,
									"alert" : "lselect",
									"mode" : "homeautomation",
									"reachable" : 0
								}
,
								"swupdate" : 								{
									"state" : "notupdatable",
									"lastinstall" : "2023-03-01T21:08:11"
								}
,
								"type" : "Dimmable light",
								"name" : "Riho",
								"modelid" : "AE 260",
								"manufacturername" : "innr",
								"productname" : "Dimmable light",
								"capabilities" : 								{
									"certified" : 0,
									"control" : 									{

									}
,
									"streaming" : 									{
										"renderer" : 0,
										"proxy" : 0
									}

								}
,
								"config" : 								{
									"archetype" : "classicbulb",
									"function" : "functional",
									"direction" : "omnidirectional"
								}
,
								"uniqueid" : "60:a4:23:ff:fe:f9:b1:16-01",
								"swversion" : "2.2"
							}
,
							"17" : 							{
								"state" : 								{
									"on" : 0,
									"bri" : 222,
									"hue" : 48000,
									"sat" : 254,
									"effect" : "none",
									"xy" : [ 0.1285, 0.0975 ],
									"ct" : 153,
									"alert" : "none",
									"colormode" : "hs",
									"mode" : "homeautomation",
									"reachable" : 0
								}
,
								"swupdate" : 								{
									"state" : "notupdatable",
									"lastinstall" : "2023-03-01T20:59:40"
								}
,
								"type" : "Extended color light",
								"name" : "ER bulb from Shuang",
								"modelid" : "AE 280 C",
								"manufacturername" : "innr",
								"productname" : "Extended color light",
								"capabilities" : 								{
									"certified" : 0,
									"control" : 									{
										"colorgamuttype" : "other",
										"colorgamut" : [ [ 0.68, 0.31 ], [ 0.11, 0.82 ], [ 0.13, 0.04 ] ],
										"ct" : 										{
											"min" : 153,
											"max" : 555
										}

									}
,
									"streaming" : 									{
										"renderer" : 0,
										"proxy" : 0
									}

								}
,
								"config" : 								{
									"archetype" : "classicbulb",
									"function" : "mixed",
									"direction" : "omnidirectional"
								}
,
								"uniqueid" : "0c:43:14:ff:fe:7c:99:1e-01",
								"swversion" : "2.2"
							}
,
							"18" : 							{
								"state" : 								{
									"on" : 0,
									"bri" : 222,
									"hue" : 48000,
									"sat" : 78,
									"effect" : "none",
									"xy" : [ 0.3187, 0.2796 ],
									"ct" : 153,
									"alert" : "none",
									"colormode" : "hs",
									"mode" : "homeautomation",
									"reachable" : 0
								}
,
								"swupdate" : 								{
									"state" : "transferring",
									"lastinstall" : "2023-03-01T21:11:16"
								}
,
								"type" : "Extended color light",
								"name" : "Adlight",
								"modelid" : "LCA005",
								"manufacturername" : "Signify Netherlands B.V.",
								"productname" : "Hue color lamp",
								"capabilities" : 								{
									"certified" : 1,
									"control" : 									{
										"mindimlevel" : 200,
										"maxlumen" : 800,
										"colorgamuttype" : "C",
										"colorgamut" : [ [ 0.6915, 0.3083 ], [ 0.17, 0.7 ], [ 0.1532, 0.0475 ] ],
										"ct" : 										{
											"min" : 153,
											"max" : 500
										}

									}
,
									"streaming" : 									{
										"renderer" : 1,
										"proxy" : 1
									}

								}
,
								"config" : 								{
									"archetype" : "sultanbulb",
									"function" : "mixed",
									"direction" : "omnidirectional",
									"startup" : 									{
										"mode" : "safety",
										"configured" : 1
									}

								}
,
								"uniqueid" : "00:17:88:01:0b:6a:d9:6f-0b",
								"swversion" : "1.76.11",
								"swconfigid" : "3689F8B6",
								"productid" : "Philips-LCA005-1-A19ECLv7"
							}
,
							"19" : 							{
								"state" : 								{
									"on" : 0,
									"bri" : 222,
									"hue" : 48000,
									"sat" : 254,
									"effect" : "none",
									"xy" : [ 0.1285, 0.0975 ],
									"ct" : 153,
									"alert" : "none",
									"colormode" : "hs",
									"mode" : "homeautomation",
									"reachable" : 0
								}
,
								"swupdate" : 								{
									"state" : "notupdatable",
									"lastinstall" : "2023-03-01T21:11:32"
								}
,
								"type" : "Extended color light",
								"name" : "Extended color light 4",
								"modelid" : "AE 280 C",
								"manufacturername" : "innr",
								"productname" : "Extended color light",
								"capabilities" : 								{
									"certified" : 0,
									"control" : 									{
										"colorgamuttype" : "other",
										"colorgamut" : [ [ 0.68, 0.31 ], [ 0.11, 0.82 ], [ 0.13, 0.04 ] ],
										"ct" : 										{
											"min" : 153,
											"max" : 555
										}

									}
,
									"streaming" : 									{
										"renderer" : 0,
										"proxy" : 0
									}

								}
,
								"config" : 								{
									"archetype" : "classicbulb",
									"function" : "mixed",
									"direction" : "omnidirectional"
								}
,
								"uniqueid" : "2c:11:65:ff:fe:f2:6a:38-01",
								"swversion" : "2.2"
							}
,
							"20" : 							{
								"state" : 								{
									"on" : 1,
									"bri" : 222,
									"hue" : 48000,
									"sat" : 254,
									"effect" : "none",
									"xy" : [ 0.4576, 0.41 ],
									"ct" : 370,
									"alert" : "none",
									"colormode" : "hs",
									"mode" : "homeautomation",
									"reachable" : 0
								}
,
								"swupdate" : 								{
									"state" : "notupdatable",
									"lastinstall" : null
								}
,
								"type" : "Extended color light",
								"name" : "Extended color light 5",
								"modelid" : "AE 280 C",
								"manufacturername" : "innr",
								"productname" : "Extended color light",
								"capabilities" : 								{
									"certified" : 0,
									"control" : 									{
										"colorgamuttype" : "other",
										"colorgamut" : [ [ 0.68, 0.31 ], [ 0.11, 0.82 ], [ 0.13, 0.04 ] ],
										"ct" : 										{
											"min" : 153,
											"max" : 555
										}

									}
,
									"streaming" : 									{
										"renderer" : 0,
										"proxy" : 0
									}

								}
,
								"config" : 								{
									"archetype" : "classicbulb",
									"function" : "mixed",
									"direction" : "omnidirectional"
								}
,
								"uniqueid" : "2c:11:65:ff:fe:f2:6a:00-01",
								"swversion" : "2.2"
							}
,
							"21" : 							{
								"state" : 								{
									"on" : 0,
									"bri" : 222,
									"alert" : "none",
									"mode" : "homeautomation",
									"reachable" : 0
								}
,
								"swupdate" : 								{
									"state" : "notupdatable",
									"lastinstall" : "2023-03-01T21:23:01"
								}
,
								"type" : "Dimmable light",
								"name" : "Dimmable light 5",
								"modelid" : "AE 260",
								"manufacturername" : "innr",
								"productname" : "Dimmable light",
								"capabilities" : 								{
									"certified" : 0,
									"control" : 									{

									}
,
									"streaming" : 									{
										"renderer" : 0,
										"proxy" : 0
									}

								}
,
								"config" : 								{
									"archetype" : "classicbulb",
									"function" : "functional",
									"direction" : "omnidirectional"
								}
,
								"uniqueid" : "60:a4:23:ff:fe:f9:a2:27-01",
								"swversion" : "2.2"
							}
,
							"22" : 							{
								"state" : 								{
									"on" : 0,
									"bri" : 222,
									"alert" : "none",
									"mode" : "homeautomation",
									"reachable" : 0
								}
,
								"swupdate" : 								{
									"state" : "notupdatable",
									"lastinstall" : "2023-03-01T21:19:29"
								}
,
								"type" : "Dimmable light",
								"name" : "Dimmable light 6",
								"modelid" : "ZLL Light",
								"manufacturername" : "GE_Appliances",
								"productname" : "Dimmable light",
								"capabilities" : 								{
									"certified" : 0,
									"control" : 									{

									}
,
									"streaming" : 									{
										"renderer" : 0,
										"proxy" : 0
									}

								}
,
								"config" : 								{
									"archetype" : "classicbulb",
									"function" : "functional",
									"direction" : "omnidirectional"
								}
,
								"uniqueid" : "7c:e5:24:00:00:13:78:f8-01",
								"swversion" : "1.3.4.0"
							}
,
							"23" : 							{
								"state" : 								{
									"on" : 0,
									"bri" : 222,
									"hue" : 48000,
									"sat" : 201,
									"effect" : "none",
									"xy" : [ 0.4576, 0.41 ],
									"ct" : 370,
									"alert" : "none",
									"colormode" : "hs",
									"mode" : "homeautomation",
									"reachable" : 0
								}
,
								"swupdate" : 								{
									"state" : "notupdatable",
									"lastinstall" : "2023-03-01T22:14:42"
								}
,
								"type" : "Extended color light",
								"name" : "Extended color light 6",
								"modelid" : "AE 280 C",
								"manufacturername" : "innr",
								"productname" : "Extended color light",
								"capabilities" : 								{
									"certified" : 0,
									"control" : 									{
										"colorgamuttype" : "other",
										"colorgamut" : [ [ 0.68, 0.31 ], [ 0.11, 0.82 ], [ 0.13, 0.04 ] ],
										"ct" : 										{
											"min" : 153,
											"max" : 555
										}

									}
,
									"streaming" : 									{
										"renderer" : 0,
										"proxy" : 0
									}

								}
,
								"config" : 								{
									"archetype" : "classicbulb",
									"function" : "mixed",
									"direction" : "omnidirectional"
								}
,
								"uniqueid" : "0c:43:14:ff:fe:7c:7d:a7-01",
								"swversion" : "2.2"
							}
,
							"24" : 							{
								"state" : 								{
									"on" : 1,
									"bri" : 254,
									"hue" : 200,
									"sat" : 140,
									"effect" : "none",
									"xy" : [ 0.5496, 0.3407 ],
									"ct" : 500,
									"alert" : "none",
									"colormode" : "hs",
									"mode" : "homeautomation",
									"reachable" : 0
								}
,
								"swupdate" : 								{
									"state" : "readytoinstall",
									"lastinstall" : "2023-03-04T23:42:11"
								}
,
								"type" : "Extended color light",
								"name" : "Hue color lamp 3",
								"modelid" : "LCA005",
								"manufacturername" : "Signify Netherlands B.V.",
								"productname" : "Hue color lamp",
								"capabilities" : 								{
									"certified" : 1,
									"control" : 									{
										"mindimlevel" : 200,
										"maxlumen" : 800,
										"colorgamuttype" : "C",
										"colorgamut" : [ [ 0.6915, 0.3083 ], [ 0.17, 0.7 ], [ 0.1532, 0.0475 ] ],
										"ct" : 										{
											"min" : 153,
											"max" : 500
										}

									}
,
									"streaming" : 									{
										"renderer" : 1,
										"proxy" : 1
									}

								}
,
								"config" : 								{
									"archetype" : "sultanbulb",
									"function" : "mixed",
									"direction" : "omnidirectional",
									"startup" : 									{
										"mode" : "safety",
										"configured" : 1
									}

								}
,
								"uniqueid" : "00:17:88:01:0b:6e:18:a8-0b",
								"swversion" : "1.76.11",
								"swconfigid" : "3689F8B6",
								"productid" : "Philips-LCA005-1-A19ECLv7"
							}
,
							"25" : 							{
								"state" : 								{
									"on" : 0,
									"bri" : 250,
									"hue" : 8417,
									"sat" : 140,
									"effect" : "none",
									"xy" : [ 0.4574, 0.41 ],
									"ct" : 366,
									"alert" : "none",
									"colormode" : "ct",
									"mode" : "homeautomation",
									"reachable" : 1
								}
,
								"swupdate" : 								{
									"state" : "readytoinstall",
									"lastinstall" : "2023-03-05T00:43:11"
								}
,
								"type" : "Extended color light",
								"name" : "Leia's Clip Lamp",
								"modelid" : "LCA005",
								"manufacturername" : "Signify Netherlands B.V.",
								"productname" : "Hue color lamp",
								"capabilities" : 								{
									"certified" : 1,
									"control" : 									{
										"mindimlevel" : 200,
										"maxlumen" : 800,
										"colorgamuttype" : "C",
										"colorgamut" : [ [ 0.6915, 0.3083 ], [ 0.17, 0.7 ], [ 0.1532, 0.0475 ] ],
										"ct" : 										{
											"min" : 153,
											"max" : 500
										}

									}
,
									"streaming" : 									{
										"renderer" : 1,
										"proxy" : 1
									}

								}
,
								"config" : 								{
									"archetype" : "sultanbulb",
									"function" : "mixed",
									"direction" : "omnidirectional",
									"startup" : 									{
										"mode" : "safety",
										"configured" : 1
									}

								}
,
								"uniqueid" : "00:17:88:01:0b:6e:0f:40-0b",
								"swversion" : "1.76.11",
								"swconfigid" : "3689F8B6",
								"productid" : "Philips-LCA005-1-A19ECLv7"
							}

						}
,
						"header" : "HTTP/1.1 200 OK\r\nServer: nginx\r\nDate: Sun, 05 Mar 2023 20:02:32 GMT\r\nContent-Type: application/json\r\nConnection: close\r\nCache-Control: no-store, no-cache, must-revalidate, post-check=0, pre-check=0\r\nPragma: no-cache\r\nExpires: Mon, 1 Aug 2011 09:00:00 GMT\r\nAccess-Control-Max-Age: 3600\r\nAccess-Control-Allow-Origin: *\r\nAccess-Control-Allow-Credentials: true\r\nAccess-Control-Allow-Methods: POST, GET, OPTIONS, PUT, DELETE, HEAD\r\nAccess-Control-Allow-Headers: Content-Type\r\nX-XSS-Protection: 1; mode=block\r\nX-Frame-Options: SAMEORIGIN\r\nX-Content-Type-Options: nosniff\r\nContent-Security-Policy: default-src 'self'\r\nCache-Control: no-store\r\nPragma: no-cache\r\nReferrer-Policy: no-referrer\r\n\r\n",
						"status" : 200,
						"connect_code" : 0,
						"url" : "http://172.22.151.226/api/ZAgWUA-mrphififtLRGrBVgUvpaCIjUrDRCqMMJY/lights",
						"file_time" : -1,
						"total_time" : 0.028713,
						"size_upload" : 0.0,
						"size_download" : 16971.0,
						"content_length_download" : -1.0,
						"content_length_upload" : -1.0,
						"content_type" : "application/json"
					}
,
					"id" : "obj-46",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "dictionary", "", "", "" ],
					"patching_rect" : [ 291.0, 401.0, 135.0, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 1,
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "dict getLight @embed 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 520.0, 294.0, 89.0, 22.0 ],
					"text" : "prepend set url"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-37",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 544.0, 88.0, 57.0, 22.0 ],
					"text" : "tosymbol"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 604.0, 22.0, 90.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 572.0, 163.0, 90.0, 20.0 ],
					"text" : "Enter Light ID"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 544.0, 125.0, 62.0, 22.0 ],
					"text" : "trigger b s"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 629.0, 43.0, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 572.0, 185.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 520.0, 43.0, 75.0, 22.0 ],
					"text" : "receive URL"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 291.0, 259.0, 75.0, 22.0 ],
					"text" : "receive URL"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 24.0, 445.0, 62.0, 22.0 ],
					"text" : "send URL"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 520.0, 170.0, 103.0, 22.0 ],
					"text" : "combine URL / ID"
				}

			}
, 			{
				"box" : 				{
					"data" : 					{
						"http_method" : "put",
						"url" : "http://172.22.151.226/api/ZAgWUA-mrphififtLRGrBVgUvpaCIjUrDRCqMMJY/lights/25/state",
						"post_data" : 						{
							"hue" : 44217,
							"sat" : 208,
							"bri" : 216,
							"transitiontime" : 10
						}
,
						"parse_type" : "json"
					}
,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-52",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "dictionary", "", "", "" ],
					"patching_rect" : [ 537.0, 590.5, 99.0, 23.0 ],
					"saved_object_attributes" : 					{
						"embed" : 1,
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "dict @embed 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-45",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 382.75, 192.0, 101.0, 47.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 81.0, 348.0, 316.0, 20.0 ],
					"text" : "Bang to view all lights in system in below window"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 34.0, 421.0, 231.0, 20.0 ],
					"text" : "formulate an address to get light status"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-41",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 131.0, 244.0, 62.0, 22.0 ],
					"text" : "trigger b s"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 24.0, 244.0, 62.0, 22.0 ],
					"text" : "trigger b s"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-39",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 24.0, 342.0, 189.0, 22.0 ],
					"text" : "combine http:// IP /api/ KEY /lights"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 291.0, 294.0, 89.0, 22.0 ],
					"text" : "prepend set url"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 24.0, 382.0, 249.0, 35.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 31.0, 300.0, 454.0, 22.0 ],
					"text" : "http://172.22.151.226/api/ZAgWUA-mrphififtLRGrBVgUvpaCIjUrDRCqMMJY/lights"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 2,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-8",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 265.0, 65.0, 213.0, 40.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 257.5, 222.0, 213.0, 40.0 ],
					"text" : "type in User Key and press 'return'"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 236.0, 183.0, 74.0, 23.0 ],
					"text" : "route bang"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "select", "clear" ],
					"patching_rect" : [ 236.0, 27.0, 120.0, 23.0 ],
					"text" : "trigger select clear"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 236.0, 155.0, 66.0, 23.0 ],
					"text" : "route text"
				}

			}
, 			{
				"box" : 				{
					"autoscroll" : 0,
					"bangmode" : 1,
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-17",
					"keymode" : 1,
					"lines" : 1,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 236.0, 123.0, 242.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 243.0, 265.0, 242.0, 23.0 ],
					"tabmode" : 0
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 2,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-4",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 34.0, 65.0, 164.0, 55.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 31.0, 207.0, 174.0, 55.0 ],
					"text" : "type in Hue Bridge IP Address and press 'return'"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 24.0, 183.0, 74.0, 23.0 ],
					"text" : "route bang"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "select", "clear" ],
					"patching_rect" : [ 24.0, 27.0, 120.0, 23.0 ],
					"text" : "trigger select clear"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 24.0, 155.0, 66.0, 23.0 ],
					"text" : "route text"
				}

			}
, 			{
				"box" : 				{
					"autoscroll" : 0,
					"bangmode" : 1,
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-7",
					"keymode" : 1,
					"lines" : 1,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 24.0, 123.0, 174.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 31.0, 265.0, 174.0, 23.0 ],
					"tabmode" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 404.5, 294.0, 56.0, 22.0 ],
					"text" : "set url \" \""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "dict.view",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 24.0, 493.0, 485.0, 358.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 31.0, 392.0, 485.0, 358.0 ],
					"style" : "default"
				}

			}
, 			{
				"box" : 				{
					"data" : 					{
						"http_method" : "get",
						"url" : "http://172.22.151.226/api/ZAgWUA-mrphififtLRGrBVgUvpaCIjUrDRCqMMJY/lights",
						"response_dict" : "data1",
						"parse_type" : "json"
					}
,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-35",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "dictionary", "", "", "" ],
					"patching_rect" : [ 291.0, 334.0, 99.0, 23.0 ],
					"saved_object_attributes" : 					{
						"embed" : 1,
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "dict @embed 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 333.0, 192.0, 48.0, 48.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 31.0, 334.0, 48.0, 48.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 291.0, 437.0, 102.0, 22.0 ],
					"text" : "dict.unpack body:"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "dictionary", "" ],
					"patching_rect" : [ 291.0, 369.0, 45.0, 22.0 ],
					"text" : "maxurl"
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bordercolor" : [ 0.807843137254902, 0.898039215686275, 0.909803921568627, 0.0 ],
					"id" : "obj-77",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 20.0, -164.0, 473.0, 166.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 31.0, 13.0, 469.0, 170.0 ],
					"proportion" : 0.5
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"midpoints" : [ 300.5, 393.0, 300.5, 393.0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-176", 0 ],
					"midpoints" : [ 529.5, 195.0, 529.5, 195.0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 1 ],
					"midpoints" : [ 589.5, 459.0, 588.5, 459.0 ],
					"source" : [ "obj-111", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"midpoints" : [ 546.5, 459.0, 546.5, 459.0 ],
					"source" : [ "obj-111", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"midpoints" : [ 300.5, 216.0, 222.0, 216.0, 222.0, 21.0, 245.5, 21.0 ],
					"order" : 0,
					"source" : [ "obj-12", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"midpoints" : [ 300.5, 231.0, 140.5, 231.0 ],
					"order" : 1,
					"source" : [ "obj-12", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"midpoints" : [ 346.5, 51.0, 252.0, 51.0, 252.0, 108.0, 245.5, 108.0 ],
					"source" : [ "obj-13", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"midpoints" : [ 245.5, 51.0, 245.5, 51.0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-141", 0 ],
					"midpoints" : [ 779.1875, 165.0, 779.1875, 165.0 ],
					"source" : [ "obj-135", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-135", 0 ],
					"midpoints" : [ 842.6875, 126.0, 779.1875, 126.0 ],
					"order" : 1,
					"source" : [ "obj-137", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-138", 0 ],
					"midpoints" : [ 842.6875, 126.0, 865.6875, 126.0 ],
					"order" : 0,
					"source" : [ "obj-137", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-146", 0 ],
					"midpoints" : [ 865.6875, 165.0, 865.4375, 165.0 ],
					"order" : 1,
					"source" : [ "obj-138", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-64", 1 ],
					"midpoints" : [ 865.6875, 165.0, 924.0, 165.0, 924.0, 171.0, 933.0, 171.0, 933.0, 219.0, 936.4375, 219.0 ],
					"order" : 0,
					"source" : [ "obj-138", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"midpoints" : [ 300.5, 282.0, 300.5, 282.0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 2 ],
					"midpoints" : [ 630.5, 459.0, 630.5, 459.0 ],
					"source" : [ "obj-140", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 0 ],
					"midpoints" : [ 546.5, 351.0, 546.5, 351.0 ],
					"source" : [ "obj-142", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"midpoints" : [ 529.5, 66.0, 529.5, 66.0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-153", 0 ],
					"midpoints" : [ 1300.5, 809.0, 1223.0, 809.0, 1223.0, 680.0, 1245.5, 680.0 ],
					"order" : 1,
					"source" : [ "obj-152", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"midpoints" : [ 1300.5, 809.0, 1245.5, 809.0 ],
					"order" : 0,
					"source" : [ "obj-152", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-155", 0 ],
					"midpoints" : [ 1346.5, 710.0, 1245.5, 710.0 ],
					"source" : [ "obj-153", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-155", 0 ],
					"midpoints" : [ 1245.5, 710.0, 1245.5, 710.0 ],
					"source" : [ "obj-153", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-152", 0 ],
					"midpoints" : [ 1245.5, 779.0, 1245.5, 779.0 ],
					"source" : [ "obj-154", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-154", 0 ],
					"midpoints" : [ 1245.5, 749.0, 1245.5, 749.0 ],
					"source" : [ "obj-155", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"midpoints" : [ 245.5, 180.0, 245.5, 180.0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-171", 0 ],
					"midpoints" : [ 1069.5, 890.0, 1069.5, 890.0 ],
					"source" : [ "obj-165", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-167", 0 ],
					"midpoints" : [ 1153.5, 809.0, 1076.0, 809.0, 1076.0, 680.0, 1098.5, 680.0 ],
					"order" : 1,
					"source" : [ "obj-166", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-173", 0 ],
					"midpoints" : [ 1153.5, 809.0, 1153.5, 809.0 ],
					"order" : 0,
					"source" : [ "obj-166", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-169", 0 ],
					"midpoints" : [ 1199.5, 710.0, 1098.5, 710.0 ],
					"source" : [ "obj-167", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-169", 0 ],
					"midpoints" : [ 1098.5, 710.0, 1098.5, 710.0 ],
					"source" : [ "obj-167", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-166", 0 ],
					"midpoints" : [ 1098.5, 779.0, 1098.5, 779.0 ],
					"source" : [ "obj-168", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-168", 0 ],
					"midpoints" : [ 1098.5, 749.0, 1098.5, 749.0 ],
					"source" : [ "obj-169", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"midpoints" : [ 245.5, 147.0, 245.5, 147.0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-165", 0 ],
					"midpoints" : [ 1025.5, 860.0, 1069.5, 860.0 ],
					"source" : [ "obj-170", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-178", 0 ],
					"midpoints" : [ 1069.5, 935.0, 1220.5, 935.0 ],
					"source" : [ "obj-171", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-112", 0 ],
					"midpoints" : [ 1220.5, 993.0, 1040.0, 993.0, 1040.0, 871.0, 644.1875, 871.0 ],
					"source" : [ "obj-172", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-165", 2 ],
					"midpoints" : [ 1193.5, 860.0, 1153.5, 860.0 ],
					"source" : [ "obj-173", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-165", 0 ],
					"midpoints" : [ 1153.5, 851.0, 1069.5, 851.0 ],
					"source" : [ "obj-173", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-178", 0 ],
					"midpoints" : [ 1245.5, 935.0, 1220.5, 935.0 ],
					"order" : 1,
					"source" : [ "obj-174", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-184", 0 ],
					"midpoints" : [ 1245.5, 899.0, 1272.5, 899.0 ],
					"order" : 0,
					"source" : [ "obj-174", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-177", 0 ],
					"midpoints" : [ 529.5, 234.0, 529.5, 234.0 ],
					"source" : [ "obj-176", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"midpoints" : [ 529.5, 279.0, 529.5, 279.0 ],
					"source" : [ "obj-177", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-172", 0 ],
					"midpoints" : [ 1220.5, 974.0, 1220.5, 974.0 ],
					"source" : [ "obj-178", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-178", 0 ],
					"midpoints" : [ 1272.5, 935.0, 1220.5, 935.0 ],
					"source" : [ "obj-184", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"midpoints" : [ 134.5, 51.0, 21.0, 51.0, 21.0, 117.0, 33.5, 117.0 ],
					"source" : [ "obj-19", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"midpoints" : [ 33.5, 60.0, 21.0, 60.0, 21.0, 117.0, 33.5, 117.0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"midpoints" : [ 33.5, 180.0, 33.5, 180.0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"midpoints" : [ 88.5, 216.0, 9.0, 216.0, 9.0, 21.0, 33.5, 21.0 ],
					"order" : 1,
					"source" : [ "obj-20", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"midpoints" : [ 88.5, 231.0, 33.5, 231.0 ],
					"order" : 0,
					"source" : [ "obj-20", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"midpoints" : [ 1069.5, 1128.0, 1069.5, 1128.0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"midpoints" : [ 638.5, 75.0, 553.5, 75.0 ],
					"order" : 1,
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 3 ],
					"midpoints" : [ 638.5, 240.0, 657.0, 240.0, 657.0, 327.0, 758.5, 327.0 ],
					"order" : 0,
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 2 ],
					"midpoints" : [ 596.5, 162.0, 613.5, 162.0 ],
					"source" : [ "obj-23", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"midpoints" : [ 553.5, 150.0, 529.5, 150.0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"midpoints" : [ 342.5, 243.0, 276.0, 243.0, 276.0, 330.0, 300.5, 330.0 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 1 ],
					"midpoints" : [ 682.0, 279.0, 745.0, 279.0 ],
					"order" : 0,
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"midpoints" : [ 682.0, 279.0, 682.0, 279.0 ],
					"order" : 1,
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-174", 0 ],
					"midpoints" : [ 1245.5, 851.0, 1245.5, 851.0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"midpoints" : [ 414.0, 330.0, 300.5, 330.0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 1 ],
					"midpoints" : [ 780.75, 279.0, 906.75, 279.0 ],
					"order" : 0,
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"midpoints" : [ 780.75, 279.0, 780.75, 279.0 ],
					"order" : 1,
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"midpoints" : [ 33.5, 420.0, 30.0, 420.0, 30.0, 441.0, 33.5, 441.0 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"midpoints" : [ 300.5, 318.0, 300.5, 318.0 ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 300.5, 360.0, 300.5, 360.0 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"midpoints" : [ 553.5, 111.0, 553.5, 111.0 ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"midpoints" : [ 529.5, 576.0, 546.5, 576.0 ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 1 ],
					"midpoints" : [ 33.5, 366.0, 9.0, 366.0, 9.0, 327.0, 263.5, 327.0 ],
					"order" : 0,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"midpoints" : [ 33.5, 366.0, 33.5, 366.0 ],
					"order" : 1,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"midpoints" : [ 76.5, 279.0, 96.0, 279.0 ],
					"order" : 0,
					"source" : [ "obj-40", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 1 ],
					"midpoints" : [ 76.5, 267.0, 76.0, 267.0 ],
					"order" : 1,
					"source" : [ "obj-40", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"midpoints" : [ 33.5, 267.0, 33.5, 267.0 ],
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"midpoints" : [ 183.5, 279.0, 204.0, 279.0 ],
					"order" : 0,
					"source" : [ "obj-41", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 3 ],
					"midpoints" : [ 183.5, 279.0, 161.0, 279.0 ],
					"order" : 1,
					"source" : [ "obj-41", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"midpoints" : [ 140.5, 279.0, 33.5, 279.0 ],
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 1 ],
					"midpoints" : [ 682.0, 327.0, 707.5, 327.0 ],
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-66", 0 ],
					"midpoints" : [ 1037.5, 384.0, 1037.5, 384.0 ],
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"midpoints" : [ 300.5, 426.0, 300.5, 426.0 ],
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 0 ],
					"midpoints" : [ 1256.5, 384.0, 1256.5, 384.0 ],
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 0 ],
					"midpoints" : [ 1472.5, 381.0, 1472.5, 381.0 ],
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 2 ],
					"midpoints" : [ 780.75, 333.0, 733.0, 333.0 ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-112", 0 ],
					"midpoints" : [ 546.5, 666.0, 669.0, 666.0, 669.0, 639.0, 644.1875, 639.0 ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"midpoints" : [ 546.5, 615.0, 546.5, 615.0 ],
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 682.0, 378.0, 866.4375, 378.0 ],
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"midpoints" : [ 546.5, 498.0, 546.5, 498.0 ],
					"order" : 1,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-99", 0 ],
					"midpoints" : [ 546.5, 510.0, 580.5, 510.0 ],
					"order" : 0,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 4 ],
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-143", 0 ],
					"midpoints" : [ 1037.5, 468.0, 1037.5, 468.0 ],
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-147", 0 ],
					"midpoints" : [ 1132.25, 468.0, 1132.25, 468.0 ],
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 865.4375, 282.0, 927.0, 282.0, 927.0, 369.0, 866.4375, 369.0 ],
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"midpoints" : [ 1037.5, 429.0, 1037.5, 429.0 ],
					"order" : 1,
					"source" : [ "obj-66", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"midpoints" : [ 1037.5, 438.0, 1132.25, 438.0 ],
					"order" : 0,
					"source" : [ "obj-66", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"midpoints" : [ 33.5, 147.0, 33.5, 147.0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 0 ],
					"midpoints" : [ 546.5, 396.0, 546.5, 396.0 ],
					"source" : [ "obj-73", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-111", 0 ],
					"midpoints" : [ 546.5, 429.0, 546.5, 429.0 ],
					"source" : [ "obj-74", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-87", 0 ],
					"midpoints" : [ 1256.5, 438.0, 1356.5, 438.0 ],
					"order" : 0,
					"source" : [ "obj-86", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-88", 0 ],
					"midpoints" : [ 1256.5, 429.0, 1256.5, 429.0 ],
					"order" : 1,
					"source" : [ "obj-86", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-139", 0 ],
					"midpoints" : [ 1356.5, 468.0, 1356.5, 468.0 ],
					"source" : [ "obj-87", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-144", 0 ],
					"midpoints" : [ 1256.5, 468.0, 1256.5, 468.0 ],
					"source" : [ "obj-88", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"midpoints" : [ 300.5, 480.0, 33.5, 480.0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-95", 0 ],
					"midpoints" : [ 1472.5, 438.0, 1573.0, 438.0 ],
					"order" : 0,
					"source" : [ "obj-94", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-96", 0 ],
					"midpoints" : [ 1472.5, 429.0, 1472.5, 429.0 ],
					"order" : 1,
					"source" : [ "obj-94", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-148", 0 ],
					"midpoints" : [ 1573.0, 471.0, 1573.0, 471.0 ],
					"source" : [ "obj-95", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-145", 0 ],
					"midpoints" : [ 1472.5, 468.0, 1472.5, 468.0 ],
					"source" : [ "obj-96", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"midpoints" : [ 580.5, 576.0, 546.5, 576.0 ],
					"source" : [ "obj-99", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "lightswitch.js",
				"bootpath" : "~/Documents/ITP/2023_Spring/code/light/06_Hue_Controller",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
