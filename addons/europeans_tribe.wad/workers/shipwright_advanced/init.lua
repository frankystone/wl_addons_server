push_textdomain("europeans_tribe.wad", true)

dirname = path.dirname(__file__)

descriptions:new_worker_type {
   name = "europeans_shipwright_advanced",
   -- TRANSLATORS: This is a worker name used in lists of workers
   descname = pgettext("europeans_worker", "Advanced Shipwright"),
   animation_directory = dirname,
   icon = dirname .. "menu.png",
   vision_range = 2,

   programs = {
      buildship = {
         "walk=object-or-coords",
         "plant=attrib:europeans_shipconstruction unless object",
         "playsound=sound/sawmill/sawmill priority:80% allow_multiple",
         "animate=work duration:500ms",
         "construct",
         "animate=work duration:4s",
         "return"
      },
      buildferry_1 = {
         "findspace=size:swim radius:7",
      },
      buildferry_2 = {
         "findspace=size:swim radius:7",
         "walk=coords",
         "animate=work duration:10s",
         "createbob=europeans_ferry",
         "return"
      },
   },

   animations = {
      idle = {
         hotspot = { 13, 24 },
      },
      work = {
         sound_effect = {
            path = "sound/hammering/hammering",
            priority = "50%"
         },
         hotspot = { 12, 27 },
         fps = 10
      },
      walk = {
         hotspot = { 11, 24 },
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
