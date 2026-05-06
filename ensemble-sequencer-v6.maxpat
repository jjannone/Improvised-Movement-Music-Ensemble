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
        "rect": [ 100.0, 96.0, 973.0, 826.0 ],
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
                    "text": "Improvised Ensemble Sequencer v6"
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
                    "presentation_rect": [ 15.0, 10.0, 700.0, 22.0 ],
                    "text": "IMPROVISED ENSEMBLE SEQUENCER v6"
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
                    "presentation_rect": [ 15.0, 35.0, 55.0, 20.0 ],
                    "text": "Name"
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 130.0, 35.0, 111.0, 20.0 ],
                    "presentation": 1,
                    "presentation_linecount": 3,
                    "presentation_rect": [ 125.0, 35.0, 46.0, 47.0 ],
                    "text": "No Solo Dance"
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 70.0, 35.0, 111.0, 20.0 ],
                    "presentation": 1,
                    "presentation_linecount": 3,
                    "presentation_rect": [ 70.0, 35.0, 50.0, 47.0 ],
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
                    "presentation_rect": [ 70.0, 262.0, 133.0, 20.0 ],
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
                    "presentation_rect": [ 15.0, 259.0, 50.0, 22.0 ]
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
                    "presentation_rect": [ 70.0, 289.0, 134.0, 20.0 ],
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
                    "presentation_rect": [ 15.0, 286.0, 50.0, 22.0 ]
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
                    "presentation_rect": [ 70.0, 316.0, 134.0, 20.0 ],
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
                    "presentation_rect": [ 15.0, 313.0, 50.0, 22.0 ]
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
                    "presentation_rect": [ 70.0, 343.0, 151.0, 20.0 ],
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
                    "presentation_rect": [ 15.0, 340.0, 50.0, 22.0 ]
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
                    "patching_rect": [ 430.0, 369.0, 188.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 70.0, 370.0, 141.0, 20.0 ],
                    "text": "Max permutations (0=all)"
                }
            },
            {
                "box": {
                    "id": "obj-27",
                    "maxclass": "number",
                    "maximum": 500,
                    "minimum": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 430.0, 387.0, 65.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 15.0, 367.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-28",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 583.0, 368.0, 90.0, 22.0 ],
                    "text": "loadmess 0"
                }
            },
            {
                "box": {
                    "id": "obj-29",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 430.0, 417.0, 118.0, 22.0 ],
                    "text": "setmaxperms $1"
                }
            },
            {
                "box": {
                    "id": "obj-30",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 430.0, 447.0, 251.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 70.0, 397.0, 192.0, 20.0 ],
                    "text": "Max consecutive same role (0=off)"
                }
            },
            {
                "box": {
                    "id": "obj-31",
                    "maxclass": "number",
                    "maximum": 50,
                    "minimum": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 430.0, 465.0, 65.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 15.0, 394.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-32",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 583.0, 446.0, 90.0, 22.0 ],
                    "text": "loadmess 0"
                }
            },
            {
                "box": {
                    "id": "obj-33",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 430.0, 495.0, 132.0, 22.0 ],
                    "text": "setmaxrepeats $1"
                }
            },
            {
                "box": {
                    "id": "obj-34",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 374.0, 525.0, 167.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 44.0, 430.0, 133.0, 20.0 ],
                    "text": "Generate Permutations"
                }
            },
            {
                "box": {
                    "id": "obj-35",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 335.0, 543.0, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 15.0, 427.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-36",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 335.0, 571.0, 76.0, 22.0 ],
                    "text": "generate"
                }
            },
            {
                "box": {
                    "id": "obj-37",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 515.0, 525.0, 55.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 206.0, 430.0, 40.0, 20.0 ],
                    "text": "Reset"
                }
            },
            {
                "box": {
                    "id": "obj-38",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 478.0, 543.0, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 180.0, 428.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-39",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 478.0, 571.0, 55.0, 22.0 ],
                    "text": "reset"
                }
            },
            {
                "box": {
                    "id": "obj-40",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 583.0, 520.0, 76.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-41",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 583.0, 550.0, 48.0, 22.0 ],
                    "text": "init"
                }
            },
            {
                "box": {
                    "filename": "ensemble-v6.js",
                    "id": "obj-42",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 8,
                    "outlettype": [ "", "", "", "", "", "", "", "" ],
                    "patching_rect": [ 706.0, 400.0, 139.0, 22.0 ],
                    "saved_object_attributes": {
                        "parameter_enable": 0
                    },
                    "text": "v8 ensemble-v6.js",
                    "textfile": {
                        "filename": "ensemble-v6.js",
                        "flags": 0,
                        "embed": 0,
                        "autowatch": 1
                    }
                }
            },
            {
                "box": {
                    "id": "obj-43",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 791.0, 517.0, 104.0, 22.0 ],
                    "text": "print STATUS"
                }
            },
            {
                "box": {
                    "filename": "display.js",
                    "id": "obj-44",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 706.0, 484.0, 111.0, 22.0 ],
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
                    "id": "obj-45",
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
                    "id": "obj-46",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 876.0, 420.0, 139.0, 22.0 ],
                    "text": "poly~ textpoly 15"
                }
            },
            {
                "box": {
                    "id": "obj-47",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 530.0, 660.0, 97.0, 22.0 ],
                    "text": "prepend run"
                }
            },
            {
                "box": {
                    "id": "obj-48",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 20.0, 610.0, 644.0, 20.0 ],
                    "text": "── PERFORMANCE ─────────────────────────────────────────────────────────────"
                }
            },
            {
                "box": {
                    "fontsize": 18.0,
                    "id": "obj-49",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 20.0, 630.0, 109.0, 27.0 ],
                    "text": "MUSICIANS"
                }
            },
            {
                "box": {
                    "fontsize": 18.0,
                    "id": "obj-50",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 775.0, 630.0, 97.0, 27.0 ],
                    "text": "DANCERS"
                }
            },
            {
                "box": {
                    "id": "obj-51",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 440.0, 730.0, 97.0, 22.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "obj-52",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 440.0, 766.0, 153.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 15.0, 458.0, 125.0, 20.0 ],
                    "text": "Countdown (seconds)"
                }
            },
            {
                "box": {
                    "fontsize": 24.0,
                    "id": "obj-53",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 440.0, 784.0, 140.0, 35.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 15.0, 480.0, 75.0, 35.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-54",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 480.0, 846.0, 41.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 45.0, 527.0, 31.0, 20.0 ],
                    "text": "Run"
                }
            },
            {
                "box": {
                    "id": "obj-55",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 440.0, 864.0, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 16.0, 524.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-56",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 440.0, 896.0, 90.0, 22.0 ],
                    "text": "metro 1000"
                }
            },
            {
                "box": {
                    "id": "obj-57",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 440.0, 928.0, 48.0, 22.0 ],
                    "text": "tick"
                }
            },
            {
                "box": {
                    "id": "obj-58",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 494.0, 966.0, 118.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 125.0, 527.0, 97.0, 20.0 ],
                    "text": "Manual Advance"
                }
            },
            {
                "box": {
                    "id": "obj-59",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 460.0, 982.0, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 96.0, 524.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "coldef": [
                        [ 0, 30, 1, 0.0, 0.0, 0.0, 1.0, 1, 0.0, 0.0, 0.0, 1.0, -1, -1, -1 ],
                        [ 1, 150, 1, 0.0, 0.0, 0.0, 1.0, 1, 0.0, 0.0, 0.0, 1.0, -1, -1, -1 ],
                        [ 2, 150, 1, 0.0, 0.0, 0.0, 1.0, 1, 0.0, 0.0, 0.0, 1.0, -1, -1, -1 ],
                        [ 3, 58, 1, 0.0, 0.0, 0.0, 1.0, 1, 0.0, 0.0, 0.0, 1.0, -1, -1, -1 ]
                    ],
                    "cols": 4,
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-60",
                    "maxclass": "jit.cellblock",
                    "numinlets": 2,
                    "numoutlets": 4,
                    "outlettype": [ "list", "", "", "" ],
                    "patching_rect": [ 900.0, 484.0, 500.0, 280.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 258.0, 57.0, 432.0, 655.0 ],
                    "rows": 21,
                    "selmode": 0
                }
            },
            {
                "box": {
                    "id": "obj-61",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 900.0, 780.0, 97.0, 22.0 ],
                    "text": "route count"
                }
            },
            {
                "box": {
                    "id": "obj-62",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 900.0, 810.0, 97.0, 22.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "obj-63",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 900.0, 840.0, 300.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 258.0, 32.0, 320.0, 22.0 ],
                    "text": "20"
                }
            },
            {
                "box": {
                    "coldef": [
                        [ 0, 55, 1, 0.0, 0.0, 0.0, 1.0, 1, 0.0, 0.0, 0.0, 1.0, -1, -1, -1 ],
                        [ 1, 60, 1, 0.0, 0.0, 0.0, 1.0, 1, 0.0, 0.0, 0.0, 1.0, -1, -1, -1 ],
                        [ 2, 60, 1, 0.0, 0.0, 0.0, 1.0, 1, 0.0, 0.0, 0.0, 1.0, -1, -1, -1 ],
                        [ 3, 40, 1, 0.0, 0.0, 0.0, 1.0, 1, 0.0, 0.0, 0.0, 1.0, -1, -1, -1 ]
                    ],
                    "cols": 4,
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-64",
                    "maxclass": "jit.cellblock",
                    "numinlets": 2,
                    "numoutlets": 4,
                    "outlettype": [ "list", "", "", "" ],
                    "patching_rect": [ 20.0, 87.0, 200.0, 220.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 15.0, 85.0, 235.0, 165.0 ],
                    "rows": 6,
                    "selmode": 5
                }
            },
            {
                "box": {
                    "id": "obj-65",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1056.0, 436.0, 255.0, 22.0 ],
                    "text": "col 0 width 24"
                }
            },
            {
                "box": {
                    "filename": "perm-summary.js",
                    "id": "obj-66",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 706.0, 590.0, 130.0, 22.0 ],
                    "saved_object_attributes": {
                        "parameter_enable": 0
                    },
                    "text": "v8 perm-summary.js",
                    "textfile": {
                        "filename": "perm-summary.js",
                        "flags": 0,
                        "embed": 0,
                        "autowatch": 1
                    }
                }
            },
            {
                "box": {
                    "id": "obj-67",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 706.0, 614.0, 150.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 15.0, 554.0, 237.0, 20.0 ],
                    "text": "Permutation Summary"
                }
            },
            {
                "box": {
                    "id": "obj-68",
                    "linecount": 2,
                    "maxclass": "textedit",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 706.0, 636.0, 237.0, 165.0 ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [ 15.0, 574.0, 237.0, 165.0 ],
                    "text": "\"(no unusual patterns — distribution is even)\""
                }
            },
            {
                "box": {
                    "id": "obj-69",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 190.0, 35.0, 97.0, 20.0 ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [ 184.0, 35.0, 45.0, 33.0 ],
                    "text": "Music:Dance"
                }
            },
            {
                "box": {
                    "id": "obj-70",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 44.0, 750.0, 160.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 44.0, 753.0, 160.0, 20.0 ],
                    "text": "Minimize Transitions"
                }
            },
            {
                "box": {
                    "id": "obj-71",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 15.0, 750.0, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 15.0, 750.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-72",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 15.0, 720.0, 90.0, 22.0 ],
                    "text": "loadmess 1"
                }
            },
            {
                "box": {
                    "id": "obj-73",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 15.0, 780.0, 160.0, 22.0 ],
                    "text": "setmintransitions $1"
                }
            },
            {
                "box": {
                    "code": "--- CLAUDE2MAX SPEC ---\n{\n  \"name\": \"Improvised Ensemble Sequencer v6\",\n  \"width\": 973,\n  \"height\": 826,\n  \"objects\": {\n    \"title\": {\n      \"type\": \"comment\",\n      \"text\": \"IMPROVISED ENSEMBLE SEQUENCER v6\",\n      \"pos\": [\n        20.0,\n        12.0\n      ],\n      \"attrs\": {\n        \"fontsize\": 14.0\n      },\n      \"presentation\": [\n        15.0,\n        10.0,\n        700.0,\n        22.0\n      ],\n      \"size\": [\n        288.0,\n        22.0\n      ]\n    },\n    \"lbl_setup\": {\n      \"type\": \"comment\",\n      \"text\": \"\\u2500\\u2500 SETUP \\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\",\n      \"pos\": [\n        20.0,\n        34.0\n      ],\n      \"size\": [\n        642.0,\n        20.0\n      ]\n    },\n    \"lbl_col_name\": {\n      \"type\": \"comment\",\n      \"text\": \"Name\",\n      \"pos\": [\n        25.0,\n        57.0\n      ],\n      \"presentation\": [\n        15.0,\n        35.0,\n        55.0,\n        20.0\n      ],\n      \"size\": [\n        48.0,\n        20.0\n      ]\n    },\n    \"lbl_col_nsd\": {\n      \"type\": \"comment\",\n      \"text\": \"No Solo Dance\",\n      \"pos\": [\n        130.0,\n        35.0\n      ],\n      \"presentation\": [\n        125.0,\n        35.0,\n        47.0,\n        47.0\n      ],\n      \"size\": [\n        111.0,\n        20.0\n      ]\n    },\n    \"lbl_col_nsm\": {\n      \"type\": \"comment\",\n      \"text\": \"No Solo Music\",\n      \"pos\": [\n        70.0,\n        35.0\n      ],\n      \"presentation\": [\n        70.0,\n        35.0,\n        50.0,\n        47.0\n      ],\n      \"size\": [\n        111.0,\n        20.0\n      ]\n    },\n    \"dump\": {\n      \"type\": \"message\",\n      \"text\": \"dump\",\n      \"pos\": [\n        250.0,\n        125.0\n      ],\n      \"size\": [\n        48.0,\n        22.0\n      ]\n    },\n    \"clear\": {\n      \"type\": \"message\",\n      \"text\": \"clear\",\n      \"pos\": [\n        261.0,\n        268.0\n      ],\n      \"size\": [\n        55.0,\n        22.0\n      ]\n    },\n    \"capture\": {\n      \"type\": \"newobj\",\n      \"text\": \"capture\",\n      \"pos\": [\n        253.0,\n        336.0\n      ],\n      \"size\": [\n        69.0,\n        22.0\n      ]\n    },\n    \"print\": {\n      \"type\": \"newobj\",\n      \"text\": \"print CB\",\n      \"pos\": [\n        58.0,\n        336.0\n      ],\n      \"size\": [\n        76.0,\n        22.0\n      ]\n    },\n    \"lbl_maxgroup_music\": {\n      \"type\": \"comment\",\n      \"text\": \"Max group size (music)\",\n      \"pos\": [\n        430.0,\n        57.0\n      ],\n      \"presentation\": [\n        70.0,\n        262.0,\n        133.0,\n        20.0\n      ],\n      \"size\": [\n        174.0,\n        20.0\n      ]\n    },\n    \"num_maxgroup_music\": {\n      \"type\": \"number\",\n      \"pos\": [\n        430.0,\n        75.0\n      ],\n      \"size\": [\n        65.0,\n        22.0\n      ],\n      \"attrs\": {\n        \"minimum\": 1,\n        \"maximum\": 20\n      },\n      \"presentation\": [\n        15.0,\n        259.0,\n        50.0,\n        22.0\n      ]\n    },\n    \"loadmess_music\": {\n      \"type\": \"newobj\",\n      \"text\": \"loadmess 4\",\n      \"pos\": [\n        583.0,\n        56.0\n      ],\n      \"size\": [\n        90.0,\n        22.0\n      ]\n    },\n    \"msg_setmaxgroup_music\": {\n      \"type\": \"message\",\n      \"text\": \"setmaxgroupmusic $1\",\n      \"pos\": [\n        430.0,\n        105.0\n      ],\n      \"size\": [\n        153.0,\n        22.0\n      ]\n    },\n    \"lbl_maxgroup_dance\": {\n      \"type\": \"comment\",\n      \"text\": \"Max group size (dance)\",\n      \"pos\": [\n        430.0,\n        135.0\n      ],\n      \"presentation\": [\n        70.0,\n        289.0,\n        134.0,\n        20.0\n      ],\n      \"size\": [\n        174.0,\n        20.0\n      ]\n    },\n    \"num_maxgroup_dance\": {\n      \"type\": \"number\",\n      \"pos\": [\n        430.0,\n        153.0\n      ],\n      \"size\": [\n        65.0,\n        22.0\n      ],\n      \"attrs\": {\n        \"minimum\": 1,\n        \"maximum\": 20\n      },\n      \"presentation\": [\n        15.0,\n        286.0,\n        50.0,\n        22.0\n      ]\n    },\n    \"loadmess_dance\": {\n      \"type\": \"newobj\",\n      \"text\": \"loadmess 4\",\n      \"pos\": [\n        583.0,\n        134.0\n      ],\n      \"size\": [\n        90.0,\n        22.0\n      ]\n    },\n    \"msg_setmaxgroup_dance\": {\n      \"type\": \"message\",\n      \"text\": \"setmaxgroupdance $1\",\n      \"pos\": [\n        430.0,\n        183.0\n      ],\n      \"size\": [\n        153.0,\n        22.0\n      ]\n    },\n    \"lbl_duration\": {\n      \"type\": \"comment\",\n      \"text\": \"Total duration (minutes)\",\n      \"pos\": [\n        430.0,\n        213.0\n      ],\n      \"presentation\": [\n        70.0,\n        316.0,\n        134.0,\n        20.0\n      ],\n      \"size\": [\n        188.0,\n        20.0\n      ]\n    },\n    \"num_duration\": {\n      \"type\": \"number\",\n      \"pos\": [\n        430.0,\n        231.0\n      ],\n      \"size\": [\n        65.0,\n        22.0\n      ],\n      \"attrs\": {\n        \"minimum\": 1,\n        \"maximum\": 480\n      },\n      \"presentation\": [\n        15.0,\n        313.0,\n        50.0,\n        22.0\n      ]\n    },\n    \"loadmess_2\": {\n      \"type\": \"newobj\",\n      \"text\": \"loadmess 10\",\n      \"pos\": [\n        583.0,\n        212.0\n      ],\n      \"size\": [\n        97.0,\n        22.0\n      ]\n    },\n    \"msg_setduration\": {\n      \"type\": \"message\",\n      \"text\": \"setduration $1\",\n      \"pos\": [\n        430.0,\n        261.0\n      ],\n      \"size\": [\n        118.0,\n        22.0\n      ]\n    },\n    \"lbl_cstart\": {\n      \"type\": \"comment\",\n      \"text\": \"Start countdown (seconds)\",\n      \"pos\": [\n        430.0,\n        291.0\n      ],\n      \"presentation\": [\n        70.0,\n        343.0,\n        151.0,\n        20.0\n      ],\n      \"size\": [\n        195.0,\n        20.0\n      ]\n    },\n    \"num_cstart\": {\n      \"type\": \"number\",\n      \"pos\": [\n        430.0,\n        309.0\n      ],\n      \"size\": [\n        65.0,\n        22.0\n      ],\n      \"attrs\": {\n        \"minimum\": 1,\n        \"maximum\": 120\n      },\n      \"presentation\": [\n        15.0,\n        340.0,\n        50.0,\n        22.0\n      ]\n    },\n    \"loadmess_cstart\": {\n      \"type\": \"newobj\",\n      \"text\": \"loadmess 10\",\n      \"pos\": [\n        583.0,\n        290.0\n      ],\n      \"size\": [\n        97.0,\n        22.0\n      ]\n    },\n    \"msg_setcstart\": {\n      \"type\": \"message\",\n      \"text\": \"setcountdownstart $1\",\n      \"pos\": [\n        430.0,\n        339.0\n      ],\n      \"size\": [\n        160.0,\n        22.0\n      ]\n    },\n    \"lbl_maxperms\": {\n      \"type\": \"comment\",\n      \"text\": \"Max permutations (0=all)\",\n      \"pos\": [\n        430.0,\n        369.0\n      ],\n      \"presentation\": [\n        70.0,\n        370.0,\n        141.0,\n        20.0\n      ],\n      \"size\": [\n        188.0,\n        20.0\n      ]\n    },\n    \"num_maxperms\": {\n      \"type\": \"number\",\n      \"pos\": [\n        430.0,\n        387.0\n      ],\n      \"size\": [\n        65.0,\n        22.0\n      ],\n      \"attrs\": {\n        \"minimum\": 0,\n        \"maximum\": 500\n      },\n      \"presentation\": [\n        15.0,\n        367.0,\n        50.0,\n        22.0\n      ]\n    },\n    \"loadmess_maxperms\": {\n      \"type\": \"newobj\",\n      \"text\": \"loadmess 0\",\n      \"pos\": [\n        583.0,\n        368.0\n      ],\n      \"size\": [\n        90.0,\n        22.0\n      ]\n    },\n    \"msg_setmaxperms\": {\n      \"type\": \"message\",\n      \"text\": \"setmaxperms $1\",\n      \"pos\": [\n        430.0,\n        417.0\n      ],\n      \"size\": [\n        118.0,\n        22.0\n      ]\n    },\n    \"lbl_maxrepeats\": {\n      \"type\": \"comment\",\n      \"text\": \"Max consecutive same role (0=off)\",\n      \"pos\": [\n        430.0,\n        447.0\n      ],\n      \"presentation\": [\n        70.0,\n        397.0,\n        192.0,\n        20.0\n      ],\n      \"size\": [\n        251.0,\n        20.0\n      ]\n    },\n    \"num_maxrepeats\": {\n      \"type\": \"number\",\n      \"pos\": [\n        430.0,\n        465.0\n      ],\n      \"size\": [\n        65.0,\n        22.0\n      ],\n      \"attrs\": {\n        \"minimum\": 0,\n        \"maximum\": 50\n      },\n      \"presentation\": [\n        15.0,\n        394.0,\n        50.0,\n        22.0\n      ]\n    },\n    \"loadmess_maxrepeats\": {\n      \"type\": \"newobj\",\n      \"text\": \"loadmess 0\",\n      \"pos\": [\n        583.0,\n        446.0\n      ],\n      \"size\": [\n        90.0,\n        22.0\n      ]\n    },\n    \"msg_setmaxrepeats\": {\n      \"type\": \"message\",\n      \"text\": \"setmaxrepeats $1\",\n      \"pos\": [\n        430.0,\n        495.0\n      ],\n      \"size\": [\n        132.0,\n        22.0\n      ]\n    },\n    \"lbl_gen\": {\n      \"type\": \"comment\",\n      \"text\": \"Generate Permutations\",\n      \"pos\": [\n        374.0,\n        525.0\n      ],\n      \"presentation\": [\n        44.0,\n        430.0,\n        133.0,\n        20.0\n      ],\n      \"size\": [\n        167.0,\n        20.0\n      ]\n    },\n    \"btn_generate\": {\n      \"type\": \"button\",\n      \"pos\": [\n        335.0,\n        543.0\n      ],\n      \"presentation\": [\n        15.0,\n        427.0,\n        24.0,\n        24.0\n      ],\n      \"size\": [\n        24.0,\n        24.0\n      ]\n    },\n    \"msg_generate\": {\n      \"type\": \"message\",\n      \"text\": \"generate\",\n      \"pos\": [\n        335.0,\n        571.0\n      ],\n      \"size\": [\n        76.0,\n        22.0\n      ]\n    },\n    \"lbl_reset\": {\n      \"type\": \"comment\",\n      \"text\": \"Reset\",\n      \"pos\": [\n        515.0,\n        525.0\n      ],\n      \"presentation\": [\n        206.0,\n        430.0,\n        40.0,\n        20.0\n      ],\n      \"size\": [\n        55.0,\n        20.0\n      ]\n    },\n    \"btn_reset\": {\n      \"type\": \"button\",\n      \"pos\": [\n        478.0,\n        543.0\n      ],\n      \"presentation\": [\n        180.0,\n        428.0,\n        24.0,\n        24.0\n      ],\n      \"size\": [\n        24.0,\n        24.0\n      ]\n    },\n    \"msg_reset\": {\n      \"type\": \"message\",\n      \"text\": \"reset\",\n      \"pos\": [\n        478.0,\n        571.0\n      ],\n      \"size\": [\n        55.0,\n        22.0\n      ]\n    },\n    \"lb_init\": {\n      \"type\": \"newobj\",\n      \"text\": \"loadbang\",\n      \"pos\": [\n        583.0,\n        520.0\n      ],\n      \"size\": [\n        76.0,\n        22.0\n      ]\n    },\n    \"msg_init\": {\n      \"type\": \"message\",\n      \"text\": \"init\",\n      \"pos\": [\n        583.0,\n        550.0\n      ],\n      \"size\": [\n        48.0,\n        22.0\n      ]\n    },\n    \"brain\": {\n      \"type\": \"newobj\",\n      \"text\": \"v8 ensemble-v6.js\",\n      \"pos\": [\n        706.0,\n        400.0\n      ],\n      \"inlets\": 1,\n      \"outlets\": 7,\n      \"outlettype\": [\n        \"\",\n        \"int\",\n        \"\",\n        \"\",\n        \"bang\",\n        \"\",\n        \"\"\n      ],\n      \"size\": [\n        139.0,\n        22.0\n      ]\n    },\n    \"prep_status\": {\n      \"type\": \"newobj\",\n      \"text\": \"print STATUS\",\n      \"pos\": [\n        791.0,\n        517.0\n      ],\n      \"size\": [\n        104.0,\n        22.0\n      ]\n    },\n    \"display_brain\": {\n      \"type\": \"newobj\",\n      \"text\": \"v8 display.js\",\n      \"pos\": [\n        706.0,\n        484.0\n      ],\n      \"inlets\": 2,\n      \"outlets\": 1,\n      \"outlettype\": [\n        \"\"\n      ],\n      \"size\": [\n        111.0,\n        22.0\n      ]\n    },\n    \"jit_world\": {\n      \"type\": \"newobj\",\n      \"text\": \"jit.world PERFORMANCE @enable 1 @floating 1\",\n      \"pos\": [\n        866.0,\n        33.0\n      ],\n      \"inlets\": 1,\n      \"outlets\": 2,\n      \"outlettype\": [\n        \"\",\n        \"bang\"\n      ],\n      \"size\": [\n        321.0,\n        22.0\n      ]\n    },\n    \"poly\": {\n      \"type\": \"newobj\",\n      \"text\": \"poly~ textpoly 15\",\n      \"pos\": [\n        876.0,\n        420.0\n      ],\n      \"inlets\": 1,\n      \"outlets\": 0,\n      \"size\": [\n        139.0,\n        22.0\n      ]\n    },\n    \"prep_run\": {\n      \"type\": \"newobj\",\n      \"text\": \"prepend run\",\n      \"pos\": [\n        530.0,\n        660.0\n      ],\n      \"size\": [\n        97.0,\n        22.0\n      ]\n    },\n    \"lbl_perf\": {\n      \"type\": \"comment\",\n      \"text\": \"\\u2500\\u2500 PERFORMANCE \\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\",\n      \"pos\": [\n        20.0,\n        610.0\n      ],\n      \"size\": [\n        644.0,\n        20.0\n      ]\n    },\n    \"lbl_musicians\": {\n      \"type\": \"comment\",\n      \"text\": \"MUSICIANS\",\n      \"pos\": [\n        20.0,\n        630.0\n      ],\n      \"attrs\": {\n        \"fontsize\": 18.0\n      },\n      \"size\": [\n        109.0,\n        27.0\n      ]\n    },\n    \"lbl_dancers\": {\n      \"type\": \"comment\",\n      \"text\": \"DANCERS\",\n      \"pos\": [\n        775.0,\n        630.0\n      ],\n      \"attrs\": {\n        \"fontsize\": 18.0\n      },\n      \"size\": [\n        97.0,\n        27.0\n      ]\n    },\n    \"prep_next\": {\n      \"type\": \"newobj\",\n      \"text\": \"prepend set\",\n      \"pos\": [\n        440.0,\n        730.0\n      ],\n      \"size\": [\n        97.0,\n        22.0\n      ]\n    },\n    \"lbl_countdown\": {\n      \"type\": \"comment\",\n      \"text\": \"Countdown (seconds)\",\n      \"pos\": [\n        440.0,\n        766.0\n      ],\n      \"presentation\": [\n        15.0,\n        458.0,\n        125.0,\n        20.0\n      ],\n      \"size\": [\n        153.0,\n        20.0\n      ]\n    },\n    \"num_countdown\": {\n      \"type\": \"number\",\n      \"pos\": [\n        440.0,\n        784.0\n      ],\n      \"size\": [\n        140.0,\n        35.0\n      ],\n      \"attrs\": {\n        \"fontsize\": 24.0\n      },\n      \"presentation\": [\n        15.0,\n        480.0,\n        75.0,\n        35.0\n      ]\n    },\n    \"lbl_run\": {\n      \"type\": \"comment\",\n      \"text\": \"Run\",\n      \"pos\": [\n        480.0,\n        846.0\n      ],\n      \"presentation\": [\n        45.0,\n        527.0,\n        31.0,\n        20.0\n      ],\n      \"size\": [\n        41.0,\n        20.0\n      ]\n    },\n    \"tog_run\": {\n      \"type\": \"toggle\",\n      \"pos\": [\n        440.0,\n        864.0\n      ],\n      \"presentation\": [\n        16.0,\n        524.0,\n        24.0,\n        24.0\n      ],\n      \"size\": [\n        24.0,\n        24.0\n      ]\n    },\n    \"metro_tick\": {\n      \"type\": \"newobj\",\n      \"text\": \"metro 1000\",\n      \"pos\": [\n        440.0,\n        896.0\n      ],\n      \"size\": [\n        90.0,\n        22.0\n      ]\n    },\n    \"msg_tick\": {\n      \"type\": \"message\",\n      \"text\": \"tick\",\n      \"pos\": [\n        440.0,\n        928.0\n      ],\n      \"size\": [\n        48.0,\n        22.0\n      ]\n    },\n    \"lbl_advance\": {\n      \"type\": \"comment\",\n      \"text\": \"Manual Advance\",\n      \"pos\": [\n        494.0,\n        966.0\n      ],\n      \"presentation\": [\n        125.0,\n        527.0,\n        97.0,\n        20.0\n      ],\n      \"size\": [\n        118.0,\n        20.0\n      ]\n    },\n    \"btn_advance\": {\n      \"type\": \"button\",\n      \"pos\": [\n        460.0,\n        982.0\n      ],\n      \"presentation\": [\n        96.0,\n        524.0,\n        24.0,\n        24.0\n      ],\n      \"size\": [\n        24.0,\n        24.0\n      ]\n    },\n    \"jit_permlist\": {\n      \"type\": \"jit.cellblock\",\n      \"pos\": [\n        900.0,\n        484.0\n      ],\n      \"size\": [\n        500.0,\n        280.0\n      ],\n      \"attrs\": {\n        \"selmode\": 0\n      },\n      \"presentation\": [\n        258.0,\n        57.0,\n        432.0,\n        655.0\n      ]\n    },\n    \"route_permcount\": {\n      \"type\": \"newobj\",\n      \"text\": \"route count\",\n      \"pos\": [\n        900.0,\n        780.0\n      ],\n      \"inlets\": 1,\n      \"outlets\": 2,\n      \"size\": [\n        97.0,\n        22.0\n      ]\n    },\n    \"prep_permcount\": {\n      \"type\": \"newobj\",\n      \"text\": \"prepend set\",\n      \"pos\": [\n        900.0,\n        810.0\n      ],\n      \"size\": [\n        97.0,\n        22.0\n      ]\n    },\n    \"msg_permcount\": {\n      \"type\": \"message\",\n      \"text\": \"10\",\n      \"pos\": [\n        900.0,\n        840.0\n      ],\n      \"size\": [\n        300.0,\n        22.0\n      ],\n      \"presentation\": [\n        258.0,\n        32.0,\n        320.0,\n        22.0\n      ]\n    },\n    \"jit_cellblock\": {\n      \"type\": \"jit.cellblock\",\n      \"pos\": [\n        20.0,\n        87.0\n      ],\n      \"size\": [\n        200.0,\n        220.0\n      ],\n      \"attrs\": {\n        \"selmode\": 5\n      },\n      \"presentation\": [\n        15.0,\n        85.0,\n        235.0,\n        165.0\n      ]\n    },\n    \"col\": {\n      \"type\": \"message\",\n      \"pos\": [\n        1056.0,\n        436.0\n      ],\n      \"text\": \"col 0 width 24\",\n      \"size\": [\n        255.0,\n        22.0\n      ]\n    },\n    \"v8\": {\n      \"type\": \"newobj\",\n      \"pos\": [\n        706.0,\n        590.0\n      ],\n      \"text\": \"v8 perm-summary.js\",\n      \"size\": [\n        130.0,\n        22.0\n      ]\n    },\n    \"Permutation\": {\n      \"type\": \"comment\",\n      \"pos\": [\n        706.0,\n        614.0\n      ],\n      \"text\": \"Permutation Summary\",\n      \"size\": [\n        150.0,\n        20.0\n      ],\n      \"presentation\": [\n        15.0,\n        554.0,\n        237.0,\n        20.0\n      ]\n    },\n    \"textedit\": {\n      \"type\": \"textedit\",\n      \"pos\": [\n        706.0,\n        636.0\n      ],\n      \"size\": [\n        237.0,\n        165.0\n      ],\n      \"presentation\": [\n        15.0,\n        574.0,\n        237.0,\n        165.0\n      ]\n    },\n    \"lbl_col_ratio\": {\n      \"type\": \"comment\",\n      \"text\": \"Music:Dance\",\n      \"pos\": [\n        190.0,\n        35.0\n      ],\n      \"presentation\": [\n        184.0,\n        35.0,\n        43.0,\n        33.0\n      ],\n      \"size\": [\n        97.0,\n        20.0\n      ]\n    },\n    \"lbl_mintrans\": {\n      \"type\": \"comment\",\n      \"text\": \"Minimize Transitions\",\n      \"pos\": [\n        44.0,\n        750.0\n      ],\n      \"size\": [\n        160.0,\n        20.0\n      ],\n      \"presentation\": [\n        44.0,\n        753.0,\n        160.0,\n        20.0\n      ]\n    },\n    \"tog_mintrans\": {\n      \"type\": \"toggle\",\n      \"pos\": [\n        15.0,\n        750.0\n      ],\n      \"size\": [\n        24.0,\n        24.0\n      ],\n      \"presentation\": [\n        15.0,\n        750.0,\n        24.0,\n        24.0\n      ]\n    },\n    \"loadmess_mintrans\": {\n      \"type\": \"newobj\",\n      \"text\": \"loadmess 1\",\n      \"pos\": [\n        15.0,\n        720.0\n      ]\n    },\n    \"msg_setmintrans\": {\n      \"type\": \"message\",\n      \"text\": \"setmintransitions $1\",\n      \"pos\": [\n        15.0,\n        780.0\n      ]\n    }\n  },\n  \"connections\": [\n    [\n      \"num_maxgroup_music\",\n      0,\n      \"msg_setmaxgroup_music\",\n      0\n    ],\n    [\n      \"loadmess_music\",\n      0,\n      \"num_maxgroup_music\",\n      0\n    ],\n    [\n      \"msg_setmaxgroup_music\",\n      0,\n      \"brain\",\n      0\n    ],\n    [\n      \"num_maxgroup_dance\",\n      0,\n      \"msg_setmaxgroup_dance\",\n      0\n    ],\n    [\n      \"loadmess_dance\",\n      0,\n      \"num_maxgroup_dance\",\n      0\n    ],\n    [\n      \"msg_setmaxgroup_dance\",\n      0,\n      \"brain\",\n      0\n    ],\n    [\n      \"num_duration\",\n      0,\n      \"msg_setduration\",\n      0\n    ],\n    [\n      \"loadmess_2\",\n      0,\n      \"num_duration\",\n      0\n    ],\n    [\n      \"msg_setduration\",\n      0,\n      \"brain\",\n      0\n    ],\n    [\n      \"num_cstart\",\n      0,\n      \"msg_setcstart\",\n      0\n    ],\n    [\n      \"loadmess_cstart\",\n      0,\n      \"num_cstart\",\n      0\n    ],\n    [\n      \"msg_setcstart\",\n      0,\n      \"brain\",\n      0\n    ],\n    [\n      \"num_maxperms\",\n      0,\n      \"msg_setmaxperms\",\n      0\n    ],\n    [\n      \"loadmess_maxperms\",\n      0,\n      \"num_maxperms\",\n      0\n    ],\n    [\n      \"msg_setmaxperms\",\n      0,\n      \"brain\",\n      0\n    ],\n    [\n      \"num_maxrepeats\",\n      0,\n      \"msg_setmaxrepeats\",\n      0\n    ],\n    [\n      \"loadmess_maxrepeats\",\n      0,\n      \"num_maxrepeats\",\n      0\n    ],\n    [\n      \"msg_setmaxrepeats\",\n      0,\n      \"brain\",\n      0\n    ],\n    [\n      \"btn_generate\",\n      0,\n      \"msg_generate\",\n      0\n    ],\n    [\n      \"msg_generate\",\n      0,\n      \"brain\",\n      0\n    ],\n    [\n      \"btn_reset\",\n      0,\n      \"msg_reset\",\n      0\n    ],\n    [\n      \"msg_reset\",\n      0,\n      \"brain\",\n      0\n    ],\n    [\n      \"lb_init\",\n      0,\n      \"msg_init\",\n      0\n    ],\n    [\n      \"msg_init\",\n      0,\n      \"brain\",\n      0\n    ],\n    [\n      \"brain\",\n      3,\n      \"prep_status\",\n      0\n    ],\n    [\n      \"brain\",\n      1,\n      \"display_brain\",\n      0\n    ],\n    [\n      \"brain\",\n      0,\n      \"display_brain\",\n      0\n    ],\n    [\n      \"brain\",\n      2,\n      \"prep_next\",\n      0\n    ],\n    [\n      \"brain\",\n      1,\n      \"num_countdown\",\n      0\n    ],\n    [\n      \"brain\",\n      6,\n      \"jit_permlist\",\n      0\n    ],\n    [\n      \"brain\",\n      6,\n      \"route_permcount\",\n      0\n    ],\n    [\n      \"brain\",\n      5,\n      \"jit_cellblock\",\n      0\n    ],\n    [\n      \"brain\",\n      7,\n      \"v8\",\n      0\n    ],\n    [\n      \"display_brain\",\n      0,\n      \"poly\",\n      0\n    ],\n    [\n      \"jit_world\",\n      1,\n      \"display_brain\",\n      1\n    ],\n    [\n      \"prep_run\",\n      0,\n      \"brain\",\n      0\n    ],\n    [\n      \"tog_run\",\n      0,\n      \"prep_run\",\n      0\n    ],\n    [\n      \"tog_run\",\n      0,\n      \"metro_tick\",\n      0\n    ],\n    [\n      \"metro_tick\",\n      0,\n      \"msg_tick\",\n      0\n    ],\n    [\n      \"msg_tick\",\n      0,\n      \"brain\",\n      0\n    ],\n    [\n      \"dump\",\n      0,\n      \"jit_cellblock\",\n      0\n    ],\n    [\n      \"btn_advance\",\n      0,\n      \"brain\",\n      0\n    ],\n    [\n      \"route_permcount\",\n      0,\n      \"prep_permcount\",\n      0\n    ],\n    [\n      \"prep_permcount\",\n      0,\n      \"msg_permcount\",\n      0\n    ],\n    [\n      \"jit_cellblock\",\n      0,\n      \"brain\",\n      0\n    ],\n    [\n      \"jit_cellblock\",\n      0,\n      \"capture\",\n      0\n    ],\n    [\n      \"jit_cellblock\",\n      0,\n      \"print\",\n      0\n    ],\n    [\n      \"clear\",\n      0,\n      \"capture\",\n      0\n    ],\n    [\n      \"col\",\n      0,\n      \"jit_permlist\",\n      0\n    ],\n    [\n      \"v8\",\n      0,\n      \"textedit\",\n      0\n    ],\n    [\n      \"loadmess_mintrans\",\n      0,\n      \"tog_mintrans\",\n      0\n    ],\n    [\n      \"tog_mintrans\",\n      0,\n      \"msg_setmintrans\",\n      0\n    ],\n    [\n      \"msg_setmintrans\",\n      0,\n      \"brain\",\n      0\n    ]\n  ]\n}\n--- END SPEC ---",
                    "fontface": 0,
                    "fontname": "<Monospaced>",
                    "fontsize": 9.0,
                    "hidden": 1,
                    "id": "obj-spec-embed",
                    "maxclass": "text.codebox",
                    "numinlets": 2,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 50.0, 1046.0, 500.0, 300.0 ],
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
                    "destination": [ "obj-42", 0 ],
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
                    "destination": [ "obj-42", 0 ],
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
                    "destination": [ "obj-42", 0 ],
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
                    "destination": [ "obj-42", 0 ],
                    "source": [ "obj-25", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 0 ],
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-27", 0 ],
                    "source": [ "obj-28", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-42", 0 ],
                    "source": [ "obj-29", 0 ]
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
                    "destination": [ "obj-31", 0 ],
                    "source": [ "obj-32", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-42", 0 ],
                    "source": [ "obj-33", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-36", 0 ],
                    "source": [ "obj-35", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-42", 0 ],
                    "source": [ "obj-36", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-39", 0 ],
                    "source": [ "obj-38", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-42", 0 ],
                    "source": [ "obj-39", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-41", 0 ],
                    "source": [ "obj-40", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-42", 0 ],
                    "source": [ "obj-41", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-43", 0 ],
                    "source": [ "obj-42", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-44", 0 ],
                    "order": 0,
                    "source": [ "obj-42", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-44", 0 ],
                    "source": [ "obj-42", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-51", 0 ],
                    "source": [ "obj-42", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-53", 0 ],
                    "order": 1,
                    "source": [ "obj-42", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-60", 0 ],
                    "order": 1,
                    "source": [ "obj-42", 6 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-61", 0 ],
                    "order": 0,
                    "source": [ "obj-42", 6 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-64", 0 ],
                    "source": [ "obj-42", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-66", 0 ],
                    "source": [ "obj-42", 7 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-46", 0 ],
                    "source": [ "obj-44", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-44", 1 ],
                    "source": [ "obj-45", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-42", 0 ],
                    "source": [ "obj-47", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-47", 0 ],
                    "order": 0,
                    "source": [ "obj-55", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-56", 0 ],
                    "order": 1,
                    "source": [ "obj-55", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-57", 0 ],
                    "source": [ "obj-56", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-42", 0 ],
                    "source": [ "obj-57", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-42", 0 ],
                    "source": [ "obj-59", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-64", 0 ],
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-62", 0 ],
                    "source": [ "obj-61", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-63", 0 ],
                    "source": [ "obj-62", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-42", 0 ],
                    "order": 0,
                    "source": [ "obj-64", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "order": 1,
                    "source": [ "obj-64", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-9", 0 ],
                    "order": 2,
                    "source": [ "obj-64", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-60", 0 ],
                    "source": [ "obj-65", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-68", 0 ],
                    "source": [ "obj-66", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-73", 0 ],
                    "source": [ "obj-71", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-71", 0 ],
                    "source": [ "obj-72", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-42", 0 ],
                    "source": [ "obj-73", 0 ]
                }
            }
        ],
        "autosave": 0
    }
}