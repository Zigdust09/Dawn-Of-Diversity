execute as @s[tag=!equip] run function dod:species/werewolf/werewolf_item_handle

execute if score World dod_moon_night_math matches 1 if predicate dod:is_night run effect give @e[distance=..15,tag=!werewolf] glowing 5 1 true


