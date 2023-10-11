##run species code
execute as @a as @s unless entity @e[distance=0..30,nbt={Item:{id:"minecraft:netherite_block",Count:1b}}] run function dod:misc/for_every_species/species_run


##does all species check
execute as @a run function dod:misc/for_every_species/species_blacklist_check

##does the respawn code
execute as @e[scores={dod_health_respawn=1..}] run function dod:misc/respawn_code
scoreboard players reset @a dod_health_respawn_walk




##stored y value
execute as @a store result score @s dod_species_y run data get entity @s Pos[1]

##addes equip tag
tag @a[tag=!equip] add equip
