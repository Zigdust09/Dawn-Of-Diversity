execute as @s[tag=!equip] run function dod:species/night_walker/night_walker_item_handle


effect give @s[scores={dod_food_rotten_flesh=1..}] saturation 1 2 true
effect clear @s[predicate=!dod:in_light] hunger
effect clear @s poison

execute as @s[scores={dod_night_walker_amethyst=1}] anchored eyes positioned ~ ~1.5 ~ if entity @e[type=!#dod:night_walker_leave_alone,sort=nearest,distance=..3] run function dod:species/night_walker/hurl_create
scoreboard players reset @s dod_night_walker_amethyst