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
          "patching_rect": [
            50.0,
            15.0,
            400.0,
            24.0
          ],
          "text": "Improvised Ensemble Sequencer v2"
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
            288.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            15.0,
            10.0,
            590.0,
            22.0
          ],
          "text": "IMPROVISED ENSEMBLE SEQUENCER v2"
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
          "presentation": 1,
          "presentation_rect": [
            15.0,
            36.0,
            100.0,
            20.0
          ],
          "text": "Name"
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
          "presentation": 1,
          "presentation_rect": [
            79.0,
            36.0,
            95.0,
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
          "presentation": 1,
          "presentation_rect": [
            178.0,
            36.0,
            95.0,
            20.0
          ],
          "text": "No Solo Music"
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
          "presentation": 1,
          "presentation_rect": [
            15.0,
            54.0,
            301.0,
            142.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-8",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            250.0,
            125.0,
            48.0,
            22.0
          ],
          "text": "dump"
        }
      },
      {
        "box": {
          "id": "obj-9",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            261.0,
            248.0,
            55.0,
            22.0
          ],
          "text": "clear"
        }
      },
      {
        "box": {
          "id": "obj-10",
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
            69.0,
            22.0
          ],
          "text": "capture"
        }
      },
      {
        "box": {
          "id": "obj-11",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            58.0,
            316.0,
            76.0,
            22.0
          ],
          "text": "print CB"
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
            57.0,
            195.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            15.0,
            204.0,
            145.0,
            20.0
          ],
          "text": "Max group size (per side)"
        }
      },
      {
        "box": {
          "id": "obj-13",
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
          ],
          "presentation": 1,
          "presentation_rect": [
            168.0,
            201.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-14",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            583.0,
            56.0,
            90.0,
            22.0
          ],
          "text": "loadmess 3"
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
            105.0,
            118.0,
            22.0
          ],
          "text": "setmaxgroup $1"
        }
      },
      {
        "box": {
          "id": "obj-16",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            430.0,
            135.0,
            188.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            15.0,
            232.0,
            145.0,
            20.0
          ],
          "text": "Total duration (minutes)"
        }
      },
      {
        "box": {
          "id": "obj-17",
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
          ],
          "presentation": 1,
          "presentation_rect": [
            168.0,
            229.0,
            55.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-18",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            583.0,
            134.0,
            97.0,
            22.0
          ],
          "text": "loadmess 10"
        }
      },
      {
        "box": {
          "id": "obj-19",
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
          "id": "obj-20",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            335.0,
            213.0,
            167.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            41.0,
            265.0,
            133.0,
            20.0
          ],
          "text": "Generate Permutations"
        }
      },
      {
        "box": {
          "id": "obj-21",
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
          ],
          "presentation": 1,
          "presentation_rect": [
            15.0,
            262.0,
            22.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-22",
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
          "id": "obj-23",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            478.0,
            213.0,
            55.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            204.0,
            265.0,
            45.0,
            20.0
          ],
          "text": "Reset"
        }
      },
      {
        "box": {
          "id": "obj-24",
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
          ],
          "presentation": 1,
          "presentation_rect": [
            178.0,
            262.0,
            22.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-25",
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
          "id": "obj-26",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            791.0,
            293.0,
            104.0,
            22.0
          ],
          "text": "print STATUS"
        }
      },
      {
        "box": {
          "filename": "ensemble-v2.js",
          "id": "obj-27",
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
            139.0,
            22.0
          ],
          "saved_object_attributes": {
            "parameter_enable": 0
          },
          "text": "v8 ensemble-v2.js",
          "textfile": {
            "filename": "ensemble-v2.js",
            "flags": 0,
            "embed": 0,
            "autowatch": 1
          }
        }
      },
      {
        "box": {
          "filename": "display.js",
          "id": "obj-28",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            706.0,
            260.0,
            111.0,
            22.0
          ],
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
          "id": "obj-29",
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
          "id": "obj-30",
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
          "fontsize": 18.0,
          "id": "obj-31",
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
          "fontsize": 12.0,
          "id": "obj-32",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            440.0,
            368.0,
            111.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            345.0,
            36.0,
            270.0,
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
          "id": "obj-33",
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
          "presentation": 1,
          "presentation_rect": [
            345.0,
            54.0,
            270.0,
            25.0
          ],
          "text": "---",
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
          "id": "obj-34",
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
          "id": "obj-35",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            440.0,
            504.0,
            153.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            345.0,
            151.0,
            270.0,
            20.0
          ],
          "text": "Countdown (seconds)"
        }
      },
      {
        "box": {
          "fontsize": 24.0,
          "id": "obj-36",
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
          ],
          "presentation": 1,
          "presentation_rect": [
            345.0,
            169.0,
            270.0,
            35.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-37",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            440.0,
            584.0,
            41.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            371.0,
            271.0,
            31.0,
            20.0
          ],
          "text": "Run"
        }
      },
      {
        "box": {
          "id": "obj-38",
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
          ],
          "presentation": 1,
          "presentation_rect": [
            345.0,
            268.0,
            22.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-39",
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
          "id": "obj-40",
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
          "id": "obj-41",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            480.0,
            704.0,
            118.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            441.0,
            271.0,
            100.0,
            20.0
          ],
          "text": "Manual Advance"
        }
      },
      {
        "box": {
          "id": "obj-42",
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
          ],
          "presentation": 1,
          "presentation_rect": [
            415.0,
            268.0,
            22.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-43",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            480.0,
            756.0,
            55.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            581.0,
            271.0,
            41.0,
            20.0
          ],
          "text": "Done!"
        }
      },
      {
        "box": {
          "id": "obj-44",
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
          ],
          "presentation": 1,
          "presentation_rect": [
            555.0,
            268.0,
            22.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-45",
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
            321.0,
            22.0
          ],
          "text": "jit.world PERFORMANCE @enable 1 @floating 1"
        }
      },
      {
        "box": {
          "id": "obj-46",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            876.0,
            200.0,
            139.0,
            22.0
          ],
          "text": "poly~ textpoly 15"
        }
      },
      {
        "box": {
          "id": "obj-47",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "patching_rect": [
            583.0,
            180.0,
            76.0,
            22.0
          ],
          "text": "loadbang"
        }
      },
      {
        "box": {
          "id": "obj-48",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            583.0,
            210.0,
            48.0,
            22.0
          ],
          "text": "init"
        }
      },
      {
        "box": {
          "id": "obj-49",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1050.0,
            50.0,
            90.0,
            22.0
          ],
          "text": "loadmess 1"
        }
      },
      {
        "box": {
          "id": "obj-50",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "patching_rect": [
            1050.0,
            75.0,
            83.0,
            22.0
          ],
          "text": "metro 500"
        }
      },
      {
        "box": {
          "id": "obj-51",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1050.0,
            105.0,
            69.0,
            22.0
          ],
          "text": "getrect"
        }
      },
      {
        "box": {
          "id": "obj-52",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "patching_rect": [
            1050.0,
            135.0,
            90.0,
            22.0
          ],
          "text": "route rect"
        }
      },
      {
        "box": {
          "id": "obj-53",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1050.0,
            165.0,
            167.0,
            22.0
          ],
          "text": "prepend setwindowsize"
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
          "code": "--- CLAUDE2MAX SPEC ---\n{\n  \"name\": \"Improvised Ensemble Sequencer v2\",\n  \"width\": 1402,\n  \"height\": 826,\n  \"objects\": {\n    \"title\": {\n      \"type\": \"comment\",\n      \"text\": \"IMPROVISED ENSEMBLE SEQUENCER v2\",\n      \"pos\": [\n        20,\n        12\n      ],\n      \"attrs\": {\n        \"fontsize\": 14\n      },\n      \"presentation\": true,\n      \"presentation_rect\": [\n        15,\n        10,\n        690,\n        22\n      ]\n    },\n    \"lbl_setup\": {\n      \"type\": \"comment\",\n      \"text\": \"\\u2500\\u2500 SETUP \\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\",\n      \"pos\": [\n        20,\n        34\n      ]\n    },\n    \"lbl_col_name\": {\n      \"type\": \"comment\",\n      \"text\": \"Name\",\n      \"pos\": [\n        25,\n        57\n      ],\n      \"presentation\": true,\n      \"presentation_rect\": [\n        15,\n        40,\n        120,\n        14\n      ]\n    },\n    \"lbl_col_nsd\": {\n      \"type\": \"comment\",\n      \"text\": \"No Solo Dance\",\n      \"pos\": [\n        182,\n        57\n      ],\n      \"presentation\": true,\n      \"presentation_rect\": [\n        145,\n        40,\n        108,\n        14\n      ]\n    },\n    \"lbl_col_nsm\": {\n      \"type\": \"comment\",\n      \"text\": \"No Solo Music\",\n      \"pos\": [\n        295,\n        57\n      ],\n      \"presentation\": true,\n      \"presentation_rect\": [\n        260,\n        40,\n        100,\n        14\n      ]\n    },\n    \"dump\": {\n      \"type\": \"message\",\n      \"text\": \"dump\",\n      \"pos\": [\n        250,\n        125\n      ]\n    },\n    \"clear\": {\n      \"type\": \"message\",\n      \"text\": \"clear\",\n      \"pos\": [\n        261,\n        248\n      ]\n    },\n    \"capture\": {\n      \"type\": \"newobj\",\n      \"text\": \"capture\",\n      \"pos\": [\n        253,\n        316\n      ]\n    },\n    \"print\": {\n      \"type\": \"newobj\",\n      \"text\": \"print CB\",\n      \"pos\": [\n        58,\n        316\n      ]\n    },\n    \"lbl_maxgroup\": {\n      \"type\": \"comment\",\n      \"text\": \"Max group size (per side)\",\n      \"pos\": [\n        430,\n        57\n      ],\n      \"presentation\": true,\n      \"presentation_rect\": [\n        15,\n        228,\n        185,\n        14\n      ]\n    },\n    \"num_maxgroup\": {\n      \"type\": \"number\",\n      \"pos\": [\n        430,\n        75\n      ],\n      \"size\": [\n        65,\n        22\n      ],\n      \"attrs\": {\n        \"minimum\": 1,\n        \"maximum\": 20\n      },\n      \"presentation\": true,\n      \"presentation_rect\": [\n        255,\n        225,\n        55,\n        22\n      ]\n    },\n    \"loadmess\": {\n      \"type\": \"newobj\",\n      \"text\": \"loadmess 3\",\n      \"pos\": [\n        583,\n        56\n      ]\n    },\n    \"msg_setmaxgroup\": {\n      \"type\": \"message\",\n      \"text\": \"setmaxgroup $1\",\n      \"pos\": [\n        430,\n        105\n      ]\n    },\n    \"lbl_duration\": {\n      \"type\": \"comment\",\n      \"text\": \"Total duration (minutes)\",\n      \"pos\": [\n        430,\n        135\n      ],\n      \"presentation\": true,\n      \"presentation_rect\": [\n        15,\n        258,\n        185,\n        14\n      ]\n    },\n    \"num_duration\": {\n      \"type\": \"number\",\n      \"pos\": [\n        430,\n        153\n      ],\n      \"size\": [\n        65,\n        22\n      ],\n      \"attrs\": {\n        \"minimum\": 1,\n        \"maximum\": 480\n      },\n      \"presentation\": true,\n      \"presentation_rect\": [\n        255,\n        255,\n        55,\n        22\n      ]\n    },\n    \"loadmess_2\": {\n      \"type\": \"newobj\",\n      \"text\": \"loadmess 10\",\n      \"pos\": [\n        583,\n        134\n      ]\n    },\n    \"msg_setduration\": {\n      \"type\": \"message\",\n      \"text\": \"setduration $1\",\n      \"pos\": [\n        430,\n        183\n      ]\n    },\n    \"lbl_gen\": {\n      \"type\": \"comment\",\n      \"text\": \"Generate Permutations\",\n      \"pos\": [\n        335,\n        213\n      ],\n      \"presentation\": true,\n      \"presentation_rect\": [\n        44,\n        295,\n        150,\n        16\n      ]\n    },\n    \"btn_generate\": {\n      \"type\": \"button\",\n      \"pos\": [\n        335,\n        231\n      ],\n      \"presentation\": true,\n      \"presentation_rect\": [\n        15,\n        292,\n        24,\n        24\n      ]\n    },\n    \"msg_generate\": {\n      \"type\": \"message\",\n      \"text\": \"generate\",\n      \"pos\": [\n        335,\n        259\n      ]\n    },\n    \"lbl_reset\": {\n      \"type\": \"comment\",\n      \"text\": \"Reset\",\n      \"pos\": [\n        478,\n        213\n      ],\n      \"presentation\": true,\n      \"presentation_rect\": [\n        214,\n        295,\n        60,\n        16\n      ]\n    },\n    \"btn_reset\": {\n      \"type\": \"button\",\n      \"pos\": [\n        478,\n        231\n      ],\n      \"presentation\": true,\n      \"presentation_rect\": [\n        185,\n        292,\n        24,\n        24\n      ]\n    },\n    \"msg_reset\": {\n      \"type\": \"message\",\n      \"text\": \"reset\",\n      \"pos\": [\n        478,\n        259\n      ]\n    },\n    \"prep_status\": {\n      \"type\": \"newobj\",\n      \"text\": \"print STATUS\",\n      \"pos\": [\n        791,\n        293\n      ]\n    },\n    \"brain\": {\n      \"type\": \"newobj\",\n      \"text\": \"v8 ensemble-v2.js\",\n      \"pos\": [\n        706,\n        176\n      ],\n      \"inlets\": 1,\n      \"outlets\": 6,\n      \"outlettype\": [\n        \"\",\n        \"int\",\n        \"\",\n        \"\",\n        \"bang\",\n        \"\"\n      ]\n    },\n    \"display_brain\": {\n      \"type\": \"newobj\",\n      \"text\": \"v8 display.js\",\n      \"pos\": [\n        706,\n        260\n      ],\n      \"inlets\": 2,\n      \"outlets\": 1,\n      \"outlettype\": [\n        \"\"\n      ]\n    },\n    \"lbl_perf\": {\n      \"type\": \"comment\",\n      \"text\": \"\\u2500\\u2500 PERFORMANCE \\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\",\n      \"pos\": [\n        20,\n        348\n      ]\n    },\n    \"lbl_musicians\": {\n      \"type\": \"comment\",\n      \"text\": \"MUSICIANS\",\n      \"pos\": [\n        20,\n        368\n      ],\n      \"attrs\": {\n        \"fontsize\": 18\n      }\n    },\n    \"lbl_dancers\": {\n      \"type\": \"comment\",\n      \"text\": \"DANCERS\",\n      \"pos\": [\n        775,\n        368\n      ],\n      \"attrs\": {\n        \"fontsize\": 18\n      }\n    },\n    \"lbl_next\": {\n      \"type\": \"comment\",\n      \"text\": \"NEXT TO MOVE:\",\n      \"pos\": [\n        440,\n        368\n      ],\n      \"attrs\": {\n        \"fontsize\": 12\n      },\n      \"presentation\": true,\n      \"presentation_rect\": [\n        375,\n        40,\n        330,\n        16\n      ]\n    },\n    \"msg_next\": {\n      \"type\": \"message\",\n      \"text\": \"---\",\n      \"pos\": [\n        440,\n        388\n      ],\n      \"size\": [\n        310,\n        70\n      ],\n      \"attrs\": {\n        \"bgcolor\": [\n          1.0,\n          0.82,\n          0.0,\n          1.0\n        ],\n        \"textcolor\": [\n          0.0,\n          0.0,\n          0.0,\n          1.0\n        ],\n        \"fontsize\": 15\n      },\n      \"presentation\": true,\n      \"presentation_rect\": [\n        375,\n        60,\n        330,\n        100\n      ]\n    },\n    \"prep_next\": {\n      \"type\": \"newobj\",\n      \"text\": \"prepend set\",\n      \"pos\": [\n        440,\n        468\n      ]\n    },\n    \"lbl_countdown\": {\n      \"type\": \"comment\",\n      \"text\": \"Countdown (seconds)\",\n      \"pos\": [\n        440,\n        504\n      ],\n      \"presentation\": true,\n      \"presentation_rect\": [\n        375,\n        175,\n        330,\n        14\n      ]\n    },\n    \"num_countdown\": {\n      \"type\": \"number\",\n      \"pos\": [\n        440,\n        522\n      ],\n      \"size\": [\n        140,\n        50\n      ],\n      \"attrs\": {\n        \"fontsize\": 24\n      },\n      \"presentation\": true,\n      \"presentation_rect\": [\n        375,\n        193,\n        330,\n        110\n      ]\n    },\n    \"lbl_run\": {\n      \"type\": \"comment\",\n      \"text\": \"Run\",\n      \"pos\": [\n        440,\n        584\n      ],\n      \"presentation\": true,\n      \"presentation_rect\": [\n        375,\n        324,\n        36,\n        14\n      ]\n    },\n    \"tog_run\": {\n      \"type\": \"toggle\",\n      \"pos\": [\n        440,\n        602\n      ],\n      \"presentation\": true,\n      \"presentation_rect\": [\n        375,\n        341,\n        24,\n        24\n      ]\n    },\n    \"metro_tick\": {\n      \"type\": \"newobj\",\n      \"text\": \"metro 1000\",\n      \"pos\": [\n        440,\n        634\n      ]\n    },\n    \"msg_tick\": {\n      \"type\": \"message\",\n      \"text\": \"tick\",\n      \"pos\": [\n        440,\n        666\n      ]\n    },\n    \"lbl_advance\": {\n      \"type\": \"comment\",\n      \"text\": \"Manual Advance\",\n      \"pos\": [\n        480,\n        704\n      ],\n      \"presentation\": true,\n      \"presentation_rect\": [\n        415,\n        324,\n        120,\n        14\n      ]\n    },\n    \"btn_advance\": {\n      \"type\": \"button\",\n      \"pos\": [\n        440,\n        720\n      ],\n      \"presentation\": true,\n      \"presentation_rect\": [\n        415,\n        341,\n        24,\n        24\n      ]\n    },\n    \"lbl_complete\": {\n      \"type\": \"comment\",\n      \"text\": \"Done!\",\n      \"pos\": [\n        480,\n        756\n      ],\n      \"presentation\": true,\n      \"presentation_rect\": [\n        463,\n        324,\n        50,\n        14\n      ]\n    },\n    \"btn_complete\": {\n      \"type\": \"button\",\n      \"pos\": [\n        440,\n        773\n      ],\n      \"presentation\": true,\n      \"presentation_rect\": [\n        463,\n        341,\n        24,\n        24\n      ]\n    },\n    \"jit_world\": {\n      \"type\": \"newobj\",\n      \"text\": \"jit.world PERFORMANCE @enable 1 @floating 1\",\n      \"pos\": [\n        866,\n        33\n      ],\n      \"inlets\": 1,\n      \"outlets\": 3,\n      \"outlettype\": [\n        \"\",\n        \"bang\",\n        \"\"\n      ]\n    },\n    \"poly\": {\n      \"type\": \"newobj\",\n      \"text\": \"poly~ textpoly 15\",\n      \"pos\": [\n        876,\n        200\n      ],\n      \"inlets\": 1,\n      \"outlets\": 0\n    },\n    \"lb_init\": {\n      \"type\": \"newobj\",\n      \"text\": \"loadbang\",\n      \"pos\": [\n        583,\n        180\n      ]\n    },\n    \"msg_init\": {\n      \"type\": \"message\",\n      \"text\": \"init\",\n      \"pos\": [\n        583,\n        210\n      ]\n    },\n    \"lm_metro\": {\n      \"type\": \"newobj\",\n      \"text\": \"loadmess 1\",\n      \"pos\": [\n        1050,\n        50\n      ]\n    },\n    \"metro_size\": {\n      \"type\": \"newobj\",\n      \"text\": \"metro 500\",\n      \"pos\": [\n        1050,\n        75\n      ]\n    },\n    \"msg_getsize\": {\n      \"type\": \"message\",\n      \"text\": \"getrect\",\n      \"pos\": [\n        1050,\n        105\n      ]\n    },\n    \"route_size\": {\n      \"type\": \"newobj\",\n      \"text\": \"route rect\",\n      \"pos\": [\n        1050,\n        135\n      ],\n      \"inlets\": 1,\n      \"outlets\": 2\n    },\n    \"prep_size\": {\n      \"type\": \"newobj\",\n      \"text\": \"prepend setwindowsize\",\n      \"pos\": [\n        1050,\n        165\n      ]\n    },\n    \"jit_cellblock_2\": {\n      \"type\": \"jit.cellblock\",\n      \"pos\": [\n        20,\n        87\n      ],\n      \"size\": [\n        200,\n        200\n      ],\n      \"presentation\": [\n        15,\n        54,\n        301,\n        142\n      ]\n    }\n  },\n  \"connections\": [\n    [\n      \"num_maxgroup\",\n      0,\n      \"msg_setmaxgroup\",\n      0\n    ],\n    [\n      \"loadmess\",\n      0,\n      \"num_maxgroup\",\n      0\n    ],\n    [\n      \"msg_setmaxgroup\",\n      0,\n      \"brain\",\n      0\n    ],\n    [\n      \"num_duration\",\n      0,\n      \"msg_setduration\",\n      0\n    ],\n    [\n      \"loadmess_2\",\n      0,\n      \"num_duration\",\n      0\n    ],\n    [\n      \"msg_setduration\",\n      0,\n      \"brain\",\n      0\n    ],\n    [\n      \"btn_generate\",\n      0,\n      \"msg_generate\",\n      0\n    ],\n    [\n      \"msg_generate\",\n      0,\n      \"brain\",\n      0\n    ],\n    [\n      \"btn_reset\",\n      0,\n      \"msg_reset\",\n      0\n    ],\n    [\n      \"msg_reset\",\n      0,\n      \"brain\",\n      0\n    ],\n    [\n      \"brain\",\n      3,\n      \"prep_status\",\n      0\n    ],\n    [\n      \"brain\",\n      1,\n      \"display_brain\",\n      0\n    ],\n    [\n      \"brain\",\n      0,\n      \"display_brain\",\n      0\n    ],\n    [\n      \"brain\",\n      2,\n      \"prep_next\",\n      0\n    ],\n    [\n      \"brain\",\n      1,\n      \"num_countdown\",\n      0\n    ],\n    [\n      \"brain\",\n      4,\n      \"btn_complete\",\n      0\n    ],\n    [\n      \"brain\",\n      5,\n      \"jit_cellblock_2\",\n      0\n    ],\n    [\n      \"display_brain\",\n      0,\n      \"poly\",\n      0\n    ],\n    [\n      \"prep_next\",\n      0,\n      \"msg_next\",\n      0\n    ],\n    [\n      \"tog_run\",\n      0,\n      \"metro_tick\",\n      0\n    ],\n    [\n      \"metro_tick\",\n      0,\n      \"msg_tick\",\n      0\n    ],\n    [\n      \"msg_tick\",\n      0,\n      \"brain\",\n      0\n    ],\n    [\n      \"btn_advance\",\n      0,\n      \"brain\",\n      0\n    ],\n    [\n      \"jit_world\",\n      1,\n      \"display_brain\",\n      1\n    ],\n    [\n      \"jit_world\",\n      2,\n      \"route_size\",\n      0\n    ],\n    [\n      \"lb_init\",\n      0,\n      \"msg_init\",\n      0\n    ],\n    [\n      \"msg_init\",\n      0,\n      \"brain\",\n      0\n    ],\n    [\n      \"lm_metro\",\n      0,\n      \"metro_size\",\n      0\n    ],\n    [\n      \"metro_size\",\n      0,\n      \"msg_getsize\",\n      0\n    ],\n    [\n      \"msg_getsize\",\n      0,\n      \"jit_world\",\n      0\n    ],\n    [\n      \"route_size\",\n      0,\n      \"prep_size\",\n      0\n    ],\n    [\n      \"prep_size\",\n      0,\n      \"display_brain\",\n      0\n    ],\n    [\n      \"jit_cellblock_2\",\n      0,\n      \"capture\",\n      0\n    ],\n    [\n      \"jit_cellblock_2\",\n      0,\n      \"print\",\n      0\n    ],\n    [\n      \"jit_cellblock_2\",\n      0,\n      \"brain\",\n      0\n    ],\n    [\n      \"dump\",\n      0,\n      \"jit_cellblock_2\",\n      0\n    ],\n    [\n      \"clear\",\n      0,\n      \"capture\",\n      0\n    ]\n  ]\n}\n--- END SPEC ---",
          "fontsize": 9.0,
          "hidden": 1
        }
      }
    ],
    "lines": [
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
          "source": [
            "obj-14",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-27",
            0
          ],
          "source": [
            "obj-15",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-19",
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
            "obj-17",
            0
          ],
          "source": [
            "obj-18",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-27",
            0
          ],
          "source": [
            "obj-19",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-22",
            0
          ],
          "source": [
            "obj-21",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-27",
            0
          ],
          "source": [
            "obj-22",
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
          "source": [
            "obj-24",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-27",
            0
          ],
          "source": [
            "obj-25",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-26",
            0
          ],
          "source": [
            "obj-27",
            3
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-28",
            0
          ],
          "order": 0,
          "source": [
            "obj-27",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-28",
            0
          ],
          "source": [
            "obj-27",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-34",
            0
          ],
          "source": [
            "obj-27",
            2
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-36",
            0
          ],
          "order": 1,
          "source": [
            "obj-27",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-44",
            0
          ],
          "source": [
            "obj-27",
            4
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
            "obj-27",
            5
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-46",
            0
          ],
          "source": [
            "obj-28",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-33",
            0
          ],
          "source": [
            "obj-34",
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
            "obj-40",
            0
          ],
          "source": [
            "obj-39",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-27",
            0
          ],
          "source": [
            "obj-40",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-27",
            0
          ],
          "source": [
            "obj-42",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-28",
            1
          ],
          "source": [
            "obj-45",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-52",
            0
          ],
          "source": [
            "obj-45",
            2
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-48",
            0
          ],
          "source": [
            "obj-47",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-27",
            0
          ],
          "source": [
            "obj-48",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-50",
            0
          ],
          "source": [
            "obj-49",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-51",
            0
          ],
          "source": [
            "obj-50",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-45",
            0
          ],
          "source": [
            "obj-51",
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
          "source": [
            "obj-52",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-28",
            0
          ],
          "source": [
            "obj-53",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-10",
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
            "obj-11",
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
            "obj-27",
            0
          ],
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
            "obj-7",
            0
          ],
          "source": [
            "obj-8",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-10",
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
