push_textdomain("europeans_tribe.wad", true)

dirname = path.dirname(__file__)

descriptions:new_worker_type {
   name = "europeans_stonemason_normal",
   -- TRANSLATORS: This is a worker name used in lists of workers
   descname = pgettext("europeans_worker", "Normal Stonemason"),
   animation_directory = dirname,
   icon = dirname .. "menu.png",
   vision_range = 2,

   experience = 24,
   becomes = "europeans_stonemason_advanced",

   programs = {
      cut_granite = {
         "findobject=attrib:rocks radius:8",
         "walk=object",
         "playsound=sound/stonecutting/stonecutter priority:70% allow_multiple",
         "animate=hacking duration:15s",
         "callobject=shrink",
         "createware=granite",
         "return"
      },
      cut_marble = {
         "findobject=attrib:rocks radius:8",
         "walk=object",
         "playsound=sound/stonecutting/stonecutter priority:70% allow_multiple",
         "animate=hacking duration:15s",
         "callobject=shrink",
         "createware=marble",
         "return"
      }
   },

   animations = {
      idle = {
         hotspot = { 7, 20 }
      },
      hacking = {
         hotspot = { 10, 19 },
         fps = 10
      },
      walk = {
         hotspot = { 10, 21 },
         fps = 10,
         directional = true
      },
      walkload = {
         hotspot = { 10, 23 },
         fps = 10,
         directional = true
      }
   }
}

pop_textdomain()
