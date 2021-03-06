if wl.Game then egbase = wl.Game() else egbase = wl.Editor() end
world = wl.Descriptions()

push_textdomain("foreign_planet.wad", true)

terraindir = path.dirname(__file__)

world:new_terrain_type{
   name = "foreignplanet_rocks1",
   descname = _ "Rocks 1",
   is = "arable",
   valid_resources = {"resource_water"},
   default_resource = "",
   default_resource_amount = 0,
   textures = { terraindir .. "rocks1.png" },
   dither_layer = 353,
   temperature = 100,
   humidity = 150,
   fertility = 800,
}
world:new_terrain_type{
   name = "foreignplanet_rocks2",
   descname = _ "Rocks 2",
   is = "arable",
   valid_resources = {"resource_water"},
   default_resource = "resource_water",
   default_resource_amount = 5,
   textures = { terraindir .. "rocks2.png" },
   dither_layer = 253,
   temperature = 100,
   humidity = 200,
   fertility = 900,
}
world:new_terrain_type{
   name = "foreignplanet_rocks3",
   descname = _ "Rocks 3",
   is = "arable",
   valid_resources = {"resource_water"},
   default_resource = "",
   default_resource_amount = 0,
   textures = { terraindir .. "rocks3.png" },
   dither_layer = 153,
   temperature = 100,
   humidity = 250,
   fertility = 350,
}
world:new_terrain_type{
   name = "foreignplanet_rocks4",
   descname = _ "Rocks 4",
   is = "arable",
   valid_resources = {"resource_water"},
   default_resource = "resource_water",
   default_resource_amount = 10,
   textures = { terraindir .. "rocks4.png" },
   dither_layer = 53,
   temperature = 800,
   humidity = 10,
   fertility = 10,
}
world:new_terrain_type{
   name = "foreignplanet_rocks5",
   descname = _ "Rocks 5",
   is = "arable",
   valid_resources = {"resource_water"},
   default_resource = "",
   default_resource_amount = 0,
   textures = { terraindir .. "rocks5.png" },
   dither_layer = 363,
   temperature = 10,
   humidity = 900,
   fertility = 900,
}
world:new_terrain_type{
   name = "foreignplanet_rocks6",
   descname = _ "Rocks 6",
   is = "arable",
   valid_resources = {"resource_water"},
   default_resource = "",
   default_resource_amount = 0,
   textures = { terraindir .. "rocks6.png" },
   dither_layer = 443,
   temperature = 500,
   humidity = 500,
   fertility = 500,
}

world:new_terrain_type{
   name = "foreignplanet_mountain1",
   descname = _ "Mountain 1",
   is = "mineable",
   valid_resources = {"resource_coal", "resource_iron", "resource_gold", "resource_stones"},
   default_resource = "",
   default_resource_amount = 0,
   textures = { terraindir .. "mountain1.png" },
   dither_layer = 33,
   temperature = 10,
   humidity = 50,
   fertility = 500,
}
world:new_terrain_type{
   name = "foreignplanet_mountain2",
   descname = _ "Mountain 2",
   is = "mineable",
   valid_resources = {"resource_coal", "resource_iron", "resource_gold", "resource_stones"},
   default_resource = "",
   default_resource_amount = 0,
   textures = { terraindir .. "mountain2.png" },
   dither_layer = 133,
   temperature = 10,
   humidity = 50,
   fertility = 500,
}
world:new_terrain_type{
   name = "foreignplanet_mountain3",
   descname = _ "Mountain 3",
   is = "mineable",
   valid_resources = {"resource_coal", "resource_iron", "resource_gold", "resource_stones"},
   default_resource = "",
   default_resource_amount = 0,
   textures = { terraindir .. "mountain3.png" },
   dither_layer = 433,
   temperature = 10,
   humidity = 50,
   fertility = 500,
}

world:new_terrain_type{
   name = "foreignplanet_beach",
   descname = _ "Beach",
   is = "walkable",
   valid_resources = {"resource_water"},
   default_resource = "resource_water",
   default_resource_amount = 2,
   textures = { terraindir .. "beach.png" },
   dither_layer = 943,
   temperature = 250,
   humidity = 990,
   fertility = 10,
}
world:new_terrain_type{
   name = "foreignplanet_dust1",
   descname = _ "Dust 1",
   is = "walkable",
   valid_resources = {},
   default_resource = "",
   default_resource_amount = 0,
   textures = { terraindir .. "dust1.png" },
   dither_layer = 23,
   temperature = 900,
   humidity = 10,
   fertility = 10,
}
world:new_terrain_type{
   name = "foreignplanet_dust2",
   descname = _ "Dust 2",
   is = "unwalkable",
   valid_resources = {},
   default_resource = "",
   default_resource_amount = 0,
   textures = { terraindir .. "dust2.png" },
   dither_layer = 623,
   temperature = 900,
   humidity = 10,
   fertility = 10,
}

world:new_terrain_type{
   name = "foreignplanet_water1",
   descname = _ "Water 1",
   is = "water",
   valid_resources = {"resource_fish"},
   default_resource = "resource_fish",
   default_resource_amount = 4,
   textures = path.list_files(terraindir .. "water1_??.png"),
   dither_layer = 683,
   fps = 14,
   temperature = 50,
   humidity = 999,
   fertility = 1,
}
world:new_terrain_type{
   name = "foreignplanet_water2",
   descname = _ "Water 2",
   is = "water",
   valid_resources = {"resource_fish"},
   default_resource = "",
   default_resource_amount = 0,
   textures = path.list_files(terraindir .. "water2_??.png"),
   dither_layer = 13,
   fps = 14,
   temperature = 500,
   humidity = 999,
   fertility = 1,
}

pop_textdomain()
