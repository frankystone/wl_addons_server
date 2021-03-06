push_textdomain("europeans_tribe.wad", true)

dirname = path.dirname(__file__)

descriptions:new_productionsite_type {
   name = "europeans_spiderfarm",
   -- TRANSLATORS: This is a building name used in lists of buildings
   descname = pgettext("europeans_building", "Spider Farm"),
   icon = dirname .. "menu.png",
   size = "big",

   buildcost = {
      blackwood = 2,
      planks = 2,
      reed = 2,
      cloth = 2,
      brick = 2,
      grout = 2
   },
   return_on_dismantle = {
      blackwood = 1,
      planks = 1,
      granite = 2
   },

   animations = {
      idle = {
         pictures = path.list_files(dirname .. "idle_??.png"),
         hotspot = { 87, 75 },
      },
      working = {
         pictures = path.list_files(dirname .. "idle_??.png"), -- TODO(GunChleoc): No animation yet.
         hotspot = { 87, 75 },
      }
   },

   aihints = {},

   working_positions = {
      europeans_breeder_basic = 1
   },

   inputs = {
      { name = "water", amount = 6 },
      { name = "corn", amount = 6 }
   },

   programs = {
      main = {
         -- TRANSLATORS: Completed/Skipped/Did not start working because ...
         descname = _"working",
         actions = {
            "call=produce_spidersilk_basic",
            "call=produce_spidersilk",
            "return=skipped"
         }
      },
      produce_spidersilk_basic = {
         -- TRANSLATORS: Completed/Skipped/Did not start working because ...
         descname = _"produce spider silk",
         actions = {
            "return=skipped when economy needs water",
            "return=skipped when economy needs corn",
            "consume=corn water",
            "sleep=duration:10s",
            "animate=working duration:60s",
            "produce=spider_silk"
         }
      },
      produce_spidersilk = {
         -- TRANSLATORS: Completed/Skipped/Did not start working because ...
         descname = _"produce spider silk",
         actions = {
            "return=skipped unless economy needs spider_silk",
            "consume=corn:2 water:2",
            "sleep=duration:10s",
            "animate=working duration:60s",
            "produce=spider_silk:2"
         }
      },
   },
}

pop_textdomain()
