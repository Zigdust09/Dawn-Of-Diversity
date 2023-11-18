execute as @s[tag=!equip] run function dod:species/red_loki/red_loki_item_handle

execute if predicate dod:sneak unless block ~ ~1 ~-0.3000001 #dod:gothru run effect give @s levitation 1 1 true
execute if predicate dod:sneak unless block ~ ~1 ~0.3000001 #dod:gothru run effect give @s levitation 1 1 true
execute if predicate dod:sneak unless block ~0.3000001 ~1 ~ #dod:gothru run effect give @s levitation 1 1 true
execute if predicate dod:sneak unless block ~-0.3000001 ~1 ~ #dod:gothru run effect give @s levitation 1 1 true

execute if predicate dod:sneak unless block ~ ~1 ~-0.3000001 #dod:gothru run tag @s add dod_red_loki_climbing
execute if predicate dod:sneak unless block ~ ~1 ~0.3000001 #dod:gothru run tag @s add dod_red_loki_climbing
execute if predicate dod:sneak unless block ~0.3000001 ~1 ~ #dod:gothru run tag @s add dod_red_loki_climbing
execute if predicate dod:sneak unless block ~-0.3000001 ~1 ~ #dod:gothru run tag @s add dod_red_loki_climbing

execute as @s[predicate=!dod:sneak,tag=dod_red_loki_climbing] run effect clear @s levitation
execute as @s[predicate=!dod:sneak,tag=dod_red_loki_climbing] run tag @s remove dod_red_loki_climbing

execute as @s[scores={dod_red_loki_sugar=1}] run scoreboard players add @s dod_red_loki_speed 100
execute as @s[scores={dod_red_loki_sugar=1}] run kill @e[type=item,nbt={Item:{id:"minecraft:sugar",Count:1b}},limit=1,distance=..2,sort=nearest]
scoreboard players reset @s dod_red_loki_sugar


execute if score World dod_optional_settings_1_is_on matches 1 as @s[scores={dod_red_loki_gunpowder=1}] run summon tnt
execute if score World dod_optional_settings_1_is_on matches 1 as @s[scores={dod_red_loki_gunpowder=1}] run kill @e[type=item,nbt={Item:{id:"minecraft:gunpowder",Count:1b}},limit=1,distance=..2,sort=nearest]
scoreboard players reset @s dod_red_loki_gunpowder




effect give @s[scores={dod_red_loki_speed=1..}] speed 1 5 true
scoreboard players remove @s[scores={dod_red_loki_speed=1..}] dod_red_loki_speed 1

execute as @s[predicate=dod:sneak] if block ~ ~-1 ~ bamboo run effect give @s saturation
execute as @s[predicate=dod:sneak] if block ~ ~-1 ~ bamboo run setblock ~ ~-1 ~ air

effect give @s[scores={dod_fall_distace=2..}] slow_falling 1 3 true