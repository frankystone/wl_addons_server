push_textdomain("europeans_tribe.wad", true)

dirname = path.dirname(__file__)

descriptions:new_worker_type {
   name = "europeans_lumberjack_advanced",
   -- TRANSLATORS: This is a worker name used in lists of workers
   descname = pgettext("europeans_worker", "Advanced Lumberjack"),
   animation_directory = dirname,
   icon = dirname .. "menu.png",
   vision_range = 2,

   programs = {
      harvest = {
         "findobject=attrib:tree radius:18",
         "walk=object",
         "playsound=sound/woodcutting/fast_woodcutting priority:95% allow_multiple",
         "animate=hacking duration:10s",
         "playsound=sound/woodcutting/tree_falling priority:100%",
         "callobject=fall",
         "animate=idle duration:2s",
         "createware=log",
         "return"
      }
   },

   animations = {
      idle = {
         hotspot = { 6, 24 },
         fps = 10
      },
      hacking = {
         hotspot = { 23, 23 },
         fps = 10
      },
      walk = {
         hotspot = { 9, 22 },
         fps = 10,
         directional = true
      },
      walkload = {
         hotspot = { 9, 22 },
         fps = 10,
         directional = true
      }
   }
}

pop_textdomain()
