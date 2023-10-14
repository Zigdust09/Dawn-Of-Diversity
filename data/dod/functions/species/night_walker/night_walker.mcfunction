execute as @s[tag=!equip] run function dod:species/night_walker/night_walker_item_handle


effect give @s[scores={dod_food_rotten_flesh=1..}] saturation 1 2 true
effect clear @s[predicate=!dod:in_light] hunger
effect clear @s poison