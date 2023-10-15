execute store result score @s movement_1x run data get entity @s Pos[0] 10000
execute store result score @s movement_1y run data get entity @s Pos[1] 10000
execute store result score @s movement_1z run data get entity @s Pos[2] 10000

damage @s 0 player_attack by @p[tag=night_walker]

execute rotated as @p positioned ^ ^ ^0.01 run summon armor_stand ~ ~ ~ {Tags:["night_walker_hurl_part_2"]}

execute store result score @s movement_2x run data get entity @e[tag=night_walker_hurl_part_2,distance=..1,sort=nearest,limit=1] Pos[0] 10000
execute store result score @s movement_2y run data get entity @e[tag=night_walker_hurl_part_2,distance=..1,sort=nearest,limit=1] Pos[1] 10000
execute store result score @s movement_2z run data get entity @e[tag=night_walker_hurl_part_2,distance=..1,sort=nearest,limit=1] Pos[2] 10000

kill @e[tag=night_walker_hurl_part_2,distance=..1,sort=nearest,limit=1]

execute store result entity @s Motion[0] double 0.025 run scoreboard players operation @s movement_2x -= @s movement_1x 
execute store result entity @s Motion[1] double 0.015 run scoreboard players operation @s movement_2y -= @s movement_1y
execute store result entity @s Motion[2] double 0.025 run scoreboard players operation @s movement_2z -= @s movement_1z 