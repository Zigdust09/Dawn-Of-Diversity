execute as @a as @s unless entity @e[distance=0..30,nbt={Item:{id:"minecraft:netherite_block",Count:1b}}] run function dod:misc/species_run

##resets the health for respawned players
execute as @a[scores={dod_health_respawn=1..,dod_health_respawn_walk=1..}] if score World dod_nuzlock_1_is_on matches 1 run function dod:misc/rnd
execute as @a[scores={dod_health_respawn=1..,dod_health_respawn_walk=1..}] run function dod:misc/health
execute as @a[scores={dod_health_respawn=0..,dod_health_respawn_walk=1..}] run scoreboard players reset @s dod_health_respawn_walk

execute as @a store result score @s dod_species_y run data get entity @s Pos[1]
tag @a[tag=!equip] add equip