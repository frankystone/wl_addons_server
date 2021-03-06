push_textdomain("europeans_tribe.wad", true)

dirname = path.dirname(__file__)

descriptions:new_productionsite_type {
   name = "europeans_foresters_house_advanced",
   -- TRANSLATORS: This is a building name used in lists of buildings
   descname = pgettext("europeans_building", "Advanced Forester’s House"),
   icon = dirname .. "menu.png",
   size = "small",

   animations = {
      idle = {
         pictures = path.list_files(dirname .. "idle_??.png"),
         hotspot = { 52, 54 },
      },
   },

   aihints = {},

   working_positions = {
      europeans_forester_advanced = 1
   },

   inputs = {
      { name = "water", amount = 10 },
   },
   
   programs = {
      main = {
         -- TRANSLATORS: Completed/Skipped/Did not start enhancing the fertility of land because ...
         descname = _"working",
         actions = {
            "call=plant",
            "callworker=check",
            "call=terraform",
            "call=plant",
            "call=terraform",
            "call=plant",
            "call=terraform",
            "call=plant",
            "call=terraform",
            "call=plant",
            "return=skipped"
         }
      },
      plant = {
         -- TRANSLATORS: Completed/Skipped/Did not start planting trees because ...
         descname = _"planting trees",
         actions = {
            "return=skipped when economy needs water and not economy needs log",
            "consume=water",
            "callworker=plant",
            "sleep=duration:10s"
         }
      },
      terraform = {
         -- TRANSLATORS: Completed/Skipped/Did not start enhancing the fertility of land because ...
         descname = _"enhancing the fertility of land",
         actions = {
            "return=skipped when economy needs water",
            "consume=water:2",
            "callworker=terraform",
            "sleep=duration:10s"
         }
      },
   },
}

pop_textdomain()
