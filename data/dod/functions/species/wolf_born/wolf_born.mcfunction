execute as @s[tag=!equip] run function dod:species/wolf_born/wolf_born_item_handle


effect give @s[scores={dod_player_dammage=1..}] invisibility 3 0 false

effect give @s[predicate=dod:watercheck] slowness 15 10 true
effect give @s[predicate=dod:watercheck] jump_boost 15 200 true
#for da wawa