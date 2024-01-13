return {
  version = "1.10",
  luaversion = "5.1",
  tiledversion = "1.10.2",
  class = "",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 24,
  height = 12,
  tilewidth = 40,
  tileheight = 40,
  nextlayerid = 18,
  nextobjectid = 239,
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
      filename = "../../../tilesets/ruins1.tsx"
    },
    {
      name = "ruins2",
      firstgid = 153,
      filename = "../../../tilesets/ruins2.tsx"
    },
    {
      name = "ruins3",
      firstgid = 249,
      filename = "../../../tilesets/ruins3.tsx"
    },
    {
      name = "ruins4",
      firstgid = 321,
      filename = "../../../tilesets/ruins4.tsx"
    },
    {
      name = "ruins5",
      firstgid = 361,
      filename = "../../../tilesets/ruins5.tsx"
    },
    {
      name = "objects",
      firstgid = 489,
      filename = "../../../tilesets/objects.tsx",
      exportfilename = "../../../tilesets/objects.lua"
    }
  },
  layers = {
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 24,
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
        0, 0, 30, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 31, 0,
        23, 23, 24, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 22, 23,
        3, 3, 5, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 2, 3,
        3, 3, 5, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 2, 3,
        11, 11, 13, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 120, 17, 17, 17, 17, 17, 17, 10, 11,
        9, 9, 9, 9, 26, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 120, 17, 17, 17, 17, 17, 25, 9, 9,
        9, 9, 9, 9, 34, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 120, 17, 17, 17, 17, 17, 33, 9, 9,
        7, 7, 8, 17, 17, 17, 17, 17, 17, 249, 249, 249, 120, 17, 17, 120, 17, 17, 17, 17, 17, 17, 6, 7,
        0, 0, 16, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 120, 17, 17, 17, 17, 17, 17, 14, 0,
        0, 0, 16, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 120, 17, 17, 17, 17, 17, 17, 14, 0,
        0, 0, 38, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 39, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 24,
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
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 87, 0, 0, 0, 0, 87, 0, 0, 0, 0, 0, 0, 0, 87, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 87, 0, 301, 0, 0, 87, 0, 0, 0, 0, 0, 0, 0, 87, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 87, 0, 0, 0, 0, 87, 0, 0, 0, 0, 0, 0, 0, 87, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 24,
      height = 12,
      id = 13,
      name = "Tile Layer 3",
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
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 15,
      name = "objects_deco",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {}
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
          id = 222,
          name = "",
          type = "",
          shape = "rectangle",
          x = 480,
          y = 280,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 235,
          name = "",
          type = "",
          shape = "polygon",
          x = 0,
          y = 280,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 120, y = 0 },
            { x = 120, y = 120 },
            { x = 880, y = 120 },
            { x = 880, y = 0 },
            { x = 960, y = 0 },
            { x = 960, y = 40 },
            { x = 920, y = 40 },
            { x = 920, y = 160 },
            { x = 80, y = 160 },
            { x = 80, y = 40 },
            { x = 0, y = 40 },
            { x = 0, y = 0 }
          },
          properties = {}
        },
        {
          id = 236,
          name = "",
          type = "",
          shape = "polygon",
          x = 0,
          y = 200,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 120, y = 0 },
            { x = 120, y = -40 },
            { x = 880, y = -40 },
            { x = 880, y = 0 },
            { x = 960, y = 0 },
            { x = 960, y = -80 },
            { x = 0, y = -80 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 16,
      name = "blockcollision",
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
          id = 212,
          name = "",
          type = "",
          shape = "polyline",
          x = 360,
          y = 280,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 160, y = 0 },
            { x = 160, y = 40 },
            { x = 0, y = 40 }
          },
          properties = {}
        },
        {
          id = 213,
          name = "",
          type = "",
          shape = "polyline",
          x = 360,
          y = 280,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = 40 }
          },
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
          id = 216,
          name = "pushable",
          type = "",
          shape = "rectangle",
          x = 360,
          y = 280,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["flagcheck"] = "!#ruins.rock_puzzle_a",
            ["sprite"] = "objects/rock"
          }
        },
        {
          id = 217,
          name = "tilebutton",
          type = "",
          shape = "rectangle",
          x = 500,
          y = 280,
          width = 20,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["blocks"] = true,
            ["cutscene"] = "undertale.ruins_10_rock_push_puzzle",
            ["group"] = "ruins_rockbutton1",
            ["once"] = true,
            ["sprite"] = ""
          }
        },
        {
          id = 218,
          name = "spikes",
          type = "",
          shape = "rectangle",
          x = 600,
          y = 160,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default"] = true,
            ["flag"] = "#ruins.rock_puzzle_a",
            ["spikedeath"] = false,
            ["walkthrough"] = false
          }
        },
        {
          id = 225,
          name = "spikes",
          type = "",
          shape = "rectangle",
          x = 600,
          y = 240,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default"] = true,
            ["flag"] = "#ruins.rock_puzzle_a",
            ["spikedeath"] = false,
            ["walkthrough"] = false
          }
        },
        {
          id = 227,
          name = "spikes",
          type = "",
          shape = "rectangle",
          x = 600,
          y = 320,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default"] = true,
            ["flag"] = "#ruins.rock_puzzle_a",
            ["spikedeath"] = false,
            ["walkthrough"] = false
          }
        },
        {
          id = 223,
          name = "spikes",
          type = "",
          shape = "rectangle",
          x = 600,
          y = 200,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default"] = true,
            ["flag"] = "#ruins.rock_puzzle_a",
            ["spikedeath"] = false,
            ["walkthrough"] = false
          }
        },
        {
          id = 224,
          name = "spikes",
          type = "",
          shape = "rectangle",
          x = 600,
          y = 280,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default"] = true,
            ["flag"] = "#ruins.rock_puzzle_a",
            ["spikedeath"] = false,
            ["walkthrough"] = false
          }
        },
        {
          id = 226,
          name = "spikes",
          type = "",
          shape = "rectangle",
          x = 600,
          y = 360,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default"] = true,
            ["flag"] = "#ruins.rock_puzzle_a",
            ["spikedeath"] = false,
            ["walkthrough"] = false
          }
        },
        {
          id = 219,
          name = "ROCK",
          type = "",
          shape = "rectangle",
          x = 480,
          y = 320,
          width = 40,
          height = 40,
          rotation = 0,
          gid = 518,
          visible = true,
          properties = {}
        },
        {
          id = 238,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 320,
          y = 120,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["solid"] = true,
            ["text1"] = "* Three out of four grey rocks\nrecommend you die."
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
      objects = {}
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 17,
      name = "controllers",
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
          id = 220,
          name = "toggle",
          type = "",
          shape = "point",
          x = 449.252,
          y = 240.831,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {
            ["flag"] = "#ruins.rock_puzzle_a",
            ["target1"] = { id = 219 },
            ["target2"] = { id = 222 },
            ["value"] = false
          }
        }
      }
    }
  }
}
