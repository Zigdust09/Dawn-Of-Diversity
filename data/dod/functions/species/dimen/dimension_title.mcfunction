execute if score @s dod_dimen_list matches 1 run title @s actionbar {"text":"Overworld","color":"green"}
execute if score @s dod_dimen_list matches 1 run effect give @s speed 3 1 true

execute if score @s dod_dimen_list matches 2 run title @s actionbar {"text":"Nether","color":"red"}
execute if score @s dod_dimen_list matches 2 run effect give @s fire_resistance 3 0 true

execute if score @s dod_dimen_list matches 3 run title @s actionbar {"text":"End","color":"dark_purple"}
execute if score @s dod_dimen_list matches 3 run effect give @s levitation 3 255 true

execute if score @s dod_dimen_list matches 4 run title @s actionbar {"text":"Shard","color":"light_purple"}
execute if score @s dod_dimen_list matches 4 run effect give @s jump_boost 3 1 true
