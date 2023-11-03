##run species code
execute as @a at @s unless entity @e[distance=0..30,nbt={Item:{id:"minecraft:netherite_block",Count:1b}}] run function dod:misc/for_every_species/species_run

##does all species check
execute as @a run function dod:misc/for_every_species/species_blacklist_check


##debug for telling if you have the tag
title @a[tag=dod_rnd_has_all_species] actionbar "has_all_tag" 

##does the respawn code
execute as @e[scores={dod_health_respawn=1..}] run function dod:misc/respawn_code


##sets veriables used througout the code
execute as @a store result score @s dod_fall_distace run data get entity @s FallDistance 0.5
execute as @a store result score @s dod_hp run data get entity @s Health 1



##resets all the food scores
function dod:misc/food_score_reset

##stored y value
execute as @a store result score @s dod_species_y run data get entity @s Pos[1]
execute as @a store result score @s dod_fire_time run data get entity @s Fire


##addes equip tag
tag @a[tag=!equip] add equip


##runs the puffer trident code
execute if entity @a[tag=puffer] run function dod:species/puffer/puffer_trident
#function dod:species/puffer/puffer_trident

##runs the code for the egg shifter chicken
execute if entity @a[tag=egg_shifter] run function dod:species/egg_shifter/chicken_run



##resets the player dammage score
scoreboard players reset @a[scores={dod_player_dammage=1..}] dod_player_dammage


##code for egg shifter rotten eggs
scoreboard players remove @a dod_egg_shifter_gamemode 1
gamemode survival @a[scores={dod_egg_shifter_gamemode=1},tag=egg_shifter_smoke]
tag @a[scores={dod_egg_shifter_gamemode=1},tag=egg_shifter_smoke] remove egg_shifter_smoke
execute as @e[type=egg,nbt={Item:{tag:{egg_shifter_rotten_egg:1b}}}] at @s run function dod:species/egg_shifter/egg_run



##resets socres
execute as @a[scores={dod_warped_right_click=1..}] run scoreboard players set @s dod_warped_right_click 0
execute as @a[scores={dod_dammage_delt=1..}] run scoreboard players set @s dod_dammage_delt 0

##makes sure every arrow is checked
tag @e[type=arrow,tag=!dod_arrow_check] add dod_arrow_check
