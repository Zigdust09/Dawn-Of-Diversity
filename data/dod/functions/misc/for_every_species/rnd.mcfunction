function dod:misc/for_every_species/species_blacklist_check




##roll the value
scoreboard players set @s dod_random_store 0

execute store result score @s dod_random_store run random value 1..20

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



## if you have it already, go again
execute if score @s dod_random_store matches 7 as @s[tag=werewolf_has_been,tag=!dod_rnd_has_all_species] run function dod:misc/for_every_species/rnd
execute if score @s dod_random_store matches 7 as @s[tag=werewolf,tag=!dod_rnd_has_all_species] run function dod:misc/for_every_species/rnd
execute if score @s dod_random_store matches 7 as @s[tag=!dod_rnd_has_all_species] if entity @e[tag=species_blacklist,tag=werewolf_blacklist] run function dod:misc/for_every_species/rnd
execute if score @s dod_random_store matches 7 as @s[tag=!werewolf,tag=!werewolf_has_been] at @s unless entity @e[tag=species_blacklist,tag=werewolf_blacklist] run tellraw @a[distance=0..] [{"selector":"@s","bold":false,"italic":false},{"text":" Is now a Werewolf"}]
execute if score @s dod_random_store matches 7 as @s[tag=!werewolf,tag=!werewolf_has_been] unless entity @e[tag=species_blacklist,tag=werewolf_blacklist] run function dod:species/werewolf/werewolf_rnd



## if you have it already, go again
execute if score @s dod_random_store matches 8 as @s[tag=icelander_has_been,tag=!dod_rnd_has_all_species] run function dod:misc/for_every_species/rnd
execute if score @s dod_random_store matches 8 as @s[tag=icelander,tag=!dod_rnd_has_all_species] run function dod:misc/for_every_species/rnd
execute if score @s dod_random_store matches 8 as @s[tag=!dod_rnd_has_all_species] if entity @e[tag=species_blacklist,tag=icelander_blacklist] run function dod:misc/for_every_species/rnd
execute if score @s dod_random_store matches 8 as @s[tag=!icelander,tag=!icelander_has_been] at @s unless entity @e[tag=species_blacklist,tag=icelander_blacklist] run tellraw @a[distance=0..] [{"selector":"@s","bold":false,"italic":false},{"text":" Is now a Icelander"}]
execute if score @s dod_random_store matches 8 as @s[tag=!icelander,tag=!icelander_has_been] unless entity @e[tag=species_blacklist,tag=icelander_blacklist] run function dod:species/icelander/icelander_rnd



## if you have it already, go again
execute if score @s dod_random_store matches 9 as @s[tag=fireborn_has_been,tag=!dod_rnd_has_all_species] run function dod:misc/for_every_species/rnd
execute if score @s dod_random_store matches 9 as @s[tag=fireborn,tag=!dod_rnd_has_all_species] run function dod:misc/for_every_species/rnd
execute if score @s dod_random_store matches 9 as @s[tag=!dod_rnd_has_all_species] if entity @e[tag=species_blacklist,tag=fireborn_blacklist] run function dod:misc/for_every_species/rnd
execute if score @s dod_random_store matches 9 as @s[tag=!fireborn,tag=!fireborn_has_been] at @s unless entity @e[tag=species_blacklist,tag=fireborn_blacklist] run tellraw @a[distance=0..] [{"selector":"@s","bold":false,"italic":false},{"text":" Is now a Fireborn"}]
execute if score @s dod_random_store matches 9 as @s[tag=!fireborn,tag=!fireborn_has_been] unless entity @e[tag=species_blacklist,tag=fireborn_blacklist] run function dod:species/fireborn/fireborn_rnd



## if you have it already, go again
execute if score @s dod_random_store matches 10 as @s[tag=red_loki_has_been,tag=!dod_rnd_has_all_species] run function dod:misc/for_every_species/rnd
execute if score @s dod_random_store matches 10 as @s[tag=red_loki,tag=!dod_rnd_has_all_species] run function dod:misc/for_every_species/rnd
execute if score @s dod_random_store matches 10 as @s[tag=!dod_rnd_has_all_species] if entity @e[tag=species_blacklist,tag=red_loki_blacklist] run function dod:misc/for_every_species/rnd
execute if score @s dod_random_store matches 10 as @s[tag=!red_loki,tag=!red_loki_has_been] at @s unless entity @e[tag=species_blacklist,tag=red_loki_blacklist] run tellraw @a[distance=0..] [{"selector":"@s","bold":false,"italic":false},{"text":" Is now a Red Loki"}]
execute if score @s dod_random_store matches 10 as @s[tag=!red_loki,tag=!red_loki_has_been] unless entity @e[tag=species_blacklist,tag=red_loki_blacklist] run function dod:species/red_loki/red_loki_rnd



## if you have it already, go again
execute if score @s dod_random_store matches 11 as @s[tag=floraling_has_been,tag=!dod_rnd_has_all_species] run function dod:misc/for_every_species/rnd
execute if score @s dod_random_store matches 11 as @s[tag=floraling,tag=!dod_rnd_has_all_species] run function dod:misc/for_every_species/rnd
execute if score @s dod_random_store matches 11 as @s[tag=!dod_rnd_has_all_species] if entity @e[tag=species_blacklist,tag=floraling_blacklist] run function dod:misc/for_every_species/rnd
execute if score @s dod_random_store matches 11 as @s[tag=!floraling,tag=!floraling_has_been] at @s unless entity @e[tag=species_blacklist,tag=floraling_blacklist] run tellraw @a[distance=0..] [{"selector":"@s","bold":false,"italic":false},{"text":" Is now a Floraling"}]
execute if score @s dod_random_store matches 11 as @s[tag=!floraling,tag=!floraling_has_been] unless entity @e[tag=species_blacklist,tag=floraling_blacklist] run function dod:species/floraling/floraling_rnd



## if you have it already, go again
execute if score @s dod_random_store matches 12 as @s[tag=serpenteer_has_been,tag=!dod_rnd_has_all_species] run function dod:misc/for_every_species/rnd
execute if score @s dod_random_store matches 12 as @s[tag=serpenteer,tag=!dod_rnd_has_all_species] run function dod:misc/for_every_species/rnd
execute if score @s dod_random_store matches 12 as @s[tag=!dod_rnd_has_all_species] if entity @e[tag=species_blacklist,tag=serpenteer_blacklist] run function dod:misc/for_every_species/rnd
execute if score @s dod_random_store matches 12 as @s[tag=!serpenteer,tag=!serpenteer_has_been] at @s unless entity @e[tag=species_blacklist,tag=serpenteer_blacklist] run tellraw @a[distance=0..] [{"selector":"@s","bold":false,"italic":false},{"text":" Is now a Serpenteer"}]
execute if score @s dod_random_store matches 12 as @s[tag=!serpenteer,tag=!serpenteer_has_been] unless entity @e[tag=species_blacklist,tag=serpenteer_blacklist] run function dod:species/serpenteer/serpenteer_rnd



## if you have it already, go again
execute if score @s dod_random_store matches 13 as @s[tag=warlock_has_been,tag=!dod_rnd_has_all_species] run function dod:misc/for_every_species/rnd
execute if score @s dod_random_store matches 13 as @s[tag=warlock,tag=!dod_rnd_has_all_species] run function dod:misc/for_every_species/rnd
execute if score @s dod_random_store matches 13 as @s[tag=!dod_rnd_has_all_species] if entity @e[tag=species_blacklist,tag=warlock_blacklist] run function dod:misc/for_every_species/rnd
execute if score @s dod_random_store matches 13 as @s[tag=!warlock,tag=!warlock_has_been] at @s unless entity @e[tag=species_blacklist,tag=warlock_blacklist] run tellraw @a[distance=0..] [{"selector":"@s","bold":false,"italic":false},{"text":" Is now a Warlock"}]
execute if score @s dod_random_store matches 13 as @s[tag=!warlock,tag=!warlock_has_been] unless entity @e[tag=species_blacklist,tag=warlock_blacklist] run function dod:species/warlock/warlock_rnd



## if you have it already, go again
execute if score @s dod_random_store matches 14 as @s[tag=spectral_has_been,tag=!dod_rnd_has_all_species] run function dod:misc/for_every_species/rnd
execute if score @s dod_random_store matches 14 as @s[tag=spectral,tag=!dod_rnd_has_all_species] run function dod:misc/for_every_species/rnd
execute if score @s dod_random_store matches 14 as @s[tag=!dod_rnd_has_all_species] if entity @e[tag=species_blacklist,tag=spectral_blacklist] run function dod:misc/for_every_species/rnd
execute if score @s dod_random_store matches 14 as @s[tag=!spectral,tag=!spectral_has_been] at @s unless entity @e[tag=species_blacklist,tag=spectral_blacklist] run tellraw @a[distance=0..] [{"selector":"@s","bold":false,"italic":false},{"text":" Is now a Spectral"}]
execute if score @s dod_random_store matches 14 as @s[tag=!spectral,tag=!spectral_has_been] unless entity @e[tag=species_blacklist,tag=spectral_blacklist] run function dod:species/spectral/spectral_rnd



## if you have it already, go again
execute if score @s dod_random_store matches 15 as @s[tag=dimen_has_been,tag=!dod_rnd_has_all_species] run function dod:misc/for_every_species/rnd
execute if score @s dod_random_store matches 15 as @s[tag=dimen,tag=!dod_rnd_has_all_species] run function dod:misc/for_every_species/rnd
execute if score @s dod_random_store matches 15 as @s[tag=!dod_rnd_has_all_species] if entity @e[tag=species_blacklist,tag=dimen_blacklist] run function dod:misc/for_every_species/rnd
execute if score @s dod_random_store matches 15 as @s[tag=!dimen,tag=!dimen_has_been] at @s unless entity @e[tag=species_blacklist,tag=dimen_blacklist] run tellraw @a[distance=0..] [{"selector":"@s","bold":false,"italic":false},{"text":" Is now a Dimen"}]
execute if score @s dod_random_store matches 15 as @s[tag=!dimen,tag=!dimen_has_been] unless entity @e[tag=species_blacklist,tag=dimen_blacklist] run function dod:species/dimen/dimen_rnd



## if you have it already, go again
execute if score @s dod_random_store matches 16 as @s[tag=bits_has_been,tag=!dod_rnd_has_all_species] run function dod:misc/for_every_species/rnd
execute if score @s dod_random_store matches 16 as @s[tag=bits,tag=!dod_rnd_has_all_species] run function dod:misc/for_every_species/rnd
execute if score @s dod_random_store matches 16 as @s[tag=!dod_rnd_has_all_species] if entity @e[tag=species_blacklist,tag=bits_blacklist] run function dod:misc/for_every_species/rnd
execute if score @s dod_random_store matches 16 as @s[tag=!bits,tag=!bits_has_been] at @s unless entity @e[tag=species_blacklist,tag=bits_blacklist] run tellraw @a[distance=0..] [{"selector":"@s","bold":false,"italic":false},{"text":" Is now a Bits"}]
execute if score @s dod_random_store matches 16 as @s[tag=!bits,tag=!bits_has_been] unless entity @e[tag=species_blacklist,tag=bits_blacklist] run function dod:species/bits/bits_rnd



## if you have it already, go again
execute if score @s dod_random_store matches 17 as @s[tag=phase_shifter_has_been,tag=!dod_rnd_has_all_species] run function dod:misc/for_every_species/rnd
execute if score @s dod_random_store matches 17 as @s[tag=phase_shifter,tag=!dod_rnd_has_all_species] run function dod:misc/for_every_species/rnd
execute if score @s dod_random_store matches 17 as @s[tag=!dod_rnd_has_all_species] if entity @e[tag=species_blacklist,tag=phase_shifter_blacklist] run function dod:misc/for_every_species/rnd
execute if score @s dod_random_store matches 17 as @s[tag=!phase_shifter,tag=!phase_shifter_has_been] at @s unless entity @e[tag=species_blacklist,tag=phase_shifter_blacklist] run tellraw @a[distance=0..] [{"selector":"@s","bold":false,"italic":false},{"text":" Is now a Phase Shifter"}]
execute if score @s dod_random_store matches 17 as @s[tag=!phase_shifter,tag=!phase_shifter_has_been] unless entity @e[tag=species_blacklist,tag=phase_shifter_blacklist] run function dod:species/phase_shifter/phase_shifter_rnd



## if you have it already, go again
execute if score @s dod_random_store matches 18 as @s[tag=wolf_born_has_been,tag=!dod_rnd_has_all_species] run function dod:misc/for_every_species/rnd
execute if score @s dod_random_store matches 18 as @s[tag=wolf_born,tag=!dod_rnd_has_all_species] run function dod:misc/for_every_species/rnd
execute if score @s dod_random_store matches 18 as @s[tag=!dod_rnd_has_all_species] if entity @e[tag=species_blacklist,tag=wolf_born_blacklist] run function dod:misc/for_every_species/rnd
execute if score @s dod_random_store matches 18 as @s[tag=!wolf_born,tag=!wolf_born_has_been] at @s unless entity @e[tag=species_blacklist,tag=wolf_born_blacklist] run tellraw @a[distance=0..] [{"selector":"@s","bold":false,"italic":false},{"text":" Is now a Wolf Born"}]
execute if score @s dod_random_store matches 18 as @s[tag=!wolf_born,tag=!wolf_born_has_been] unless entity @e[tag=species_blacklist,tag=wolf_born_blacklist] run function dod:species/wolf_born/wolf_born_rnd



## if you have it already, go again
execute if score @s dod_random_store matches 19 as @s[tag=copper_born_has_been,tag=!dod_rnd_has_all_species] run function dod:misc/for_every_species/rnd
execute if score @s dod_random_store matches 19 as @s[tag=copper_born,tag=!dod_rnd_has_all_species] run function dod:misc/for_every_species/rnd
execute if score @s dod_random_store matches 19 as @s[tag=!dod_rnd_has_all_species] if entity @e[tag=species_blacklist,tag=copper_born_blacklist] run function dod:misc/for_every_species/rnd
execute if score @s dod_random_store matches 19 as @s[tag=!copper_born,tag=!copper_born_has_been] at @s unless entity @e[tag=species_blacklist,tag=copper_born_blacklist] run tellraw @a[distance=0..] [{"selector":"@s","bold":false,"italic":false},{"text":" Is now a Copper Born"}]
execute if score @s dod_random_store matches 19 as @s[tag=!copper_born,tag=!copper_born_has_been] unless entity @e[tag=species_blacklist,tag=copper_born_blacklist] run function dod:species/copper_born/copper_born_rnd



## if you have it already, go again
execute if score @s dod_random_store matches 20 as @s[tag=demonic_has_been,tag=!dod_rnd_has_all_species] run function dod:misc/for_every_species/rnd
execute if score @s dod_random_store matches 20 as @s[tag=demonic,tag=!dod_rnd_has_all_species] run function dod:misc/for_every_species/rnd
execute if score @s dod_random_store matches 20 as @s[tag=!dod_rnd_has_all_species] if entity @e[tag=species_blacklist,tag=demonic_blacklist] run function dod:misc/for_every_species/rnd
execute if score @s dod_random_store matches 20 as @s[tag=!demonic,tag=!demonic_has_been] at @s unless entity @e[tag=species_blacklist,tag=demonic_blacklist] run tellraw @a[distance=0..] [{"selector":"@s","bold":false,"italic":false},{"text":" Is now a Demonic"}]
execute if score @s dod_random_store matches 20 as @s[tag=!demonic,tag=!demonic_has_been] unless entity @e[tag=species_blacklist,tag=demonic_blacklist] run function dod:species/demonic/demonic_rnd



#insertbefore

function dod:misc/dev_functions/stop









### Species marker 




