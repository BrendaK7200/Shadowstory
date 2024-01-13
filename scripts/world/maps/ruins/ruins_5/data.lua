return {
  version = "1.10",
  luaversion = "5.1",
  tiledversion = "1.10.2",
  class = "",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 60,
  height = 12,
  tilewidth = 40,
  tileheight = 40,
  nextlayerid = 17,
  nextobjectid = 298,
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
    },
    {
      name = "fakewater",
      firstgid = 516,
      filename = "../../../tilesets/fakewater.tsx",
      exportfilename = "../../../tilesets/fakewater.lua"
    }
  },
  layers = {
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 60,
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
        0, 350, 343, 343, 343, 343, 343, 343, 343, 343, 343, 343, 343, 343, 343, 343, 343, 343, 343, 343, 351, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 350, 343, 343, 343, 343, 343, 343, 343, 343, 343, 343, 343, 343, 343, 343, 343, 343, 343, 343, 351, 0,
        0, 336, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 334, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 336, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 342, 343,
        0, 336, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 342, 343, 343, 343, 343, 343, 351, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 336, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 323, 322, 323,
        0, 336, 331, 331, 331, 331, 331, 331, 331, 331, 331, 331, 331, 331, 331, 331, 331, 331, 331, 331, 322, 323, 323, 323, 323, 323, 334, 0, 0, 0, 0, 0, 0, 350, 343, 343, 343, 343, 343, 344, 68, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 70, 322, 323,
        0, 336, 337, 337, 337, 337, 337, 337, 337, 337, 337, 337, 337, 337, 337, 337, 337, 337, 337, 337, 322, 323, 323, 323, 323, 323, 342, 343, 343, 343, 343, 343, 343, 344, 323, 323, 323, 323, 323, 324, 519, 522, 522, 522, 522, 522, 522, 522, 522, 522, 522, 522, 522, 522, 522, 522, 522, 525, 330, 331,
        0, 336, 337, 337, 337, 337, 345, 329, 329, 329, 346, 337, 337, 337, 345, 329, 329, 329, 346, 337, 330, 331, 331, 331, 331, 331, 322, 323, 323, 323, 323, 323, 323, 324, 323, 323, 323, 323, 323, 324, 516, 88, 422, 422, 422, 422, 422, 422, 422, 422, 422, 422, 422, 422, 422, 422, 73, 73, 17, 17,
        0, 336, 337, 337, 337, 337, 329, 329, 329, 329, 329, 337, 337, 337, 329, 329, 329, 329, 354, 337, 337, 337, 337, 337, 337, 337, 322, 323, 323, 293, 294, 323, 323, 324, 331, 331, 331, 331, 331, 332, 516, 88, 422, 422, 422, 422, 422, 422, 422, 422, 422, 422, 422, 422, 422, 422, 74, 74, 17, 17,
        0, 336, 337, 337, 345, 329, 329, 329, 337, 329, 329, 329, 329, 329, 329, 329, 337, 337, 337, 337, 337, 337, 337, 337, 337, 337, 330, 331, 331, 331, 331, 331, 331, 332, 337, 337, 337, 337, 337, 337, 73, 73, 422, 422, 422, 422, 422, 422, 422, 422, 422, 422, 422, 422, 422, 422, 534, 537, 0, 0,
        0, 336, 337, 337, 353, 329, 329, 354, 337, 353, 329, 329, 329, 329, 329, 354, 337, 337, 337, 337, 326, 327, 327, 328, 337, 337, 337, 337, 337, 337, 337, 337, 337, 337, 337, 337, 337, 337, 337, 337, 74, 74, 422, 422, 422, 422, 422, 422, 422, 422, 422, 422, 422, 422, 422, 422, 88, 528, 0, 0,
        0, 336, 337, 337, 337, 337, 337, 337, 337, 337, 337, 337, 337, 337, 337, 337, 337, 337, 337, 337, 334, 0, 0, 336, 337, 337, 337, 337, 337, 337, 337, 337, 337, 337, 337, 337, 326, 327, 327, 328, 531, 534, 534, 534, 534, 534, 534, 534, 534, 534, 534, 534, 534, 534, 534, 534, 88, 528, 0, 0,
        0, 358, 327, 327, 327, 327, 328, 345, 346, 326, 327, 327, 327, 327, 327, 327, 327, 327, 327, 327, 359, 0, 0, 358, 327, 327, 327, 327, 327, 327, 327, 327, 327, 327, 327, 327, 359, 0, 0, 358, 327, 327, 327, 327, 327, 327, 327, 327, 327, 327, 327, 327, 327, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 336, 329, 329, 334, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 60,
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
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 93, 94, 95, 96, 0, 0, 0, 0, 0, 0, 93, 94, 95, 96, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 93, 94, 95, 96, 0, 0, 0, 0, 0, 0, 93, 94, 95, 96, 0, 0, 0, 0,
        0, 0, 0, 0, 93, 94, 95, 96, 0, 0, 0, 0, 0, 0, 93, 94, 95, 96, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 93, 94, 95, 96, 0, 0, 0, 0, 0, 0, 93, 94, 95, 96, 0, 0, 0, 0,
        0, 0, 0, 0, 93, 94, 95, 96, 0, 0, 0, 0, 0, 0, 93, 94, 95, 96, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 93, 94, 95, 96, 0, 0, 0, 0, 0, 0, 93, 94, 95, 96, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 120, 120, 120, 120, 120, 120, 120, 120, 120, 120, 120, 120, 120, 120, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 120, 120, 120, 120, 120, 120, 120, 120, 120, 120, 120, 120, 120, 120, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 120, 120, 120, 120, 120, 120, 120, 120, 120, 120, 120, 120, 120, 120, 0, 0, 326, 327,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 120, 120, 120, 120, 120, 120, 120, 120, 120, 120, 120, 120, 120, 120, 0, 0, 334, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 334, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 327, 327, 327, 327, 327, 359, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 60,
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
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
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
      objects = {
        {
          id = 193,
          name = "spikes",
          type = "",
          shape = "rectangle",
          x = 1680,
          y = 320,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default"] = true,
            ["walkthrough"] = true
          }
        },
        {
          id = 194,
          name = "spikes",
          type = "",
          shape = "rectangle",
          x = 1680,
          y = 280,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default"] = true,
            ["walkthrough"] = true
          }
        },
        {
          id = 195,
          name = "spikes",
          type = "",
          shape = "rectangle",
          x = 1720,
          y = 280,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default"] = true,
            ["walkthrough"] = true
          }
        },
        {
          id = 198,
          name = "spikes",
          type = "",
          shape = "rectangle",
          x = 1760,
          y = 280,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default"] = true,
            ["walkthrough"] = true
          }
        },
        {
          id = 200,
          name = "spikes",
          type = "",
          shape = "rectangle",
          x = 1800,
          y = 280,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default"] = true,
            ["walkthrough"] = true
          }
        },
        {
          id = 196,
          name = "spikes",
          type = "",
          shape = "rectangle",
          x = 1720,
          y = 320,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default"] = true,
            ["walkthrough"] = true
          }
        },
        {
          id = 197,
          name = "spikes",
          type = "",
          shape = "rectangle",
          x = 1760,
          y = 320,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default"] = true,
            ["walkthrough"] = true
          }
        },
        {
          id = 199,
          name = "spikes",
          type = "",
          shape = "rectangle",
          x = 1800,
          y = 320,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default"] = true,
            ["walkthrough"] = true
          }
        },
        {
          id = 201,
          name = "spikes",
          type = "",
          shape = "rectangle",
          x = 1760,
          y = 200,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default"] = true,
            ["walkthrough"] = true
          }
        },
        {
          id = 202,
          name = "spikes",
          type = "",
          shape = "rectangle",
          x = 1800,
          y = 200,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default"] = true,
            ["walkthrough"] = true
          }
        },
        {
          id = 203,
          name = "spikes",
          type = "",
          shape = "rectangle",
          x = 1760,
          y = 240,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default"] = true,
            ["walkthrough"] = true
          }
        },
        {
          id = 204,
          name = "spikes",
          type = "",
          shape = "rectangle",
          x = 1800,
          y = 240,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default"] = true,
            ["walkthrough"] = true
          }
        },
        {
          id = 205,
          name = "spikes",
          type = "",
          shape = "rectangle",
          x = 1840,
          y = 200,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default"] = true,
            ["walkthrough"] = true
          }
        },
        {
          id = 206,
          name = "spikes",
          type = "",
          shape = "rectangle",
          x = 1880,
          y = 200,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default"] = true,
            ["walkthrough"] = true
          }
        },
        {
          id = 212,
          name = "spikes",
          type = "",
          shape = "rectangle",
          x = 1880,
          y = 280,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default"] = true,
            ["walkthrough"] = true
          }
        },
        {
          id = 217,
          name = "spikes",
          type = "",
          shape = "rectangle",
          x = 1960,
          y = 280,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default"] = true,
            ["walkthrough"] = true
          }
        },
        {
          id = 221,
          name = "spikes",
          type = "",
          shape = "rectangle",
          x = 2040,
          y = 280,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default"] = true,
            ["walkthrough"] = true
          }
        },
        {
          id = 214,
          name = "spikes",
          type = "",
          shape = "rectangle",
          x = 1880,
          y = 320,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default"] = true,
            ["walkthrough"] = true
          }
        },
        {
          id = 215,
          name = "spikes",
          type = "",
          shape = "rectangle",
          x = 1960,
          y = 320,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default"] = true,
            ["walkthrough"] = true
          }
        },
        {
          id = 219,
          name = "spikes",
          type = "",
          shape = "rectangle",
          x = 2040,
          y = 320,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default"] = true,
            ["walkthrough"] = true
          }
        },
        {
          id = 207,
          name = "spikes",
          type = "",
          shape = "rectangle",
          x = 1840,
          y = 240,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default"] = true,
            ["walkthrough"] = true
          }
        },
        {
          id = 208,
          name = "spikes",
          type = "",
          shape = "rectangle",
          x = 1880,
          y = 240,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default"] = true,
            ["walkthrough"] = true
          }
        },
        {
          id = 209,
          name = "spikes",
          type = "",
          shape = "rectangle",
          x = 1920,
          y = 200,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default"] = true,
            ["walkthrough"] = true
          }
        },
        {
          id = 211,
          name = "spikes",
          type = "",
          shape = "rectangle",
          x = 1920,
          y = 280,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default"] = true,
            ["walkthrough"] = true
          }
        },
        {
          id = 218,
          name = "spikes",
          type = "",
          shape = "rectangle",
          x = 2000,
          y = 280,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default"] = true,
            ["walkthrough"] = true
          }
        },
        {
          id = 222,
          name = "spikes",
          type = "",
          shape = "rectangle",
          x = 2080,
          y = 280,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default"] = true,
            ["walkthrough"] = true
          }
        },
        {
          id = 228,
          name = "spikes",
          type = "",
          shape = "rectangle",
          x = 2080,
          y = 200,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default"] = true,
            ["walkthrough"] = true
          }
        },
        {
          id = 231,
          name = "spikes",
          type = "",
          shape = "rectangle",
          x = 2160,
          y = 200,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default"] = true,
            ["walkthrough"] = true
          }
        },
        {
          id = 224,
          name = "spikes",
          type = "",
          shape = "rectangle",
          x = 2120,
          y = 280,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default"] = true,
            ["walkthrough"] = true
          }
        },
        {
          id = 227,
          name = "spikes",
          type = "",
          shape = "rectangle",
          x = 2120,
          y = 200,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default"] = true,
            ["walkthrough"] = true
          }
        },
        {
          id = 232,
          name = "spikes",
          type = "",
          shape = "rectangle",
          x = 2200,
          y = 200,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default"] = true,
            ["walkthrough"] = true
          }
        },
        {
          id = 213,
          name = "spikes",
          type = "",
          shape = "rectangle",
          x = 1920,
          y = 320,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default"] = true,
            ["walkthrough"] = true
          }
        },
        {
          id = 216,
          name = "spikes",
          type = "",
          shape = "rectangle",
          x = 2000,
          y = 320,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default"] = true,
            ["walkthrough"] = true
          }
        },
        {
          id = 220,
          name = "spikes",
          type = "",
          shape = "rectangle",
          x = 2080,
          y = 320,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default"] = true,
            ["walkthrough"] = true
          }
        },
        {
          id = 226,
          name = "spikes",
          type = "",
          shape = "rectangle",
          x = 2080,
          y = 240,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default"] = true,
            ["walkthrough"] = true
          }
        },
        {
          id = 229,
          name = "spikes",
          type = "",
          shape = "rectangle",
          x = 2160,
          y = 240,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default"] = true,
            ["walkthrough"] = true
          }
        },
        {
          id = 223,
          name = "spikes",
          type = "",
          shape = "rectangle",
          x = 2120,
          y = 320,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default"] = true,
            ["walkthrough"] = true
          }
        },
        {
          id = 225,
          name = "spikes",
          type = "",
          shape = "rectangle",
          x = 2120,
          y = 240,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default"] = true,
            ["walkthrough"] = true
          }
        },
        {
          id = 230,
          name = "spikes",
          type = "",
          shape = "rectangle",
          x = 2200,
          y = 240,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default"] = true,
            ["walkthrough"] = true
          }
        },
        {
          id = 210,
          name = "spikes",
          type = "",
          shape = "rectangle",
          x = 1920,
          y = 240,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default"] = true,
            ["walkthrough"] = true
          }
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 16,
      name = "objects_deco2",
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
          id = 234,
          name = "spikes",
          type = "",
          shape = "rectangle",
          x = 1720,
          y = 200,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default"] = true,
            ["walkthrough"] = false
          }
        },
        {
          id = 241,
          name = "spikes",
          type = "",
          shape = "rectangle",
          x = 2000,
          y = 200,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default"] = true,
            ["walkthrough"] = false
          }
        },
        {
          id = 242,
          name = "spikes",
          type = "",
          shape = "rectangle",
          x = 2040,
          y = 200,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default"] = true,
            ["walkthrough"] = false
          }
        },
        {
          id = 244,
          name = "spikes",
          type = "",
          shape = "rectangle",
          x = 1840,
          y = 280,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default"] = true,
            ["walkthrough"] = false
          }
        },
        {
          id = 235,
          name = "spikes",
          type = "",
          shape = "rectangle",
          x = 1680,
          y = 200,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default"] = true,
            ["walkthrough"] = false
          }
        },
        {
          id = 240,
          name = "spikes",
          type = "",
          shape = "rectangle",
          x = 1960,
          y = 200,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default"] = true,
            ["walkthrough"] = false
          }
        },
        {
          id = 236,
          name = "spikes",
          type = "",
          shape = "rectangle",
          x = 1680,
          y = 240,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default"] = true,
            ["walkthrough"] = false
          }
        },
        {
          id = 239,
          name = "spikes",
          type = "",
          shape = "rectangle",
          x = 1960,
          y = 240,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default"] = true,
            ["walkthrough"] = false
          }
        },
        {
          id = 237,
          name = "spikes",
          type = "",
          shape = "rectangle",
          x = 1720,
          y = 240,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default"] = true,
            ["walkthrough"] = false
          }
        },
        {
          id = 238,
          name = "spikes",
          type = "",
          shape = "rectangle",
          x = 2000,
          y = 240,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default"] = true,
            ["walkthrough"] = false
          }
        },
        {
          id = 243,
          name = "spikes",
          type = "",
          shape = "rectangle",
          x = 2040,
          y = 240,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default"] = true,
            ["walkthrough"] = false
          }
        },
        {
          id = 245,
          name = "spikes",
          type = "",
          shape = "rectangle",
          x = 1840,
          y = 320,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default"] = true,
            ["walkthrough"] = false
          }
        },
        {
          id = 246,
          name = "spikes",
          type = "",
          shape = "rectangle",
          x = 2160,
          y = 320,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default"] = true,
            ["walkthrough"] = false
          }
        },
        {
          id = 247,
          name = "spikes",
          type = "",
          shape = "rectangle",
          x = 2200,
          y = 320,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default"] = true,
            ["walkthrough"] = false
          }
        },
        {
          id = 248,
          name = "spikes",
          type = "",
          shape = "rectangle",
          x = 2200,
          y = 280,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default"] = true,
            ["walkthrough"] = false
          }
        },
        {
          id = 251,
          name = "spikes",
          type = "",
          shape = "rectangle",
          x = 2160,
          y = 280,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["default"] = true,
            ["walkthrough"] = false
          }
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
          id = 255,
          name = "",
          type = "",
          shape = "rectangle",
          x = 240,
          y = 400,
          width = 40,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 256,
          name = "",
          type = "",
          shape = "rectangle",
          x = 40,
          y = 400,
          width = 200,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 260,
          name = "",
          type = "",
          shape = "rectangle",
          x = 40,
          y = 120,
          width = 40,
          height = 280,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 261,
          name = "",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 120,
          width = 720,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 262,
          name = "",
          type = "",
          shape = "rectangle",
          x = 800,
          y = 120,
          width = 40,
          height = 120,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 263,
          name = "",
          type = "",
          shape = "rectangle",
          x = 840,
          y = 200,
          width = 200,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 264,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1040,
          y = 240,
          width = 40,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 265,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1080,
          y = 280,
          width = 80,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 266,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1240,
          y = 280,
          width = 120,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 267,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1320,
          y = 240,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 269,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1360,
          y = 240,
          width = 320,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 270,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1640,
          y = 200,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 271,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1640,
          y = 160,
          width = 680,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 272,
          name = "",
          type = "",
          shape = "rectangle",
          x = 360,
          y = 400,
          width = 40,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 273,
          name = "",
          type = "",
          shape = "rectangle",
          x = 400,
          y = 400,
          width = 440,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 274,
          name = "",
          type = "",
          shape = "rectangle",
          x = 800,
          y = 320,
          width = 40,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 275,
          name = "",
          type = "",
          shape = "rectangle",
          x = 840,
          y = 320,
          width = 80,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 277,
          name = "",
          type = "",
          shape = "rectangle",
          x = 920,
          y = 320,
          width = 40,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 278,
          name = "",
          type = "",
          shape = "rectangle",
          x = 920,
          y = 400,
          width = 560,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 283,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2240,
          y = 280,
          width = 40,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 284,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2280,
          y = 280,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 285,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2320,
          y = 160,
          width = 80,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 286,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2320,
          y = 280,
          width = 80,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 294,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1440,
          y = 360,
          width = 160,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 295,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1560,
          y = 400,
          width = 800,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 296,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2320,
          y = 320,
          width = 40,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 297,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1600,
          y = 360,
          width = 640,
          height = 40,
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
          id = 252,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 1160,
          y = 280,
          width = 80,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["solid"] = true,
            ["text1"] = "* The western room is the eastern room's blueprint."
          }
        },
        {
          id = 287,
          name = "transition",
          type = "",
          shape = "rectangle",
          x = 280,
          y = 440,
          width = 80,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["facing"] = "down",
            ["map"] = "ruins/ruins_4",
            ["marker"] = "entrydown"
          }
        },
        {
          id = 292,
          name = "transition",
          type = "",
          shape = "rectangle",
          x = 2360,
          y = 200,
          width = 40,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {
            ["facing"] = "right",
            ["map"] = "ruins/ruins_6",
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
          id = 288,
          name = "entryup",
          type = "",
          shape = "point",
          x = 320,
          y = 400,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 289,
          name = "spawn",
          type = "",
          shape = "point",
          x = 1400,
          y = 360,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 291,
          name = "entryleft",
          type = "",
          shape = "point",
          x = 2320,
          y = 240,
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
