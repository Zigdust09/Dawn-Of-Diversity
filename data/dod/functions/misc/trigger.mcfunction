##does the init
execute unless score World dod_random_species_1_is_on matches 1 run scoreboard players enable @a[tag=!dod_species_trigger_enable] dod_species_trigger
execute if score World dod_random_species_1_is_on matches 1 as @a[tag=!dod_species_trigger_enable] run function dod:misc/rnd
tag @a[tag=!dod_species_trigger_enable] add dod_species_trigger_enable

##if no blacklist
execute as @a[scores={dod_species_trigger=1}] unless entity @e[tag=species_blacklist,tag=end_sprinter_blacklist] run function dod:species/end_sprinter/end_sprinter_confirm
execute as @a[scores={dod_species_trigger=2}] unless entity @e[tag=species_blacklist,tag=skyborn_blacklist] run function dod:species/skyborn/skyborn_confirm
execute as @a[scores={dod_species_trigger=3}] unless entity @e[tag=species_blacklist,tag=puffer_blacklist] run function dod:species/puffer/puffer_confirm
execute as @a[scores={dod_species_trigger=4}] unless entity @e[tag=species_blacklist,tag=night_walker_blacklist] run function dod:species/night_walker/night_walker_confirm
### Species marker 

##if
execute as @a[scores={dod_species_trigger=1}] if entity @e[tag=species_blacklist,tag=end_sprinter_blacklist] run function dod:misc/species_trigger_blacklist
execute as @a[scores={dod_species_trigger=2}] if entity @e[tag=species_blacklist,tag=skyborn_blacklist] run function dod:misc/species_trigger_blacklist
execute as @a[scores={dod_species_trigger=3}] if entity @e[tag=species_blacklist,tag=puffer_blacklist] run function dod:misc/species_trigger_blacklist
execute as @a[scores={dod_species_trigger=4}] if entity @e[tag=species_blacklist,tag=night_walker_blacklist] run function dod:misc/species_trigger_blacklist
execute as @a[scores={dod_species_trigger=5}] if entity @e[tag=species_blacklist,tag=egg_shifter_blacklist] run function dod:misc/species_trigger_blacklist
### Species marker 

execute as @a if score @s dod_species_trigger matches 1.. run scoreboard players reset @s dod_species_trigger


execute as @a[scores={dod_species_trigger_confirm=1}] run tag @s add end_sprinter
execute as @a[scores={dod_species_trigger_confirm=2}] run tag @s add skyborn
execute as @a[scores={dod_species_trigger_confirm=3}] run tag @s add puffer
execute as @a[scores={dod_species_trigger_confirm=4}] run tag @s add night_walker
execute as @a[scores={dod_species_trigger_confirm=5}] run tag @s add egg_shifter
### Species marker 

execute as @a if score @s dod_species_trigger_confirm matches 1.. run tag @s remove equip
execute as @a if score @s dod_species_trigger_confirm matches 1.. run tag @s add no_species
execute as @a if score @s dod_species_trigger_confirm matches 1.. run function dod:misc/health
execute as @a if score @s dod_species_trigger_confirm matches 1.. run scoreboard players reset @s dod_species_trigger_confirm