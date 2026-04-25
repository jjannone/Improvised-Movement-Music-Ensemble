{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 3,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 34.0, 96.0, 970.0, 826.0 ],
        "openinpresentation": 1,
        "boxes": [
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 16.0,
                    "id": "obj-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 50.0, 15.0, 400.0, 24.0 ],
                    "text": "Improvised Ensemble Sequencer v3"
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "obj-1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 20.0, 12.0, 288.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 15.0, 10.0, 690.0, 22.0 ],
                    "text": "IMPROVISED ENSEMBLE SEQUENCER v3"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 20.0, 34.0, 642.0, 20.0 ],
                    "text": "── SETUP ───────────────────────────────────────────────────────────────────"
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 25.0, 57.0, 48.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 15.0, 34.0, 120.0, 20.0 ],
                    "text": "Name"
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 182.0, 57.0, 111.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 65.0, 34.0, 108.0, 20.0 ],
                    "text": "No Solo Dance"
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 295.0, 57.0, 111.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 180.0, 34.0, 100.0, 20.0 ],
                    "text": "No Solo Music"
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 250.0, 125.0, 48.0, 22.0 ],
                    "text": "dump"
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 261.0, 268.0, 55.0, 22.0 ],
                    "text": "clear"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "int" ],
                    "patching_rect": [ 253.0, 336.0, 69.0, 22.0 ],
                    "text": "capture"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 58.0, 336.0, 76.0, 22.0 ],
                    "text": "print CB"
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 430.0, 57.0, 174.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 15.0, 224.0, 175.0, 20.0 ],
                    "text": "Max group size (music)"
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "number",
                    "maximum": 20,
                    "minimum": 1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 430.0, 75.0, 65.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 255.0, 221.0, 55.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 583.0, 56.0, 90.0, 22.0 ],
                    "text": "loadmess 4"
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 430.0, 105.0, 153.0, 22.0 ],
                    "text": "setmaxgroupmusic $1"
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 430.0, 135.0, 174.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 15.0, 250.0, 175.0, 20.0 ],
                    "text": "Max group size (dance)"
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "number",
                    "maximum": 20,
                    "minimum": 1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 430.0, 153.0, 65.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 255.0, 247.0, 55.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 583.0, 134.0, 90.0, 22.0 ],
                    "text": "loadmess 4"
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 430.0, 183.0, 153.0, 22.0 ],
                    "text": "setmaxgroupdance $1"
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 430.0, 213.0, 188.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 15.0, 276.0, 185.0, 20.0 ],
                    "text": "Total duration (minutes)"
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "maxclass": "number",
                    "maximum": 480,
                    "minimum": 1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 430.0, 231.0, 65.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 255.0, 273.0, 55.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-20",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 583.0, 212.0, 97.0, 22.0 ],
                    "text": "loadmess 10"
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 430.0, 261.0, 118.0, 22.0 ],
                    "text": "setduration $1"
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 430.0, 291.0, 195.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 15.0, 302.0, 185.0, 20.0 ],
                    "text": "Start countdown (seconds)"
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "maxclass": "number",
                    "maximum": 120,
                    "minimum": 1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 430.0, 309.0, 65.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 255.0, 299.0, 55.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-24",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 583.0, 290.0, 97.0, 22.0 ],
                    "text": "loadmess 10"
                }
            },
            {
                "box": {
                    "id": "obj-25",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 430.0, 339.0, 160.0, 22.0 ],
                    "text": "setcountdownstart $1"
                }
            },
            {
                "box": {
                    "id": "obj-26",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 335.0, 369.0, 167.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 44.0, 336.0, 150.0, 20.0 ],
                    "text": "Generate Permutations"
                }
            },
            {
                "box": {
                    "id": "obj-27",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 335.0, 387.0, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 15.0, 333.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-28",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 335.0, 415.0, 76.0, 22.0 ],
                    "text": "generate"
                }
            },
            {
                "box": {
                    "id": "obj-29",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 478.0, 369.0, 55.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 214.0, 336.0, 60.0, 20.0 ],
                    "text": "Reset"
                }
            },
            {
                "box": {
                    "id": "obj-30",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 478.0, 387.0, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 185.0, 333.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-31",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 478.0, 415.0, 55.0, 22.0 ],
                    "text": "reset"
                }
            },
            {
                "box": {
                    "id": "obj-32",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 791.0, 439.0, 104.0, 22.0 ],
                    "text": "print STATUS"
                }
            },
            {
                "box": {
                    "filename": "ensemble-v3.js",
                    "id": "obj-33",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 6,
                    "outlettype": [ "", "", "", "", "", "" ],
                    "patching_rect": [ 706.0, 322.0, 139.0, 22.0 ],
                    "saved_object_attributes": {
                        "parameter_enable": 0
                    },
                    "text": "v8 ensemble-v3.js",
                    "textfile": {
                        "filename": "ensemble-v3.js",
                        "flags": 0,
                        "embed": 0,
                        "autowatch": 1
                    }
                }
            },
            {
                "box": {
                    "filename": "display.js",
                    "id": "obj-34",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 706.0, 406.0, 111.0, 22.0 ],
                    "saved_object_attributes": {
                        "parameter_enable": 0
                    },
                    "text": "v8 display.js",
                    "textfile": {
                        "filename": "display.js",
                        "flags": 0,
                        "embed": 0,
                        "autowatch": 1
                    }
                }
            },
            {
                "box": {
                    "id": "obj-35",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 530.0, 780.0, 97.0, 22.0 ],
                    "text": "prepend run"
                }
            },
            {
                "box": {
                    "id": "obj-36",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 20.0, 498.0, 644.0, 20.0 ],
                    "text": "── PERFORMANCE ─────────────────────────────────────────────────────────────"
                }
            },
            {
                "box": {
                    "fontsize": 18.0,
                    "id": "obj-37",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 20.0, 518.0, 109.0, 27.0 ],
                    "text": "MUSICIANS"
                }
            },
            {
                "box": {
                    "fontsize": 18.0,
                    "id": "obj-38",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 775.0, 518.0, 97.0, 27.0 ],
                    "text": "DANCERS"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-39",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 440.0, 518.0, 111.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 375.0, 40.0, 330.0, 20.0 ],
                    "text": "NEXT TO MOVE:"
                }
            },
            {
                "box": {
                    "bgcolor": [ 1.0, 0.82, 0.0, 1.0 ],
                    "bgcolor2": [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 1 ],
                    "bgfillcolor_color": [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 1 ],
                    "bgfillcolor_color1": [ 1.0, 0.82, 0.0, 1.0 ],
                    "bgfillcolor_color2": [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 1 ],
                    "bgfillcolor_type": "gradient",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "id": "obj-40",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 440.0, 538.0, 310.0, 25.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 375.0, 60.0, 330.0, 25.0 ],
                    "text": "\"Jaco to Music\"",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-41",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 440.0, 618.0, 97.0, 22.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "obj-42",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 440.0, 654.0, 153.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 375.0, 175.0, 330.0, 20.0 ],
                    "text": "Countdown (seconds)"
                }
            },
            {
                "box": {
                    "fontsize": 24.0,
                    "id": "obj-43",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 440.0, 672.0, 140.0, 35.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 375.0, 193.0, 330.0, 35.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-44",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 440.0, 734.0, 41.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 375.0, 324.0, 36.0, 20.0 ],
                    "text": "Run"
                }
            },
            {
                "box": {
                    "id": "obj-45",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 440.0, 752.0, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 375.0, 341.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-46",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 440.0, 784.0, 90.0, 22.0 ],
                    "text": "metro 1000"
                }
            },
            {
                "box": {
                    "id": "obj-47",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 440.0, 816.0, 48.0, 22.0 ],
                    "text": "tick"
                }
            },
            {
                "box": {
                    "id": "obj-48",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 480.0, 854.0, 118.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 415.0, 324.0, 120.0, 20.0 ],
                    "text": "Manual Advance"
                }
            },
            {
                "box": {
                    "id": "obj-49",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 440.0, 870.0, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 415.0, 341.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-50",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 480.0, 898.0, 55.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 463.0, 324.0, 50.0, 20.0 ],
                    "text": "Done!"
                }
            },
            {
                "box": {
                    "id": "obj-51",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 440.0, 914.0, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 463.0, 341.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-52",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "jit_matrix", "bang", "" ],
                    "patching_rect": [ 866.0, 33.0, 321.0, 22.0 ],
                    "text": "jit.world PERFORMANCE @enable 1 @floating 1"
                }
            },
            {
                "box": {
                    "id": "obj-53",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 876.0, 268.0, 139.0, 22.0 ],
                    "text": "poly~ textpoly 15"
                }
            },
            {
                "box": {
                    "id": "obj-54",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 583.0, 326.0, 76.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-55",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 583.0, 356.0, 48.0, 22.0 ],
                    "text": "init"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-56",
                    "maxclass": "jit.cellblock",
                    "numinlets": 2,
                    "numoutlets": 4,
                    "outlettype": [ "list", "", "", "" ],
                    "patching_rect": [ 20.0, 87.0, 200.0, 220.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 15.0, 54.0, 301.0, 165.0 ],
                    "selmode": 5
                }
            },
            {
                "box": {
                    "code": "--- CLAUDE2MAX SPEC ---\n{\n  \"name\": \"Improvised Ensemble Sequencer v3\",\n  \"width\": 1402,\n  \"height\": 960,\n  \"objects\": {\n    \"title\": {\n      \"type\": \"comment\",\n      \"text\": \"IMPROVISED ENSEMBLE SEQUENCER v3\",\n      \"pos\": [\n        20,\n        12\n      ],\n      \"attrs\": {\n        \"fontsize\": 14\n      },\n      \"presentation\": true,\n      \"presentation_rect\": [\n        15,\n        10,\n        690,\n        22\n      ]\n    },\n    \"lbl_setup\": {\n      \"type\": \"comment\",\n      \"text\": \"\\u2500\\u2500 SETUP \\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\",\n      \"pos\": [\n        20,\n        34\n      ]\n    },\n    \"lbl_col_name\": {\n      \"type\": \"comment\",\n      \"text\": \"Name\",\n      \"pos\": [\n        25,\n        57\n      ],\n      \"presentation\": true,\n      \"presentation_rect\": [\n        15,\n        40,\n        120,\n        14\n      ]\n    },\n    \"lbl_col_nsd\": {\n      \"type\": \"comment\",\n      \"text\": \"No Solo Dance\",\n      \"pos\": [\n        182,\n        57\n      ],\n      \"presentation\": true,\n      \"presentation_rect\": [\n        145,\n        40,\n        108,\n        14\n      ]\n    },\n    \"lbl_col_nsm\": {\n      \"type\": \"comment\",\n      \"text\": \"No Solo Music\",\n      \"pos\": [\n        295,\n        57\n      ],\n      \"presentation\": true,\n      \"presentation_rect\": [\n        260,\n        40,\n        100,\n        14\n      ]\n    },\n    \"dump\": {\n      \"type\": \"message\",\n      \"text\": \"dump\",\n      \"pos\": [\n        250,\n        125\n      ]\n    },\n    \"clear\": {\n      \"type\": \"message\",\n      \"text\": \"clear\",\n      \"pos\": [\n        261,\n        268\n      ]\n    },\n    \"capture\": {\n      \"type\": \"newobj\",\n      \"text\": \"capture\",\n      \"pos\": [\n        253,\n        336\n      ]\n    },\n    \"print\": {\n      \"type\": \"newobj\",\n      \"text\": \"print CB\",\n      \"pos\": [\n        58,\n        336\n      ]\n    },\n    \"lbl_maxgroup_music\": {\n      \"type\": \"comment\",\n      \"text\": \"Max group size (music)\",\n      \"pos\": [\n        430,\n        57\n      ],\n      \"presentation\": true,\n      \"presentation_rect\": [\n        15,\n        224,\n        175,\n        14\n      ]\n    },\n    \"num_maxgroup_music\": {\n      \"type\": \"number\",\n      \"pos\": [\n        430,\n        75\n      ],\n      \"size\": [\n        65,\n        22\n      ],\n      \"attrs\": {\n        \"minimum\": 1,\n        \"maximum\": 20\n      },\n      \"presentation\": true,\n      \"presentation_rect\": [\n        255,\n        221,\n        55,\n        22\n      ]\n    },\n    \"loadmess_music\": {\n      \"type\": \"newobj\",\n      \"text\": \"loadmess 4\",\n      \"pos\": [\n        583,\n        56\n      ]\n    },\n    \"msg_setmaxgroup_music\": {\n      \"type\": \"message\",\n      \"text\": \"setmaxgroupmusic $1\",\n      \"pos\": [\n        430,\n        105\n      ]\n    },\n    \"lbl_maxgroup_dance\": {\n      \"type\": \"comment\",\n      \"text\": \"Max group size (dance)\",\n      \"pos\": [\n        430,\n        135\n      ],\n      \"presentation\": true,\n      \"presentation_rect\": [\n        15,\n        250,\n        175,\n        14\n      ]\n    },\n    \"num_maxgroup_dance\": {\n      \"type\": \"number\",\n      \"pos\": [\n        430,\n        153\n      ],\n      \"size\": [\n        65,\n        22\n      ],\n      \"attrs\": {\n        \"minimum\": 1,\n        \"maximum\": 20\n      },\n      \"presentation\": true,\n      \"presentation_rect\": [\n        255,\n        247,\n        55,\n        22\n      ]\n    },\n    \"loadmess_dance\": {\n      \"type\": \"newobj\",\n      \"text\": \"loadmess 4\",\n      \"pos\": [\n        583,\n        134\n      ]\n    },\n    \"msg_setmaxgroup_dance\": {\n      \"type\": \"message\",\n      \"text\": \"setmaxgroupdance $1\",\n      \"pos\": [\n        430,\n        183\n      ]\n    },\n    \"lbl_duration\": {\n      \"type\": \"comment\",\n      \"text\": \"Total duration (minutes)\",\n      \"pos\": [\n        430,\n        213\n      ],\n      \"presentation\": true,\n      \"presentation_rect\": [\n        15,\n        276,\n        185,\n        14\n      ]\n    },\n    \"num_duration\": {\n      \"type\": \"number\",\n      \"pos\": [\n        430,\n        231\n      ],\n      \"size\": [\n        65,\n        22\n      ],\n      \"attrs\": {\n        \"minimum\": 1,\n        \"maximum\": 480\n      },\n      \"presentation\": true,\n      \"presentation_rect\": [\n        255,\n        273,\n        55,\n        22\n      ]\n    },\n    \"loadmess_2\": {\n      \"type\": \"newobj\",\n      \"text\": \"loadmess 10\",\n      \"pos\": [\n        583,\n        212\n      ]\n    },\n    \"msg_setduration\": {\n      \"type\": \"message\",\n      \"text\": \"setduration $1\",\n      \"pos\": [\n        430,\n        261\n      ]\n    },\n    \"lbl_cstart\": {\n      \"type\": \"comment\",\n      \"text\": \"Start countdown (seconds)\",\n      \"pos\": [\n        430,\n        291\n      ],\n      \"presentation\": true,\n      \"presentation_rect\": [\n        15,\n        302,\n        185,\n        14\n      ]\n    },\n    \"num_cstart\": {\n      \"type\": \"number\",\n      \"pos\": [\n        430,\n        309\n      ],\n      \"size\": [\n        65,\n        22\n      ],\n      \"attrs\": {\n        \"minimum\": 1,\n        \"maximum\": 120\n      },\n      \"presentation\": true,\n      \"presentation_rect\": [\n        255,\n        299,\n        55,\n        22\n      ]\n    },\n    \"loadmess_cstart\": {\n      \"type\": \"newobj\",\n      \"text\": \"loadmess 10\",\n      \"pos\": [\n        583,\n        290\n      ]\n    },\n    \"msg_setcstart\": {\n      \"type\": \"message\",\n      \"text\": \"setcountdownstart $1\",\n      \"pos\": [\n        430,\n        339\n      ]\n    },\n    \"lbl_gen\": {\n      \"type\": \"comment\",\n      \"text\": \"Generate Permutations\",\n      \"pos\": [\n        335,\n        369\n      ],\n      \"presentation\": true,\n      \"presentation_rect\": [\n        44,\n        336,\n        150,\n        16\n      ]\n    },\n    \"btn_generate\": {\n      \"type\": \"button\",\n      \"pos\": [\n        335,\n        387\n      ],\n      \"presentation\": true,\n      \"presentation_rect\": [\n        15,\n        333,\n        24,\n        24\n      ]\n    },\n    \"msg_generate\": {\n      \"type\": \"message\",\n      \"text\": \"generate\",\n      \"pos\": [\n        335,\n        415\n      ]\n    },\n    \"lbl_reset\": {\n      \"type\": \"comment\",\n      \"text\": \"Reset\",\n      \"pos\": [\n        478,\n        369\n      ],\n      \"presentation\": true,\n      \"presentation_rect\": [\n        214,\n        336,\n        60,\n        16\n      ]\n    },\n    \"btn_reset\": {\n      \"type\": \"button\",\n      \"pos\": [\n        478,\n        387\n      ],\n      \"presentation\": true,\n      \"presentation_rect\": [\n        185,\n        333,\n        24,\n        24\n      ]\n    },\n    \"msg_reset\": {\n      \"type\": \"message\",\n      \"text\": \"reset\",\n      \"pos\": [\n        478,\n        415\n      ]\n    },\n    \"prep_status\": {\n      \"type\": \"newobj\",\n      \"text\": \"print STATUS\",\n      \"pos\": [\n        791,\n        439\n      ]\n    },\n    \"brain\": {\n      \"type\": \"newobj\",\n      \"text\": \"v8 ensemble-v3.js\",\n      \"pos\": [\n        706,\n        322\n      ],\n      \"inlets\": 1,\n      \"outlets\": 6,\n      \"outlettype\": [\n        \"\",\n        \"int\",\n        \"\",\n        \"\",\n        \"bang\",\n        \"\"\n      ]\n    },\n    \"display_brain\": {\n      \"type\": \"newobj\",\n      \"text\": \"v8 display.js\",\n      \"pos\": [\n        706,\n        406\n      ],\n      \"inlets\": 2,\n      \"outlets\": 1,\n      \"outlettype\": [\n        \"\"\n      ]\n    },\n    \"prep_run\": {\n      \"type\": \"newobj\",\n      \"text\": \"prepend run\",\n      \"pos\": [\n        530,\n        780\n      ]\n    },\n    \"lbl_perf\": {\n      \"type\": \"comment\",\n      \"text\": \"\\u2500\\u2500 PERFORMANCE \\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\",\n      \"pos\": [\n        20,\n        498\n      ]\n    },\n    \"lbl_musicians\": {\n      \"type\": \"comment\",\n      \"text\": \"MUSICIANS\",\n      \"pos\": [\n        20,\n        518\n      ],\n      \"attrs\": {\n        \"fontsize\": 18\n      }\n    },\n    \"lbl_dancers\": {\n      \"type\": \"comment\",\n      \"text\": \"DANCERS\",\n      \"pos\": [\n        775,\n        518\n      ],\n      \"attrs\": {\n        \"fontsize\": 18\n      }\n    },\n    \"lbl_next\": {\n      \"type\": \"comment\",\n      \"text\": \"NEXT TO MOVE:\",\n      \"pos\": [\n        440,\n        518\n      ],\n      \"attrs\": {\n        \"fontsize\": 12\n      },\n      \"presentation\": true,\n      \"presentation_rect\": [\n        375,\n        40,\n        330,\n        16\n      ]\n    },\n    \"msg_next\": {\n      \"type\": \"message\",\n      \"text\": \"---\",\n      \"pos\": [\n        440,\n        538\n      ],\n      \"size\": [\n        310,\n        70\n      ],\n      \"attrs\": {\n        \"bgcolor\": [\n          1.0,\n          0.82,\n          0.0,\n          1.0\n        ],\n        \"textcolor\": [\n          0.0,\n          0.0,\n          0.0,\n          1.0\n        ],\n        \"fontsize\": 15\n      },\n      \"presentation\": true,\n      \"presentation_rect\": [\n        375,\n        60,\n        330,\n        100\n      ]\n    },\n    \"prep_next\": {\n      \"type\": \"newobj\",\n      \"text\": \"prepend set\",\n      \"pos\": [\n        440,\n        618\n      ]\n    },\n    \"lbl_countdown\": {\n      \"type\": \"comment\",\n      \"text\": \"Countdown (seconds)\",\n      \"pos\": [\n        440,\n        654\n      ],\n      \"presentation\": true,\n      \"presentation_rect\": [\n        375,\n        175,\n        330,\n        14\n      ]\n    },\n    \"num_countdown\": {\n      \"type\": \"number\",\n      \"pos\": [\n        440,\n        672\n      ],\n      \"size\": [\n        140,\n        50\n      ],\n      \"attrs\": {\n        \"fontsize\": 24\n      },\n      \"presentation\": true,\n      \"presentation_rect\": [\n        375,\n        193,\n        330,\n        110\n      ]\n    },\n    \"lbl_run\": {\n      \"type\": \"comment\",\n      \"text\": \"Run\",\n      \"pos\": [\n        440,\n        734\n      ],\n      \"presentation\": true,\n      \"presentation_rect\": [\n        375,\n        324,\n        36,\n        14\n      ]\n    },\n    \"tog_run\": {\n      \"type\": \"toggle\",\n      \"pos\": [\n        440,\n        752\n      ],\n      \"presentation\": true,\n      \"presentation_rect\": [\n        375,\n        341,\n        24,\n        24\n      ]\n    },\n    \"metro_tick\": {\n      \"type\": \"newobj\",\n      \"text\": \"metro 1000\",\n      \"pos\": [\n        440,\n        784\n      ]\n    },\n    \"msg_tick\": {\n      \"type\": \"message\",\n      \"text\": \"tick\",\n      \"pos\": [\n        440,\n        816\n      ]\n    },\n    \"lbl_advance\": {\n      \"type\": \"comment\",\n      \"text\": \"Manual Advance\",\n      \"pos\": [\n        480,\n        854\n      ],\n      \"presentation\": true,\n      \"presentation_rect\": [\n        415,\n        324,\n        120,\n        14\n      ]\n    },\n    \"btn_advance\": {\n      \"type\": \"button\",\n      \"pos\": [\n        440,\n        870\n      ],\n      \"presentation\": true,\n      \"presentation_rect\": [\n        415,\n        341,\n        24,\n        24\n      ]\n    },\n    \"lbl_complete\": {\n      \"type\": \"comment\",\n      \"text\": \"Done!\",\n      \"pos\": [\n        480,\n        898\n      ],\n      \"presentation\": true,\n      \"presentation_rect\": [\n        463,\n        324,\n        50,\n        14\n      ]\n    },\n    \"btn_complete\": {\n      \"type\": \"button\",\n      \"pos\": [\n        440,\n        914\n      ],\n      \"presentation\": true,\n      \"presentation_rect\": [\n        463,\n        341,\n        24,\n        24\n      ]\n    },\n    \"jit_world\": {\n      \"type\": \"newobj\",\n      \"text\": \"jit.world PERFORMANCE @enable 1 @floating 1\",\n      \"pos\": [\n        866,\n        33\n      ],\n      \"inlets\": 1,\n      \"outlets\": 3,\n      \"outlettype\": [\n        \"\",\n        \"bang\"\n      ]\n    },\n    \"poly\": {\n      \"type\": \"newobj\",\n      \"text\": \"poly~ textpoly 15\",\n      \"pos\": [\n        876,\n        268\n      ],\n      \"inlets\": 1,\n      \"outlets\": 0\n    },\n    \"lb_init\": {\n      \"type\": \"newobj\",\n      \"text\": \"loadbang\",\n      \"pos\": [\n        583,\n        326\n      ]\n    },\n    \"msg_init\": {\n      \"type\": \"message\",\n      \"text\": \"init\",\n      \"pos\": [\n        583,\n        356\n      ]\n    },\n    \"jit_cellblock\": {\n      \"type\": \"jit.cellblock\",\n      \"pos\": [\n        20,\n        87\n      ],\n      \"size\": [\n        200,\n        220\n      ],\n      \"presentation\": [\n        15,\n        54,\n        301,\n        165\n      ]\n    }\n  },\n  \"connections\": [\n    [\n      \"num_cstart\",\n      0,\n      \"msg_setcstart\",\n      0\n    ],\n    [\n      \"loadmess_cstart\",\n      0,\n      \"num_cstart\",\n      0\n    ],\n    [\n      \"msg_setcstart\",\n      0,\n      \"brain\",\n      0\n    ],\n    [\n      \"num_maxgroup_music\",\n      0,\n      \"msg_setmaxgroup_music\",\n      0\n    ],\n    [\n      \"loadmess_music\",\n      0,\n      \"num_maxgroup_music\",\n      0\n    ],\n    [\n      \"msg_setmaxgroup_music\",\n      0,\n      \"brain\",\n      0\n    ],\n    [\n      \"num_maxgroup_dance\",\n      0,\n      \"msg_setmaxgroup_dance\",\n      0\n    ],\n    [\n      \"loadmess_dance\",\n      0,\n      \"num_maxgroup_dance\",\n      0\n    ],\n    [\n      \"msg_setmaxgroup_dance\",\n      0,\n      \"brain\",\n      0\n    ],\n    [\n      \"num_duration\",\n      0,\n      \"msg_setduration\",\n      0\n    ],\n    [\n      \"loadmess_2\",\n      0,\n      \"num_duration\",\n      0\n    ],\n    [\n      \"msg_setduration\",\n      0,\n      \"brain\",\n      0\n    ],\n    [\n      \"btn_generate\",\n      0,\n      \"msg_generate\",\n      0\n    ],\n    [\n      \"msg_generate\",\n      0,\n      \"brain\",\n      0\n    ],\n    [\n      \"btn_reset\",\n      0,\n      \"msg_reset\",\n      0\n    ],\n    [\n      \"msg_reset\",\n      0,\n      \"brain\",\n      0\n    ],\n    [\n      \"brain\",\n      3,\n      \"prep_status\",\n      0\n    ],\n    [\n      \"brain\",\n      1,\n      \"display_brain\",\n      0\n    ],\n    [\n      \"brain\",\n      0,\n      \"display_brain\",\n      0\n    ],\n    [\n      \"brain\",\n      2,\n      \"prep_next\",\n      0\n    ],\n    [\n      \"brain\",\n      1,\n      \"num_countdown\",\n      0\n    ],\n    [\n      \"brain\",\n      4,\n      \"btn_complete\",\n      0\n    ],\n    [\n      \"brain\",\n      5,\n      \"jit_cellblock\",\n      0\n    ],\n    [\n      \"display_brain\",\n      0,\n      \"poly\",\n      0\n    ],\n    [\n      \"prep_next\",\n      0,\n      \"msg_next\",\n      0\n    ],\n    [\n      \"tog_run\",\n      0,\n      \"metro_tick\",\n      0\n    ],\n    [\n      \"tog_run\",\n      0,\n      \"prep_run\",\n      0\n    ],\n    [\n      \"prep_run\",\n      0,\n      \"brain\",\n      0\n    ],\n    [\n      \"metro_tick\",\n      0,\n      \"msg_tick\",\n      0\n    ],\n    [\n      \"msg_tick\",\n      0,\n      \"brain\",\n      0\n    ],\n    [\n      \"btn_advance\",\n      0,\n      \"brain\",\n      0\n    ],\n    [\n      \"jit_world\",\n      1,\n      \"display_brain\",\n      1\n    ],\n    [\n      \"lb_init\",\n      0,\n      \"msg_init\",\n      0\n    ],\n    [\n      \"msg_init\",\n      0,\n      \"brain\",\n      0\n    ],\n    [\n      \"jit_cellblock\",\n      0,\n      \"capture\",\n      0\n    ],\n    [\n      \"jit_cellblock\",\n      0,\n      \"print\",\n      0\n    ],\n    [\n      \"jit_cellblock\",\n      0,\n      \"brain\",\n      0\n    ],\n    [\n      \"dump\",\n      0,\n      \"jit_cellblock\",\n      0\n    ],\n    [\n      \"clear\",\n      0,\n      \"capture\",\n      0\n    ]\n  ]\n}\n--- END SPEC ---",
                    "fontface": 0,
                    "fontname": "<Monospaced>",
                    "fontsize": 9.0,
                    "hidden": 1,
                    "id": "obj-spec-embed",
                    "maxclass": "text.codebox",
                    "numinlets": 2,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 50.0, 978.0, 500.0, 300.0 ],
                    "saved_object_attributes": {
                        "parameter_enable": 0,
                        "parameter_mappable": 0
                    }
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-33", 0 ],
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 0 ],
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 0 ],
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-33", 0 ],
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 0 ],
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-33", 0 ],
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-25", 0 ],
                    "source": [ "obj-23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 0 ],
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-33", 0 ],
                    "source": [ "obj-25", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-28", 0 ],
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-33", 0 ],
                    "source": [ "obj-28", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-31", 0 ],
                    "source": [ "obj-30", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-33", 0 ],
                    "source": [ "obj-31", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-32", 0 ],
                    "source": [ "obj-33", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-34", 0 ],
                    "order": 0,
                    "source": [ "obj-33", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-34", 0 ],
                    "source": [ "obj-33", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-41", 0 ],
                    "source": [ "obj-33", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-43", 0 ],
                    "order": 1,
                    "source": [ "obj-33", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-51", 0 ],
                    "source": [ "obj-33", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-56", 0 ],
                    "source": [ "obj-33", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-53", 0 ],
                    "source": [ "obj-34", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-33", 0 ],
                    "source": [ "obj-35", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "source": [ "obj-41", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-35", 0 ],
                    "order": 0,
                    "source": [ "obj-45", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-46", 0 ],
                    "order": 1,
                    "source": [ "obj-45", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-47", 0 ],
                    "source": [ "obj-46", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-33", 0 ],
                    "source": [ "obj-47", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-33", 0 ],
                    "source": [ "obj-49", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-34", 1 ],
                    "source": [ "obj-52", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-55", 0 ],
                    "source": [ "obj-54", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-33", 0 ],
                    "source": [ "obj-55", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-33", 0 ],
                    "order": 0,
                    "source": [ "obj-56", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "order": 1,
                    "source": [ "obj-56", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-9", 0 ],
                    "order": 2,
                    "source": [ "obj-56", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-56", 0 ],
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "source": [ "obj-7", 0 ]
                }
            }
        ],
        "autosave": 0
    }
}