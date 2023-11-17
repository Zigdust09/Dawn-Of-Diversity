
##rescheduals the function to make it repeat
schedule function dod:misc/2sec 2s append


##runs code to initialize world
execute unless score World dod_world_init matches 1 run function dod:world_init



##calculates the moon every night
execute if predicate dod:turning_night run function dod:species/werewolf/day_calculate



##gives the book to new players
execute if score World dod_random_species_1_is_on matches 0 run function dod:misc/book/bookgive
execute if score World dod_random_species_1_is_on matches 1 run function dod:misc/book/instruction_bookgive

##kills unused octomakrs
execute as @e[tag=marker,tag=octo_mark] at @s unless entity @a[tag=octo,distance=..10] run kill @s


## adds the species manipulation code
function dod:misc/species_manipulation_check


##runs the trigger commands
function dod:misc/for_every_species/trigger




##if random species is on and you dont have all the species + you dont have has_species it will give you a random one
execute if score World dod_random_species_1_is_on matches 1 as @a[tag=!has_species,tag=!dod_rnd_has_all_species] run function dod:misc/for_every_species/rnd





##runs the permadeath code
execute if score World dod_permadeath_1_is_on matches 1 as @a[tag=dod_rnd_has_all_species] run function dod:misc/permadeath


##runs the "pick a species" code
function dod:misc/pick_a_species

##runs the code to remove has species tags if always cycle is on
execute if score World dod_always_cycle_1_is_on matches 1 as @a run function dod:misc/admin_functions/remove_has_species


##tracks hunger level
execute as @a store result score @s dod_hunger_level run data get entity @s foodLevel

##runs the equip code
function dod:misc/triggers/equip

##runs the speciestell code code
function dod:misc/triggers/speciestell


function dod:species/night_walker/night_walker_effects_2



execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:arrow"}}] at @s on origin if entity @s[tag=floraling] as @e[type=minecraft:item,nbt={Item:{id:"minecraft:arrow"}},limit=1,sort=nearest,distance=..1] run function dod:species/floraling/arrow_change


effect give @a[nbt={Dimension:"dod:shard"}] night_vision 20 3 true
effect give @a[nbt={Dimension:"dod:shard"}] haste 3 255 true


execute as @a[tag=!dod_pid_assign,limit=1,sort=nearest] run scoreboard players add World dod_pid 1
execute as @a[tag=!dod_pid_assign,limit=1,sort=nearest] store result score @s dod_pid run scoreboard players get World dod_pid
execute as @a[tag=!dod_pid_assign,limit=1,sort=nearest] run tag @s add dod_pid_assign


execute as @a[tag=egg_shifter,predicate=dod:sneak] at @s run function dod:species/egg_shifter/armour_drop

execute if entity @a[tag=wolf_born] run function dod:species/wolf_born/bone_check

execute as @e[type=marker,tag=dod_demonic_marker] at @s unless entity @a[tag=demonic,distance=..10] run kill @s

execute as @a[tag=copper_born,tag=!dod_copper_born_check] run function dod:species/copper_born/copper_born_init


execute as @a[tag=!warlock] run function dod:species/warlock/warlock_bossbar_remove
