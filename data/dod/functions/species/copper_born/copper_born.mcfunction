execute as @s[tag=!equip] run function dod:species/copper_born/copper_born_item_handle

scoreboard players remove @s[scores={dod_copper_born_oxidation=1..}] dod_copper_born_oxidation 1
scoreboard players remove @s[scores={dod_copper_born_oxidation=1..},predicate=dod:watercheck,nbt=!{RootVehicle:{Entity:{id:"minecraft:boat"}}}] dod_copper_born_oxidation 4


execute as @s[scores={dod_copper_born_axe=1}] run function dod:species/copper_born/scrape_off
scoreboard players reset @s dod_copper_born_axe

execute as @s[predicate=dod:sneak] if block ~ ~ ~ lightning_rod align xyz positioned ~0.5 ~0.5 ~0.5 run function dod:species/copper_born/copper_pipe_init
execute as @s[predicate=dod:sneak] if block ~ ~-1 ~ lightning_rod positioned ~ ~-1 ~ align xyz positioned ~0.5 ~0.5 ~0.5 run function dod:species/copper_born/copper_pipe_init


execute as @s[scores={dod_copper_born_copper=1}] run effect give @s saturation 1 1 true
scoreboard players reset @s dod_copper_born_copper


damage @s[scores={dod_food_apple=1..}] 10 generic
damage @s[scores={dod_food_baked_potato=1..}] 10 generic
damage @s[scores={dod_food_beetroot=1..}] 10 generic
damage @s[scores={dod_food_bowl=1..}] 10 generic
damage @s[scores={dod_food_bread=1..}] 10 generic
damage @s[scores={dod_food_carrot=1..}] 10 generic
damage @s[scores={dod_food_chorus_fruit=1..}] 10 generic
damage @s[scores={dod_food_cookie=1..}] 10 generic
damage @s[scores={dod_food_dried_kelp=1..}] 10 generic
damage @s[scores={dod_food_glow_berries=1..}] 10 generic
damage @s[scores={dod_food_golden_carrot=1..}] 10 generic
damage @s[scores={dod_food_melon_slice=1..}] 10 generic
damage @s[scores={dod_food_poisonus_potato=1..}] 10 generic
damage @s[scores={dod_food_potato=1..}] 10 generic
damage @s[scores={dod_food_pufferfish=1..}] 10 generic
damage @s[scores={dod_food_pumpkin_pie=1..}] 10 generic
damage @s[scores={dod_food_sweet_berries=1..}] 10 generic


