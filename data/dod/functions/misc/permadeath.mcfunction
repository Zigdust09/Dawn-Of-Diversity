##makes players pick a species

title @a[tag=dod_rnd_has_all_species] actionbar "Someone must drop 32 echo shards nearby you to revive."
gamemode spectator @a[tag=dod_rnd_has_all_species]

execute as @a[tag=dod_rnd_has_all_species] run function dod:misc/admin_functions/remove_has_species
execute as @a[tag=dod_rnd_has_all_species] run function dod:misc/admin_functions/simple_species_remove

execute as @a[tag=dod_rnd_has_all_species] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:echo_shard",Count:32b}},distance=..2] run function dod:misc/permadeath_release






