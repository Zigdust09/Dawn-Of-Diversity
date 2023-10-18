##run species code
execute as @a at @s unless entity @e[distance=0..30,nbt={Item:{id:"minecraft:netherite_block",Count:1b}}] run function dod:misc/for_every_species/species_run

##does all species check
execute as @a run function dod:misc/for_every_species/species_blacklist_check

##does the respawn code
execute as @e[scores={dod_health_respawn=1..}] run function dod:misc/respawn_code
scoreboard players reset @a dod_health_respawn_walk

execute as @a store result score @s dod_fall_distace run data get entity @s FallDistance 0.5
execute as @a store result score @s dod_hp run data get entity @s Health 1




function dod:misc/food_score_reset

##stored y value
execute as @a store result score @s dod_species_y run data get entity @s Pos[1]

##addes equip tag
tag @a[tag=!equip] add equip

execute if entity @a[tag=puffer] run function dod:species/puffer/puffer_trident
#function dod:species/puffer/puffer_trident


execute if entity @a[tag=egg_shifter] run function dod:species/egg_shifter/chicken_run



scoreboard players remove @a dod_egg_shifter_gamemode 1
gamemode survival @a[scores={dod_egg_shifter_gamemode=1},tag=egg_shifter_smoke]
tag @a[scores={dod_egg_shifter_gamemode=1},tag=egg_shifter_smoke] remove egg_shifter_smoke
execute as @e[type=egg,nbt={Item:{tag:{egg_shifter_rotten_egg:1b}}}] at @s run function dod:species/egg_shifter/egg_run
