##resets
scoreboard players reset @s dod_health_respawn
scoreboard players set @s[tag=puffer] dod_puffer_air 1000
scoreboard players set @s[tag=copper_born] dod_copper_born_oxidation 24000


##attemtps to reroll if you looped with random species on
execute as @s[tag=dod_rnd_has_all_species] if score World dod_random_species_1_is_on matches 1 run tag @s remove has_species



##if nuzlock is on without the other two will run a function
execute as @s[tag=dod_rnd_has_all_species] if score World dod_nuzlocke_1_is_on matches 1 if score World dod_random_species_1_is_on matches 0 if score World dod_permadeath_1_is_on matches 0 run function dod:misc/nuzlocke_has_all_species

##aparently does nuzlock for even just random species
##execute as @s if score World dod_random_species_1_is_on matches 1 run function dod:misc/admin_functions/simple_species_remove
##execute as @s if score World dod_random_species_1_is_on matches 1 run function dod:misc/for_every_species/rnd






##runs the code for reapawinging on nuzlocke
execute as @s[tag=!dod_rnd_has_all_species] if score World dod_nuzlocke_1_is_on matches 1 run function dod:misc/admin_functions/species_remove_nuzlocke
execute as @s[tag=!dod_rnd_has_all_species] if score World dod_nuzlocke_1_is_on matches 1 run function dod:misc/for_every_species/rnd





##corrects health
function dod:misc/health/health