push_textdomain("europeans_tribe.wad", true)

dirname = path.dirname(__file__)

descriptions:new_worker_type {
   name = "europeans_carpenter_normal",
   -- TRANSLATORS: This is a worker name used in lists of workers
   descname = pgettext("europeans_worker", "Normal Carpenter / Sawyer"),
   animation_directory = dirname,
   icon = dirname .. "menu.png",
   vision_range = 2,

   experience = 24,
   becomes = "europeans_carpenter_advanced",

   animations = {
      idle = {
         hotspot = { 5, 31 }
      },
      walk = {
         hotspot = { 16, 31 },
         fps = 10,
         directional = true
      },
      walkload = {
         basename = "walk",
         hotspot = { 16, 31 },
         fps = 10,
         directional = true
      }
   }
}

pop_textdomain()
