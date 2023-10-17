function dod:misc/for_every_species/species_blacklist_check




##roll the value
scoreboard players set @s dod_random_store 0
execute store result score @s dod_random_store run random value 1..5 

scoreboard players reset @s dod_species_trigger

##if you have it already go again
execute if score @s dod_random_store matches 1 as @s[tag=end_sprinter_has_been,tag=!dod_rnd_has_all_species] run function dod:misc/for_every_species/rnd
execute if score @s dod_random_store matches 1 as @s[tag=end_sprinter,tag=!dod_rnd_has_all_species] run function dod:misc/for_every_species/rnd
execute if score @s dod_random_store matches 1 as @s[tag=!dod_rnd_has_all_species] if entity @e[tag=species_blacklist,tag=end_sprinter_blacklist] run function dod:misc/for_every_species/rnd
execute if score @s dod_random_store matches 1 as @s[tag=!end_sprinter,tag=!end_sprinter_has_been] at @s unless entity @e[tag=species_blacklist,tag=end_sprinter_blacklist] run tellraw @a[distance=0..] [{"selector":"@s","bold":false,"italic":false},{"text":" Is now a End Sprinter"}]
#gives you the tag
execute if score @s dod_random_store matches 1 as @s[tag=!end_sprinter,tag=!end_sprinter_has_been] unless entity @e[tag=species_blacklist,tag=end_sprinter_blacklist] run function dod:species/end_sprinter/end_sprinter_rnd



##if you have it already go again
execute if score @s dod_random_store matches 2 as @s[tag=skyborn_has_been,tag=!dod_rnd_has_all_species] run function dod:misc/for_every_species/rnd
execute if score @s dod_random_store matches 2 as @s[tag=skyborn,tag=!dod_rnd_has_all_species] run function dod:misc/for_every_species/rnd
execute if score @s dod_random_store matches 2 as @s[tag=!dod_rnd_has_all_species] if entity @e[tag=species_blacklist,tag=skyborn_blacklist] run function dod:misc/for_every_species/rnd
execute if score @s dod_random_store matches 2 as @s[tag=!skyborn,tag=!skyborn_has_been] at @s unless entity @e[tag=species_blacklist,tag=skyborn_blacklist] run tellraw @a[distance=0..] [{"selector":"@s","bold":false,"italic":false},{"text":" Is now a Skyborn"}]
#gives you the tag
execute if score @s dod_random_store matches 2 as @s[tag=!skyborn,tag=!skyborn_has_been] unless entity @e[tag=species_blacklist,tag=skyborn_blacklist] run function dod:species/skyborn/skyborn_rnd



##if you have it already go again
execute if score @s dod_random_store matches 3 as @s[tag=puffer_has_been,tag=!dod_rnd_has_all_species] run function dod:misc/for_every_species/rnd
execute if score @s dod_random_store matches 3 as @s[tag=puffer,tag=!dod_rnd_has_all_species] run function dod:misc/for_every_species/rnd
execute if score @s dod_random_store matches 3 as @s[tag=!dod_rnd_has_all_species] if entity @e[tag=species_blacklist,tag=puffer_blacklist] run function dod:misc/for_every_species/rnd
execute if score @s dod_random_store matches 3 as @s[tag=!puffer,tag=!puffer_has_been] at @s unless entity @e[tag=species_blacklist,tag=puffer_blacklist] run tellraw @a[distance=0..] [{"selector":"@s","bold":false,"italic":false},{"text":" Is now a Puffer"}]
#gives you the tag
execute if score @s dod_random_store matches 3 as @s[tag=!puffer,tag=!puffer_has_been] unless entity @e[tag=species_blacklist,tag=puffer_blacklist] run function dod:species/puffer/puffer_rnd



##if you have it already go again
execute if score @s dod_random_store matches 4 as @s[tag=night_walker_has_been,tag=!dod_rnd_has_all_species] run function dod:misc/for_every_species/rnd
execute if score @s dod_random_store matches 4 as @s[tag=night_walker,tag=!dod_rnd_has_all_species] run function dod:misc/for_every_species/rnd
execute if score @s dod_random_store matches 4 as @s[tag=!dod_rnd_has_all_species] if entity @e[tag=species_blacklist,tag=night_walker_blacklist] run function dod:misc/for_every_species/rnd
execute if score @s dod_random_store matches 4 as @s[tag=!night_walker,tag=!night_walker_has_been] at @s unless entity @e[tag=species_blacklist,tag=night_walker_blacklist] run tellraw @a[distance=0..] [{"selector":"@s","bold":false,"italic":false},{"text":" Is now a Night Walker"}]
#gives you the tag
execute if score @s dod_random_store matches 4 as @s[tag=!night_walker,tag=!night_walker_has_been] unless entity @e[tag=species_blacklist,tag=night_walker_blacklist] run function dod:species/night_walker/night_walker_rnd



##if you have it already go again
execute if score @s dod_random_store matches 5 as @s[tag=egg_shifter_has_been,tag=!dod_rnd_has_all_species] run function dod:misc/for_every_species/rnd
execute if score @s dod_random_store matches 5 as @s[tag=egg_shifter,tag=!dod_rnd_has_all_species] run function dod:misc/for_every_species/rnd
execute if score @s dod_random_store matches 5 as @s[tag=!dod_rnd_has_all_species] if entity @e[tag=species_blacklist,tag=egg_shifter_blacklist] run function dod:misc/for_every_species/rnd
execute if score @s dod_random_store matches 5 as @s[tag=!egg_shifter,tag=!egg_shifter_has_been] at @s unless entity @e[tag=species_blacklist,tag=egg_shifter_blacklist] run tellraw @a[distance=0..] [{"selector":"@s","bold":false,"italic":false},{"text":" Is now a Egg Shifter"}]
#gives you the tag
execute if score @s dod_random_store matches 5 as @s[tag=!egg_shifter,tag=!egg_shifter_has_been] unless entity @e[tag=species_blacklist,tag=egg_shifter_blacklist] run function dod:species/egg_shifter/egg_shifter_rnd


## if you have it already, go again
execute if score @s dod_random_store matches 6 as @s[tag=octo_has_been,tag=!dod_rnd_has_all_species] run function dod:misc/for_every_species/rnd
execute if score @s dod_random_store matches 6 as @s[tag=octo,tag=!dod_rnd_has_all_species] run function dod:misc/for_every_species/rnd
execute if score @s dod_random_store matches 6 as @s[tag=!dod_rnd_has_all_species] if entity @e[tag=species_blacklist,tag=octo_blacklist] run function dod:misc/for_every_species/rnd
execute if score @s dod_random_store matches 6 as @s[tag=!octo,tag=!octo_has_been] at @s unless entity @e[tag=species_blacklist,tag=octo_blacklist] run tellraw @a[distance=0..] [{"selector":"@s","bold":false,"italic":false},{"text":" Is now a Octo"}]
execute if score @s dod_random_store matches 6 as @s[tag=!octo,tag=!octo_has_been] unless entity @e[tag=species_blacklist,tag=octo_blacklist] run function dod:species/octo/octo_rnd



#insertbefore

function dod:misc/dev_functions/stop









### Species marker 




