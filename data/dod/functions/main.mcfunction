##run species code
execute as @a as @s unless entity @e[distance=0..30,nbt={Item:{id:"minecraft:netherite_block",Count:1b}}] run function dod:misc/species_run

##does the respawn nuzlock code
execute as @a[scores={dod_health_respawn=1..,dod_health_respawn_walk=1..}] if score World dod_nuzlock_1_is_on matches 1 run function dod:misc/rnd
##does the respawn health code
execute as @a[scores={dod_health_respawn=1..,dod_health_respawn_walk=1..}] run function dod:misc/health
##resets the walk scoreboard
execute as @a[scores={dod_health_respawn=0..,dod_health_respawn_walk=1..}] run scoreboard players reset @s dod_health_respawn_walk


##stored y value
execute as @a store result score @s dod_species_y run data get entity @s Pos[1]

##addes equip tag
tag @a[tag=!equip] add equip



