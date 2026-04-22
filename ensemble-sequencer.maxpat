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
    "rect": [
      34.0,
      96.0,
      1402.0,
      826.0
    ],
    "boxes": [
      {
        "box": {
          "id": "obj-80",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            924.0,
            167.0,
            104.0,
            22.0
          ],
          "text": "target 3, text Alice"
        }
      },
      {
        "box": {
          "id": "obj-78",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            803.0,
            134.0,
            316.0,
            22.0
          ],
          "text": "target 2, text Dance, position 0 0.65, font Arial, fontsize 50"
        }
      },
      {
        "box": {
          "id": "obj-72",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1202.0,
            130.0,
            32.0,
            22.0
          ],
          "text": "r RB"
        }
      },
      {
        "box": {
          "id": "obj-70",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1359.0,
            198.0,
            119.0,
            22.0
          ],
          "text": "target 3, color $1 0 1"
        }
      },
      {
        "box": {
          "id": "obj-69",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "float"
          ],
          "patching_rect": [
            1258.0,
            160.0,
            41.0,
            22.0
          ],
          "text": "abs 0."
        }
      },
      {
        "box": {
          "id": "obj-68",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1136.0,
            130.0,
            56.0,
            22.0
          ],
          "text": "-1, 0 200"
        }
      },
      {
        "box": {
          "id": "obj-66",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1202.0,
            198.0,
            151.0,
            22.0
          ],
          "text": "target 3, position $1 0.35 0"
        }
      },
      {
        "box": {
          "id": "obj-64",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "patching_rect": [
            1202.0,
            160.0,
            47.0,
            22.0
          ],
          "text": "bline 0."
        }
      },
      {
        "box": {
          "id": "obj-75",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            798.0,
            105.0,
            317.0,
            22.0
          ],
          "text": "target 1, text Music, position -1 0.65, font Arial, fontsize 50"
        }
      },
      {
        "box": {
          "id": "obj-73",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            876.0,
            200.0,
            99.0,
            22.0
          ],
          "text": "poly~ textpoly 10"
        }
      },
      {
        "box": {
          "id": "obj-71",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            994.0,
            63.0,
            35.0,
            22.0
          ],
          "text": "s RB"
        }
      },
      {
        "box": {
          "id": "obj-59",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "jit_matrix",
            "bang",
            ""
          ],
          "patching_rect": [
            866.0,
            33.0,
            272.0,
            22.0
          ],
          "text": "jit.world PERFORMANCE @enable 1 @floating 1"
        }
      },
      {
        "box": {
          "id": "obj-56",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            261.0,
            248.0,
            35.0,
            22.0
          ],
          "text": "clear"
        }
      },
      {
        "box": {
          "id": "obj-54",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "int"
          ],
          "patching_rect": [
            253.0,
            316.0,
            49.0,
            22.0
          ],
          "text": "capture"
        }
      },
      {
        "box": {
          "id": "obj-53",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            58.0,
            316.0,
            52.0,
            22.0
          ],
          "text": "print CB"
        }
      },
      {
        "box": {
          "id": "obj-52",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            250.0,
            125.0,
            39.0,
            22.0
          ],
          "text": "dump"
        }
      },
      {
        "box": {
          "fontsize": 14.0,
          "id": "obj-1",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20.0,
            12.0,
            269.0,
            22.0
          ],
          "text": "IMPROVISED ENSEMBLE SEQUENCER"
        }
      },
      {
        "box": {
          "id": "obj-2",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20.0,
            34.0,
            642.0,
            20.0
          ],
          "text": "\u2500\u2500 SETUP \u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500"
        }
      },
      {
        "box": {
          "id": "obj-3",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            25.0,
            57.0,
            118.0,
            20.0
          ],
          "text": "Performer Name"
        }
      },
      {
        "box": {
          "id": "obj-4",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            182.0,
            57.0,
            111.0,
            20.0
          ],
          "text": "No Solo Dance"
        }
      },
      {
        "box": {
          "id": "obj-5",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            295.0,
            57.0,
            111.0,
            20.0
          ],
          "text": "No Solo Music"
        }
      },
      {
        "box": {
          "id": "obj-6",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            182.0,
            71.0,
            118.0,
            20.0
          ],
          "text": "(type 1 = yes)"
        }
      },
      {
        "box": {
          "fontface": 0,
          "fontname": "Arial",
          "fontsize": 12.0,
          "id": "obj-7",
          "maxclass": "jit.cellblock",
          "numinlets": 2,
          "numoutlets": 4,
          "outlettype": [
            "list",
            "",
            "",
            ""
          ],
          "patching_rect": [
            20.0,
            87.0,
            200.0,
            200.0
          ],
          "selmode": 5
        }
      },
      {
        "box": {
          "id": "obj-8",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            430.0,
            57.0,
            144.0,
            20.0
          ],
          "text": "Max group size (per side)"
        }
      },
      {
        "box": {
          "id": "obj-9",
          "maxclass": "number",
          "maximum": 20,
          "minimum": 1,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            430.0,
            75.0,
            65.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "hidden": 1,
          "id": "obj-10",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            583.0,
            56.0,
            70.0,
            22.0
          ],
          "text": "loadmess 3"
        }
      },
      {
        "box": {
          "id": "obj-11",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            430.0,
            105.0,
            118.0,
            22.0
          ],
          "text": "setmaxgroup $1"
        }
      },
      {
        "box": {
          "id": "obj-12",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            430.0,
            135.0,
            134.0,
            20.0
          ],
          "text": "Total duration (minutes)"
        }
      },
      {
        "box": {
          "id": "obj-13",
          "maxclass": "number",
          "maximum": 480,
          "minimum": 1,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            430.0,
            153.0,
            65.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "hidden": 1,
          "id": "obj-14",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            583.0,
            134.0,
            77.0,
            22.0
          ],
          "text": "loadmess 10"
        }
      },
      {
        "box": {
          "id": "obj-15",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            430.0,
            183.0,
            118.0,
            22.0
          ],
          "text": "setduration $1"
        }
      },
      {
        "box": {
          "id": "obj-16",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            335.0,
            213.0,
            167.0,
            20.0
          ],
          "text": "Generate Permutations"
        }
      },
      {
        "box": {
          "id": "obj-17",
          "maxclass": "button",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            335.0,
            231.0,
            24.0,
            24.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-18",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            335.0,
            259.0,
            76.0,
            22.0
          ],
          "text": "generate"
        }
      },
      {
        "box": {
          "id": "obj-19",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            478.0,
            213.0,
            55.0,
            20.0
          ],
          "text": "Reset"
        }
      },
      {
        "box": {
          "id": "obj-20",
          "maxclass": "button",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            478.0,
            231.0,
            24.0,
            24.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-21",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            478.0,
            259.0,
            55.0,
            22.0
          ],
          "text": "reset"
        }
      },
      {
        "box": {
          "hidden": 1,
          "id": "obj-24",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            791.0,
            293.0,
            81.0,
            22.0
          ],
          "text": "print STATUS"
        }
      },
      {
        "box": {
          "filename": "ensemble.js",
          "hidden": 1,
          "id": "obj-25",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 6,
          "outlettype": [
            "",
            "",
            "",
            "",
            "",
            ""
          ],
          "patching_rect": [
            706.0,
            176.0,
            89.0,
            22.0
          ],
          "saved_object_attributes": {
            "parameter_enable": 0
          },
          "text": "v8 ensemble.js",
          "textfile": {
            "filename": "ensemble.js",
            "flags": 0,
            "embed": 0,
            "autowatch": 1
          }
        }
      },
      {
        "box": {
          "id": "obj-26",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20.0,
            348.0,
            644.0,
            20.0
          ],
          "text": "\u2500\u2500 PERFORMANCE \u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500"
        }
      },
      {
        "box": {
          "fontsize": 18.0,
          "id": "obj-27",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20.0,
            368.0,
            109.0,
            27.0
          ],
          "text": "MUSICIANS"
        }
      },
      {
        "box": {
          "fontface": 0,
          "fontname": "Arial",
          "fontsize": 12.0,
          "id": "obj-28",
          "maxclass": "jit.cellblock",
          "numinlets": 2,
          "numoutlets": 4,
          "outlettype": [
            "list",
            "",
            "",
            ""
          ],
          "patching_rect": [
            20.0,
            393.0,
            200.0,
            200.0
          ]
        }
      },
      {
        "box": {
          "fontsize": 18.0,
          "id": "obj-29",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            775.0,
            368.0,
            97.0,
            27.0
          ],
          "text": "DANCERS"
        }
      },
      {
        "box": {
          "fontface": 0,
          "fontname": "Arial",
          "fontsize": 12.0,
          "id": "obj-30",
          "maxclass": "jit.cellblock",
          "numinlets": 2,
          "numoutlets": 4,
          "outlettype": [
            "list",
            "",
            "",
            ""
          ],
          "patching_rect": [
            775.0,
            393.0,
            200.0,
            200.0
          ]
        }
      },
      {
        "box": {
          "fontsize": 12.0,
          "id": "obj-31",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            440.0,
            368.0,
            111.0,
            20.0
          ],
          "text": "NEXT TO MOVE:"
        }
      },
      {
        "box": {
          "bgcolor": [
            1.0,
            0.82,
            0.0,
            1.0
          ],
          "bgcolor2": [
            0.172137149796092,
            0.172137100044002,
            0.172137113045018,
            1
          ],
          "bgfillcolor_autogradient": 0.0,
          "bgfillcolor_color": [
            0.172137149796092,
            0.172137100044002,
            0.172137113045018,
            1
          ],
          "bgfillcolor_color1": [
            1.0,
            0.82,
            0.0,
            1.0
          ],
          "bgfillcolor_color2": [
            0.172137149796092,
            0.172137100044002,
            0.172137113045018,
            1
          ],
          "bgfillcolor_type": "gradient",
          "fontsize": 15.0,
          "gradient": 1,
          "id": "obj-32",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            440.0,
            388.0,
            310.0,
            25.0
          ],
          "text": "\"Bob to Dance, Cathy to Music\"",
          "textcolor": [
            0.0,
            0.0,
            0.0,
            1.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-33",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            440.0,
            468.0,
            97.0,
            22.0
          ],
          "text": "prepend set"
        }
      },
      {
        "box": {
          "id": "obj-34",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            440.0,
            504.0,
            153.0,
            20.0
          ],
          "text": "Countdown (seconds)"
        }
      },
      {
        "box": {
          "fontsize": 24.0,
          "id": "obj-35",
          "maxclass": "number",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            440.0,
            522.0,
            140.0,
            35.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-36",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            440.0,
            584.0,
            41.0,
            20.0
          ],
          "text": "Run"
        }
      },
      {
        "box": {
          "id": "obj-37",
          "maxclass": "toggle",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            440.0,
            602.0,
            24.0,
            24.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-38",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "patching_rect": [
            440.0,
            634.0,
            90.0,
            22.0
          ],
          "text": "metro 1000"
        }
      },
      {
        "box": {
          "id": "obj-39",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            440.0,
            666.0,
            48.0,
            22.0
          ],
          "text": "tick"
        }
      },
      {
        "box": {
          "id": "obj-40",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            480.0,
            704.0,
            118.0,
            20.0
          ],
          "text": "Manual Advance"
        }
      },
      {
        "box": {
          "id": "obj-41",
          "maxclass": "button",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            440.0,
            720.0,
            24.0,
            24.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-42",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            480.0,
            756.0,
            55.0,
            20.0
          ],
          "text": "Done!"
        }
      },
      {
        "box": {
          "id": "obj-43",
          "maxclass": "button",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            440.0,
            773.0,
            24.0,
            24.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-spec-embed",
          "maxclass": "text.codebox",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            50.0,
            837.0,
            500.0,
            300.0
          ],
          "code": "--- CLAUDE2MAX SPEC ---\n{\n  \"name\": \"Improvised Ensemble Sequencer\",\n  \"width\": 1402,\n  \"height\": 826,\n  \"objects\": {\n    \"title\": {\n      \"type\": \"comment\",\n      \"text\": \"IMPROVISED ENSEMBLE SEQUENCER\",\n      \"pos\": [\n        20,\n        12\n      ],\n      \"attrs\": {\n        \"fontsize\": 14\n      }\n    },\n    \"lbl_setup\": {\n      \"type\": \"comment\",\n      \"text\": \"\\u2500\\u2500 SETUP \\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\",\n      \"pos\": [\n        20,\n        34\n      ]\n    },\n    \"lbl_col_name\": {\n      \"type\": \"comment\",\n      \"text\": \"Performer Name\",\n      \"pos\": [\n        25,\n        57\n      ]\n    },\n    \"lbl_col_nsd\": {\n      \"type\": \"comment\",\n      \"text\": \"No Solo Dance\",\n      \"pos\": [\n        182,\n        57\n      ]\n    },\n    \"lbl_col_nsm\": {\n      \"type\": \"comment\",\n      \"text\": \"No Solo Music\",\n      \"pos\": [\n        295,\n        57\n      ]\n    },\n    \"lbl_col_hint\": {\n      \"type\": \"comment\",\n      \"text\": \"(type 1 = yes)\",\n      \"pos\": [\n        182,\n        71\n      ]\n    },\n    \"lbl_maxgroup\": {\n      \"type\": \"comment\",\n      \"text\": \"Max group size (per side)\",\n      \"pos\": [\n        430,\n        57\n      ]\n    },\n    \"num_maxgroup\": {\n      \"type\": \"number\",\n      \"pos\": [\n        430,\n        75\n      ],\n      \"size\": [\n        65,\n        22\n      ],\n      \"attrs\": {\n        \"minimum\": 1,\n        \"maximum\": 20\n      }\n    },\n    \"msg_setmaxgroup\": {\n      \"type\": \"message\",\n      \"text\": \"setmaxgroup $1\",\n      \"pos\": [\n        430,\n        105\n      ]\n    },\n    \"lbl_duration\": {\n      \"type\": \"comment\",\n      \"text\": \"Total duration (minutes)\",\n      \"pos\": [\n        430,\n        135\n      ]\n    },\n    \"num_duration\": {\n      \"type\": \"number\",\n      \"pos\": [\n        430,\n        153\n      ],\n      \"size\": [\n        65,\n        22\n      ],\n      \"attrs\": {\n        \"minimum\": 1,\n        \"maximum\": 480\n      }\n    },\n    \"msg_setduration\": {\n      \"type\": \"message\",\n      \"text\": \"setduration $1\",\n      \"pos\": [\n        430,\n        183\n      ]\n    },\n    \"lbl_reset\": {\n      \"type\": \"comment\",\n      \"text\": \"Reset\",\n      \"pos\": [\n        478,\n        213\n      ]\n    },\n    \"btn_reset\": {\n      \"type\": \"button\",\n      \"pos\": [\n        478,\n        231\n      ]\n    },\n    \"msg_reset\": {\n      \"type\": \"message\",\n      \"text\": \"reset\",\n      \"pos\": [\n        478,\n        259\n      ]\n    },\n    \"lbl_perf\": {\n      \"type\": \"comment\",\n      \"text\": \"\\u2500\\u2500 PERFORMANCE \\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\",\n      \"pos\": [\n        20,\n        348\n      ]\n    },\n    \"lbl_musicians\": {\n      \"type\": \"comment\",\n      \"text\": \"MUSICIANS\",\n      \"pos\": [\n        20,\n        368\n      ],\n      \"attrs\": {\n        \"fontsize\": 18\n      }\n    },\n    \"lbl_dancers\": {\n      \"type\": \"comment\",\n      \"text\": \"DANCERS\",\n      \"pos\": [\n        775,\n        368\n      ],\n      \"attrs\": {\n        \"fontsize\": 18\n      }\n    },\n    \"lbl_next\": {\n      \"type\": \"comment\",\n      \"text\": \"NEXT TO MOVE:\",\n      \"pos\": [\n        440,\n        368\n      ],\n      \"attrs\": {\n        \"fontsize\": 12\n      }\n    },\n    \"msg_next\": {\n      \"type\": \"message\",\n      \"text\": \"\\\"Bob to Dance, Cathy to Music\\\"\",\n      \"pos\": [\n        440,\n        388\n      ],\n      \"size\": [\n        310,\n        70\n      ],\n      \"attrs\": {\n        \"bgcolor\": [\n          1.0,\n          0.82,\n          0.0,\n          1.0\n        ],\n        \"textcolor\": [\n          0.0,\n          0.0,\n          0.0,\n          1.0\n        ],\n        \"fontsize\": 15\n      }\n    },\n    \"prep_next\": {\n      \"type\": \"newobj\",\n      \"text\": \"prepend set\",\n      \"pos\": [\n        440,\n        468\n      ]\n    },\n    \"lbl_countdown\": {\n      \"type\": \"comment\",\n      \"text\": \"Countdown (seconds)\",\n      \"pos\": [\n        440,\n        504\n      ]\n    },\n    \"num_countdown\": {\n      \"type\": \"number\",\n      \"pos\": [\n        440,\n        522\n      ],\n      \"size\": [\n        140,\n        50\n      ],\n      \"attrs\": {\n        \"fontsize\": 24\n      }\n    },\n    \"lbl_run\": {\n      \"type\": \"comment\",\n      \"text\": \"Run\",\n      \"pos\": [\n        440,\n        584\n      ]\n    },\n    \"tog_run\": {\n      \"type\": \"toggle\",\n      \"pos\": [\n        440,\n        602\n      ]\n    },\n    \"metro_tick\": {\n      \"type\": \"newobj\",\n      \"text\": \"metro 1000\",\n      \"pos\": [\n        440,\n        634\n      ]\n    },\n    \"msg_tick\": {\n      \"type\": \"message\",\n      \"text\": \"tick\",\n      \"pos\": [\n        440,\n        666\n      ]\n    },\n    \"lbl_advance\": {\n      \"type\": \"comment\",\n      \"text\": \"Manual Advance\",\n      \"pos\": [\n        480,\n        704\n      ]\n    },\n    \"btn_advance\": {\n      \"type\": \"button\",\n      \"pos\": [\n        440,\n        720\n      ]\n    },\n    \"lbl_complete\": {\n      \"type\": \"comment\",\n      \"text\": \"Done!\",\n      \"pos\": [\n        480,\n        756\n      ]\n    },\n    \"btn_complete\": {\n      \"type\": \"button\",\n      \"pos\": [\n        440,\n        773\n      ]\n    },\n    \"jit_cellblock\": {\n      \"type\": \"jit.cellblock\",\n      \"pos\": [\n        20,\n        87\n      ],\n      \"size\": [\n        200,\n        200\n      ]\n    },\n    \"loadmess\": {\n      \"type\": \"newobj\",\n      \"pos\": [\n        583,\n        56\n      ],\n      \"text\": \"loadmess 3\"\n    },\n    \"loadmess_2\": {\n      \"type\": \"newobj\",\n      \"pos\": [\n        583,\n        134\n      ],\n      \"text\": \"loadmess 10\"\n    },\n    \"jit_cellblock_2\": {\n      \"type\": \"jit.cellblock\",\n      \"pos\": [\n        20,\n        393\n      ],\n      \"size\": [\n        200,\n        200\n      ]\n    },\n    \"jit_cellblock_3\": {\n      \"type\": \"jit.cellblock\",\n      \"pos\": [\n        775,\n        393\n      ],\n      \"size\": [\n        200,\n        200\n      ]\n    },\n    \"lbl_gen\": {\n      \"type\": \"comment\",\n      \"text\": \"Generate Permutations\",\n      \"pos\": [\n        335,\n        213\n      ]\n    },\n    \"btn_generate\": {\n      \"type\": \"button\",\n      \"pos\": [\n        335,\n        231\n      ]\n    },\n    \"msg_generate\": {\n      \"type\": \"message\",\n      \"text\": \"generate\",\n      \"pos\": [\n        335,\n        259\n      ]\n    },\n    \"prep_status\": {\n      \"type\": \"newobj\",\n      \"text\": \"print STATUS\",\n      \"pos\": [\n        791,\n        293\n      ]\n    },\n    \"brain\": {\n      \"type\": \"newobj\",\n      \"text\": \"v8 ensemble.js\",\n      \"pos\": [\n        706,\n        176\n      ],\n      \"inlets\": 1,\n      \"outlets\": 6,\n      \"outlettype\": [\n        \"\",\n        \"\",\n        \"\",\n        \"int\",\n        \"\",\n        \"bang\"\n      ]\n    },\n    \"target\": {\n      \"type\": \"message\",\n      \"pos\": [\n        924,\n        167\n      ],\n      \"text\": \"target 3, text Alice\"\n    },\n    \"target_2\": {\n      \"type\": \"message\",\n      \"pos\": [\n        803,\n        134\n      ],\n      \"text\": \"target 2, text Dance, position 0 0.65, font Arial, fontsize 50\"\n    },\n    \"r\": {\n      \"type\": \"newobj\",\n      \"pos\": [\n        1202,\n        130\n      ],\n      \"text\": \"r RB\"\n    },\n    \"target_3\": {\n      \"type\": \"message\",\n      \"pos\": [\n        1359,\n        198\n      ],\n      \"text\": \"target 3, color $1 0 1\"\n    },\n    \"abs\": {\n      \"type\": \"newobj\",\n      \"pos\": [\n        1258,\n        160\n      ],\n      \"text\": \"abs 0.\"\n    },\n    \"1\": {\n      \"type\": \"message\",\n      \"pos\": [\n        1136,\n        130\n      ],\n      \"text\": \"-1, 0 200\"\n    },\n    \"target_4\": {\n      \"type\": \"message\",\n      \"pos\": [\n        1202,\n        198\n      ],\n      \"text\": \"target 3, position $1 0.35 0\"\n    },\n    \"bline\": {\n      \"type\": \"newobj\",\n      \"pos\": [\n        1202,\n        160\n      ],\n      \"text\": \"bline 0.\"\n    },\n    \"target_5\": {\n      \"type\": \"message\",\n      \"pos\": [\n        798,\n        105\n      ],\n      \"text\": \"target 1, text Music, position -1 0.65, font Arial, fontsize 50\"\n    },\n    \"poly\": {\n      \"type\": \"newobj\",\n      \"pos\": [\n        876,\n        200\n      ],\n      \"text\": \"poly~ textpoly 10\"\n    },\n    \"s\": {\n      \"type\": \"newobj\",\n      \"pos\": [\n        994,\n        63\n      ],\n      \"text\": \"s RB\"\n    },\n    \"jit_world\": {\n      \"type\": \"newobj\",\n      \"pos\": [\n        866,\n        33\n      ],\n      \"text\": \"jit.world PERFORMANCE @enable 1 @floating 1\"\n    },\n    \"clear\": {\n      \"type\": \"message\",\n      \"pos\": [\n        261,\n        248\n      ],\n      \"text\": \"clear\"\n    },\n    \"capture\": {\n      \"type\": \"newobj\",\n      \"pos\": [\n        253,\n        316\n      ],\n      \"text\": \"capture\"\n    },\n    \"print\": {\n      \"type\": \"newobj\",\n      \"pos\": [\n        58,\n        316\n      ],\n      \"text\": \"print CB\"\n    },\n    \"dump\": {\n      \"type\": \"message\",\n      \"pos\": [\n        250,\n        125\n      ],\n      \"text\": \"dump\"\n    }\n  },\n  \"connections\": [\n    [\n      \"loadmess\",\n      0,\n      \"num_maxgroup\",\n      0\n    ],\n    [\n      \"msg_setmaxgroup\",\n      0,\n      \"brain\",\n      0\n    ],\n    [\n      \"num_duration\",\n      0,\n      \"msg_setduration\",\n      0\n    ],\n    [\n      \"loadmess_2\",\n      0,\n      \"num_duration\",\n      0\n    ],\n    [\n      \"msg_setduration\",\n      0,\n      \"brain\",\n      0\n    ],\n    [\n      \"btn_generate\",\n      0,\n      \"msg_generate\",\n      0\n    ],\n    [\n      \"msg_generate\",\n      0,\n      \"brain\",\n      0\n    ],\n    [\n      \"btn_reset\",\n      0,\n      \"msg_reset\",\n      0\n    ],\n    [\n      \"msg_reset\",\n      0,\n      \"brain\",\n      0\n    ],\n    [\n      \"brain\",\n      4,\n      \"prep_status\",\n      0\n    ],\n    [\n      \"brain\",\n      0,\n      \"jit_cellblock_2\",\n      0\n    ],\n    [\n      \"brain\",\n      1,\n      \"jit_cellblock_3\",\n      0\n    ],\n    [\n      \"brain\",\n      2,\n      \"prep_next\",\n      0\n    ],\n    [\n      \"brain\",\n      3,\n      \"num_countdown\",\n      0\n    ],\n    [\n      \"brain\",\n      5,\n      \"btn_complete\",\n      0\n    ],\n    [\n      \"prep_next\",\n      0,\n      \"msg_next\",\n      0\n    ],\n    [\n      \"tog_run\",\n      0,\n      \"metro_tick\",\n      0\n    ],\n    [\n      \"metro_tick\",\n      0,\n      \"msg_tick\",\n      0\n    ],\n    [\n      \"msg_tick\",\n      0,\n      \"brain\",\n      0\n    ],\n    [\n      \"btn_advance\",\n      0,\n      \"brain\",\n      0\n    ],\n    [\n      \"dump\",\n      0,\n      \"jit_cellblock\",\n      0\n    ],\n    [\n      \"clear\",\n      0,\n      \"capture\",\n      0\n    ],\n    [\n      \"jit_world\",\n      1,\n      \"s\",\n      0\n    ],\n    [\n      \"bline\",\n      0,\n      \"target_4\",\n      0\n    ],\n    [\n      \"bline\",\n      0,\n      \"abs\",\n      0\n    ],\n    [\n      \"target_4\",\n      0,\n      \"poly\",\n      0\n    ],\n    [\n      \"1\",\n      0,\n      \"bline\",\n      0\n    ],\n    [\n      \"abs\",\n      0,\n      \"target_3\",\n      0\n    ],\n    [\n      \"jit_cellblock\",\n      0,\n      \"brain\",\n      0\n    ],\n    [\n      \"jit_cellblock\",\n      0,\n      \"print\",\n      0\n    ],\n    [\n      \"jit_cellblock\",\n      0,\n      \"capture\",\n      0\n    ],\n    [\n      \"target_3\",\n      0,\n      \"poly\",\n      0\n    ],\n    [\n      \"r\",\n      0,\n      \"bline\",\n      0\n    ],\n    [\n      \"target_5\",\n      0,\n      \"poly\",\n      0\n    ],\n    [\n      \"target_2\",\n      0,\n      \"poly\",\n      0\n    ],\n    [\n      \"target\",\n      0,\n      \"poly\",\n      0\n    ],\n    [\n      \"num_maxgroup\",\n      0,\n      \"msg_setmaxgroup\",\n      0\n    ]\n  ]\n}\n--- END SPEC ---",
          "fontsize": 9.0,
          "hidden": 1
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "destination": [
            "obj-9",
            0
          ],
          "hidden": 1,
          "source": [
            "obj-10",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-25",
            0
          ],
          "hidden": 1,
          "source": [
            "obj-11",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-15",
            0
          ],
          "source": [
            "obj-13",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-13",
            0
          ],
          "hidden": 1,
          "source": [
            "obj-14",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-25",
            0
          ],
          "hidden": 1,
          "source": [
            "obj-15",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-18",
            0
          ],
          "source": [
            "obj-17",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-25",
            0
          ],
          "hidden": 1,
          "source": [
            "obj-18",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-21",
            0
          ],
          "source": [
            "obj-20",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-25",
            0
          ],
          "hidden": 1,
          "source": [
            "obj-21",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-24",
            0
          ],
          "hidden": 1,
          "source": [
            "obj-25",
            4
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-28",
            0
          ],
          "hidden": 1,
          "source": [
            "obj-25",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-30",
            0
          ],
          "hidden": 1,
          "source": [
            "obj-25",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-33",
            0
          ],
          "hidden": 1,
          "source": [
            "obj-25",
            2
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-35",
            0
          ],
          "hidden": 1,
          "source": [
            "obj-25",
            3
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-43",
            0
          ],
          "hidden": 1,
          "source": [
            "obj-25",
            5
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-32",
            0
          ],
          "source": [
            "obj-33",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-38",
            0
          ],
          "source": [
            "obj-37",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-39",
            0
          ],
          "source": [
            "obj-38",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-25",
            0
          ],
          "hidden": 1,
          "source": [
            "obj-39",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-25",
            0
          ],
          "hidden": 1,
          "source": [
            "obj-41",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-7",
            0
          ],
          "source": [
            "obj-52",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-54",
            0
          ],
          "source": [
            "obj-56",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-71",
            0
          ],
          "source": [
            "obj-59",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-66",
            0
          ],
          "order": 1,
          "source": [
            "obj-64",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-69",
            0
          ],
          "order": 0,
          "source": [
            "obj-64",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-73",
            0
          ],
          "source": [
            "obj-66",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-64",
            0
          ],
          "source": [
            "obj-68",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-70",
            0
          ],
          "source": [
            "obj-69",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-25",
            0
          ],
          "hidden": 1,
          "order": 0,
          "source": [
            "obj-7",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-53",
            0
          ],
          "order": 2,
          "source": [
            "obj-7",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-54",
            0
          ],
          "order": 1,
          "source": [
            "obj-7",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-73",
            0
          ],
          "source": [
            "obj-70",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-64",
            0
          ],
          "source": [
            "obj-72",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-73",
            0
          ],
          "source": [
            "obj-75",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-73",
            0
          ],
          "source": [
            "obj-78",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-73",
            0
          ],
          "source": [
            "obj-80",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-11",
            0
          ],
          "source": [
            "obj-9",
            0
          ]
        }
      }
    ],
    "autosave": 0
  }
}
