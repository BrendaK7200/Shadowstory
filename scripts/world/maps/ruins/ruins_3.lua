return {
  version = "1.10",
  luaversion = "5.1",
  tiledversion = "1.10.2",
  class = "",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 37,
  height = 12,
  tilewidth = 40,
  tileheight = 40,
  nextlayerid = 15,
  nextobjectid = 180,
  properties = {
    ["border"] = "undertale/ruins",
    ["light"] = true,
    ["music"] = "ruins",
    ["name"] = "Ruins"
  },
  tilesets = {
    {
      name = "ruins1",
      firstgid = 1,
      filename = "../../tilesets/ruins1.tsx"
    },
    {
      name = "ruins2",
      firstgid = 153,
      filename = "../../tilesets/ruins2.tsx"
    },
    {
      name = "ruins3",
      firstgid = 249,
      filename = "../../tilesets/ruins3.tsx"
    },
    {
      name = "ruins4",
      firstgid = 321,
      filename = "../../tilesets/ruins4.tsx"
    },
    {
      name = "ruins5",
      firstgid = 361,
      filename = "../../tilesets/ruins5.tsx"
    },
    {
      name = "objects",
      firstgid = 489,
      filename = "../../tilesets/objects.tsx",
      exportfilename = "../../tilesets/objects.lua"
    },
    {
      name = "fakewater",
      firstgid = 516,
      filename = "../../tilesets/fakewater.tsx",
      exportfilename = "../../tilesets/fakewater.lua"
    }
  },
  layers = {
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 37,
      height = 12,
      id = 1,
      name = "Tile Layer 1",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        143, 30, 151, 151, 151, 151, 151, 151, 151, 151, 151, 151, 151, 151, 151, 151, 151, 151, 151, 151, 151, 151, 151, 151, 151, 151, 151, 151, 151, 151, 151, 151, 151, 151, 151, 31, 143,
        143, 144, 322, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 324, 142, 143,
        143, 144, 322, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 324, 142, 143,
        143, 144, 330, 331, 331, 331, 331, 331, 331, 331, 331, 331, 331, 331, 331, 331, 331, 331, 331, 331, 331, 331, 331, 331, 331, 331, 331, 331, 331, 331, 331, 331, 331, 331, 332, 342, 343,
        143, 144, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 322, 323,
        143, 144, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 322, 323,
        143, 144, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 330, 331,
        143, 144, 265, 265, 265, 265, 273, 257, 257, 257, 257, 257, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 337, 337, 337,
        143, 144, 265, 265, 265, 265, 257, 257, 257, 257, 257, 257, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 337, 337,
        143, 144, 265, 265, 265, 265, 257, 257, 275, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 142, 143,
        143, 144, 265, 265, 265, 265, 257, 257, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 265, 142, 143,
        143, 38, 135, 135, 135, 256, 9, 9, 254, 135, 135, 135, 135, 135, 135, 135, 135, 135, 135, 135, 135, 135, 135, 135, 135, 135, 135, 135, 135, 135, 135, 135, 135, 135, 135, 39, 143
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 37,
      height = 12,
      id = 12,
      name = "Tile Layer 2",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 87, 0, 0, 87, 0, 0, 0, 0, 93, 96, 0, 0, 0, 0, 0, 87, 0, 0, 0, 0, 87, 0, 0, 0, 0, 93, 94, 96, 0, 0,
        0, 0, 0, 0, 0, 301, 0, 87, 0, 0, 87, 0, 0, 0, 0, 93, 96, 0, 0, 0, 0, 0, 87, 0, 0, 0, 0, 87, 0, 0, 0, 0, 93, 94, 96, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 87, 0, 0, 87, 0, 68, 70, 0, 93, 96, 0, 0, 0, 0, 0, 87, 0, 68, 70, 0, 87, 0, 0, 0, 0, 93, 94, 96, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 519, 525, 0, 0, 0, 0, 0, 396, 0, 0, 0, 0, 519, 525, 0, 0, 0, 396, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 516, 528, 0, 0, 0, 0, 0, 329, 0, 0, 0, 0, 516, 528, 0, 0, 0, 329, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 516, 528, 0, 0, 0, 0, 356, 329, 355, 0, 0, 0, 516, 528, 0, 0, 356, 329, 355, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 73, 73, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 73, 73, 9, 9, 9, 9, 9, 9, 2684354889, 2684354889, 2684354889, 2684354889, 2684354889,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 74, 74, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 74, 74, 9, 9, 9, 9, 9, 9, 2684354889, 2684354889, 2684354889, 2684354889, 2684354889,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 516, 528, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 516, 528, 0, 0, 0, 0, 0, 0, 0, 0, 0, 326, 327,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 516, 528, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 516, 528, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 14,
      name = "objects_misc",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 153,
          name = "spikes",
          type = "",
          shape = "rectangle",
          x = 1400,
          y = 280,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default"] = true,
            ["flag"] = "completedRuinsRoom3Puzzle",
            ["spikedeath"] = false,
            ["walkthrough"] = true
          }
        },
        {
          id = 154,
          name = "spikes",
          type = "",
          shape = "rectangle",
          x = 1400,
          y = 320,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default"] = true,
            ["flag"] = "completedRuinsRoom3Puzzle",
            ["spikedeath"] = false,
            ["walkthrough"] = false
          }
        },
        {
          id = 155,
          name = "lever",
          type = "",
          shape = "rectangle",
          x = 776,
          y = 140,
          width = 14,
          height = 30,
          rotation = 0,
          gid = 509,
          visible = true,
          properties = {}
        },
        {
          id = 158,
          name = "lever_b",
          type = "",
          shape = "rectangle",
          x = 1176,
          y = 140,
          width = 14,
          height = 30,
          rotation = 0,
          gid = 509,
          visible = true,
          properties = {}
        },
        {
          id = 159,
          name = "lever_f",
          type = "",
          shape = "rectangle",
          x = 1252,
          y = 140,
          width = 14,
          height = 30,
          rotation = 0,
          gid = 509,
          visible = true,
          properties = {}
        },
        {
          id = 156,
          name = "",
          type = "",
          shape = "rectangle",
          x = 714,
          y = 144,
          width = 74,
          height = 54,
          rotation = 0,
          gid = 511,
          visible = true,
          properties = {}
        },
        {
          id = 157,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1114,
          y = 144,
          width = 74,
          height = 54,
          rotation = 0,
          gid = 511,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 4,
      name = "collision",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 122,
          name = "",
          type = "",
          shape = "rectangle",
          x = 40,
          y = 440,
          width = 200,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 126,
          name = "",
          type = "",
          shape = "rectangle",
          x = 320,
          y = 440,
          width = 1080,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 128,
          name = "",
          type = "",
          shape = "rectangle",
          x = 480,
          y = 160,
          width = 80,
          height = 120,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 129,
          name = "",
          type = "",
          shape = "rectangle",
          x = 480,
          y = 360,
          width = 80,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 130,
          name = "",
          type = "",
          shape = "rectangle",
          x = 960,
          y = 360,
          width = 80,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 131,
          name = "",
          type = "",
          shape = "rectangle",
          x = 960,
          y = 160,
          width = 80,
          height = 120,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 140,
          name = "",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 120,
          width = 120,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 144,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1400,
          y = 160,
          width = 40,
          height = 120,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 145,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1440,
          y = 240,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 146,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1400,
          y = 360,
          width = 40,
          height = 120,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 147,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1440,
          y = 360,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 161,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1200,
          y = 120,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 162,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1280,
          y = 120,
          width = 120,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 167,
          name = "",
          type = "",
          shape = "rectangle",
          x = 240,
          y = 120,
          width = 470,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 168,
          name = "",
          type = "",
          shape = "rectangle",
          x = 800,
          y = 120,
          width = 310,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 179,
          name = "",
          type = "",
          shape = "rectangle",
          x = 40,
          y = 160,
          width = 40,
          height = 280,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 7,
      name = "objects",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 133,
          name = "transition",
          type = "",
          shape = "rectangle",
          x = 240,
          y = 460,
          width = 80,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["facing"] = "down",
            ["map"] = "ruins/ruins_2",
            ["marker"] = "entrydown"
          }
        },
        {
          id = 134,
          name = "",
          type = "",
          shape = "rectangle",
          x = 260,
          y = 280,
          width = 40,
          height = 40,
          rotation = 0,
          gid = 489,
          visible = true,
          properties = {}
        },
        {
          id = 138,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 200,
          y = 120,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["solid"] = true,
            ["text1"] = "* Stay on the path."
          }
        },
        {
          id = 136,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 260,
          y = 247.999,
          width = 40,
          height = 32.0011,
          rotation = 0,
          visible = true,
          properties = {
            ["solid"] = true,
            ["text1"] = "* \"Press [Z] to read signs!\""
          }
        },
        {
          id = 148,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 760,
          y = 120,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["cutscene"] = "undertale.ruins_3_press_switch_1",
            ["once"] = false,
            ["solid"] = true
          }
        },
        {
          id = 149,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 1160,
          y = 120,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["cutscene"] = "undertale.ruins_3_press_switch_2",
            ["once"] = false,
            ["solid"] = true
          }
        },
        {
          id = 160,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 1240,
          y = 120,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["cutscene"] = "undertale.ruins_3_press_switch_3",
            ["once"] = false,
            ["solid"] = true
          }
        },
        {
          id = 165,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 710,
          y = 120,
          width = 50,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["solid"] = true,
            ["text1"] = "* Please press this switch.\n\n          - TORIEL"
          }
        },
        {
          id = 166,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 1110,
          y = 120,
          width = 50,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["solid"] = true,
            ["text1"] = "* Please press this switch\ntoo.\n           - TORIEL"
          }
        },
        {
          id = 170,
          name = "transition",
          type = "",
          shape = "rectangle",
          x = 1440,
          y = 280,
          width = 40,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {
            ["facing"] = "right",
            ["map"] = "ruins/ruins_4",
            ["marker"] = "entryright"
          }
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 2,
      name = "markers",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 142,
          name = "entryup",
          type = "",
          shape = "point",
          x = 280,
          y = 440,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 143,
          name = "spawn",
          type = "",
          shape = "point",
          x = 280,
          y = 400,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 172,
          name = "entryleft",
          type = "",
          shape = "point",
          x = 1420,
          y = 320,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
