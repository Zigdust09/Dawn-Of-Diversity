
execute unless block ^ ^ ^1 #dod:gothru run tp @s ~ ~ ~

execute if score @s dod_end_sprinter_raycast matches 1 unless block ~ ~-1 ~ #dod:gothru run tp @s ~ ~ ~
execute if score @s dod_end_sprinter_raycast matches 1 unless block ~ ~-2 ~ #dod:gothru run tp @s ~ ~ ~
execute if score @s dod_end_sprinter_raycast matches 1 unless block ~ ~-3 ~ #dod:gothru run tp @s ~ ~ ~
execute if score @s dod_end_sprinter_raycast matches 1 unless block ~ ~-4 ~ #dod:gothru run tp @s ~ ~ ~

execute if entity @e[type=!#dod:end_sprinter_teleport,tag=!end_sprinter,distance=..3] run tp @s ^ ^ ^1
execute if entity @e[type=!#dod:end_sprinter_teleport,tag=!end_sprinter,distance=..3] run playsound entity.enderman.teleport player @a[distance=..10] ~ ~ ~ 2 1
execute if entity @e[type=!#dod:end_sprinter_teleport,tag=!end_sprinter,distance=..3] run damage @e[type=!#dod:end_sprinter_teleport,tag=!end_sprinter,distance=..3,limit=1,sort=nearest] 4 minecraft:player_attack by @s




effect give @s hunger 4 4 true

particle reverse_portal ~ ~ ~ 0 0 0 0 1 normal

scoreboard players remove @s dod_end_sprinter_raycast 1
execute if score @s dod_end_sprinter_raycast matches 1.. positioned ^ ^ ^0.5 if block ~ ~ ~ #dod:gothru unless entity @e[type=!#dod:end_sprinter_teleport,tag=!end_sprinter,distance=..2] run function dod:species/end_sprinter/end_sprinter_raycast