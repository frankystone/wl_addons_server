push_textdomain("europeans_tribe.wad", true)

dirname = path.dirname(__file__)

descriptions:new_productionsite_type {
   name = "europeans_well_basic",
   -- TRANSLATORS: This is a building name used in lists of buildings
   descname = pgettext("europeans_building", "Basic Well"),
   icon = dirname .. "menu.png",
   size = "small",
   
   enhancement = {
        name = "europeans_well_normal",
        enhancement_cost = {
          planks = 1,
          cloth = 1,
          granite = 1,
          quartz = 1
        },
        enhancement_return_on_dismantle = {
          granite = 1,
          quartz = 1
        },
   },

   buildcost = {
      blackwood = 2,
      reed = 2,
      granite = 1
   },
   return_on_dismantle = {
      blackwood = 1,
      granite = 1
   },

   animations = {
      idle = {
         pictures = path.list_files(dirname .. "idle_??.png"),
         hotspot = { 19, 33 },
      },
      build = {
         pictures = path.list_files(dirname .. "build_??.png"),
         hotspot = { 19, 33 },
      },
      working = {
         pictures = path.list_files(dirname .. "working_??.png"),
         hotspot = { 19, 33 },
      },
   },

   aihints = {
      basic_amount = 4
   },

   working_positions = {
      europeans_carrier = 1
   },

   programs = {
      main = {
         -- TRANSLATORS: Completed/Skipped/Did not start working because ...
         descname = _"working",
         actions = {
            "sleep=duration:5s",
            "animate=working duration:30s",
            "mine=resource_water radius:1 yield:50% when_empty:50%",
            "produce=water"
         }
      },
   },

   out_of_resource_notification = {
      -- Translators: Short for "Out of ..." for a resource
      title = _"No Water",
      heading = _"Out of Water",
      message = pgettext("europeans_building", "The carrier working at this well can’t find any water in his well."),
      productivity_threshold = 33
   },
}

pop_textdomain()
