

execute unless score World dod_world_init matches 1 run function dod:world_init

execute if predicate dod:turning_night run function dod:species/werewolf/day_calculate


##gives the book to new players
execute if score World dod_random_species_1_is_on matches 0 run function dod:misc/book/bookgive
execute if score World dod_random_species_1_is_on matches 1 run function dod:misc/book/instruction_bookgive


execute as @e[tag=octo_mark] at @s unless entity @a[tag=octo,distance=..10] run kill @s



## adds the species manipulation code
function dod:misc/species_manipulation_check


##runs the trigger commands
function dod:misc/for_every_species/trigger


##rescheduals the function to make it repeat
schedule function dod:misc/2sec 2s append


execute if score World dod_random_species_1_is_on matches 1 as @a[tag=!has_species,tag=!dod_rnd_has_all_species] run function dod:misc/for_every_species/rnd


##runs the permadeath code
execute if score World dod_permadeath_1_is_on matches 1 as @a[tag=dod_rnd_has_all_species] run function dod:misc/permadeath
execute if score World dod_permadeath_1_is_on matches 0 as @a[tag=dod_rnd_has_all_species] run function dod:misc/admin_functions/remove_species_tags


##runs the "pick a species" code
function dod:misc/pick_a_species

##runs the code to remove has species tags if always cycle is on
execute if score World dod_always_cycle_1_is_on matches 1 as @a run function dod:misc/admin_functions/remove_has_species

execute as @a store result score @s dod_hunger_level run data get entity @s foodLevel

##runs the equip code
function dod:misc/triggers/equip

##runs the speciestell code code
function dod:misc/triggers/speciestell

function dod:species/night_walker/night_walker_effects_2



execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:arrow"}}] at @s on origin if entity @s[tag=floraling] as @e[type=minecraft:item,nbt={Item:{id:"minecraft:arrow"}},limit=1,sort=nearest,distance=..1] run function dod:species/floraling/arrow_change



execute as @a[tag=!dod_pid_assign,limit=1,sort=nearest] run scoreboard players add World dod_pid 1
execute as @a[tag=!dod_pid_assign,limit=1,sort=nearest] store result score @s dod_pid run scoreboard players get World dod_pid
execute as @a[tag=!dod_pid_assign,limit=1,sort=nearest] run tag @s add dod_pid_assign


