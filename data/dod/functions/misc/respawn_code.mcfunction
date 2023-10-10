##resets
scoreboard players reset @s dod_health_respawn_walk
scoreboard players reset @s dod_health_respawn

##corrects health
function dod:misc/health/health


##runs the code for reapawinging on nuzlock
execute as @s[tag=!dod_rnd_has_all_species] if score World dod_nuzlock_1_is_on matches 1 run function dod:misc/admin_functions/species_remove
execute as @s[tag=!dod_rnd_has_all_species] if score World dod_nuzlock_1_is_on matches 1 run function dod:misc/for_every_species/rnd



