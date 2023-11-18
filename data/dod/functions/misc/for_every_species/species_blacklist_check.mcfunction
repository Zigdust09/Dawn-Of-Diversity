##collapses the difference between had and blacklist
execute if entity @e[tag=species_blacklist,tag=end_sprinter_blacklist] run tag @s add end_sprinter_rnd_checked
execute if entity @s[tag=end_sprinter_has_been] run tag @s add end_sprinter_rnd_checked

execute if entity @e[tag=species_blacklist,tag=skyborn_blacklist] run tag @s add skyborn_rnd_checked
execute if entity @s[tag=skyborn_has_been] run tag @s add skyborn_rnd_checked

execute if entity @e[tag=species_blacklist,tag=puffer_blacklist] run tag @s add puffer_rnd_checked
execute if entity @s[tag=puffer_has_been] run tag @s add puffer_rnd_checked

execute if entity @e[tag=species_blacklist,tag=night_walker_blacklist] run tag @s add night_walker_rnd_checked
execute if entity @s[tag=night_walker_has_been] run tag @s add night_walker_rnd_checked

execute if entity @e[tag=species_blacklist,tag=egg_shifter_blacklist] run tag @s add egg_shifter_rnd_checked
execute if entity @s[tag=egg_shifter_has_been] run tag @s add egg_shifter_rnd_checked

execute if entity @e[tag=species_blacklist,tag=octo_blacklist] run tag @s add octo_rnd_checked
execute if entity @s[tag=octo_has_been] run tag @s add octo_rnd_checked

execute if entity @e[tag=species_blacklist,tag=werewolf_blacklist] run tag @s add werewolf_rnd_checked
execute if entity @s[tag=werewolf_has_been] run tag @s add werewolf_rnd_checked

execute if entity @e[tag=species_blacklist,tag=icelander_blacklist] run tag @s add icelander_rnd_checked
execute if entity @s[tag=icelander_has_been] run tag @s add icelander_rnd_checked

execute if entity @e[tag=species_blacklist,tag=fireborn_blacklist] run tag @s add fireborn_rnd_checked
execute if entity @s[tag=fireborn_has_been] run tag @s add fireborn_rnd_checked

execute if entity @e[tag=species_blacklist,tag=red_loki_blacklist] run tag @s add red_loki_rnd_checked
execute if entity @s[tag=red_loki_has_been] run tag @s add red_loki_rnd_checked

execute if entity @e[tag=species_blacklist,tag=floraling_blacklist] run tag @s add floraling_rnd_checked
execute if entity @s[tag=floraling_has_been] run tag @s add floraling_rnd_checked

execute if entity @e[tag=species_blacklist,tag=serpenteer_blacklist] run tag @s add serpenteer_rnd_checked
execute if entity @s[tag=serpenteer_has_been] run tag @s add serpenteer_rnd_checked

execute if entity @e[tag=species_blacklist,tag=warlock_blacklist] run tag @s add warlock_rnd_checked
execute if entity @s[tag=warlock_has_been] run tag @s add warlock_rnd_checked

execute if entity @e[tag=species_blacklist,tag=spectral_blacklist] run tag @s add spectral_rnd_checked
execute if entity @s[tag=spectral_has_been] run tag @s add spectral_rnd_checked

execute if entity @e[tag=species_blacklist,tag=dimen_blacklist] run tag @s add dimen_rnd_checked
execute if entity @s[tag=dimen_has_been] run tag @s add dimen_rnd_checked

execute if entity @e[tag=species_blacklist,tag=bits_blacklist] run tag @s add bits_rnd_checked
execute if entity @s[tag=bits_has_been] run tag @s add bits_rnd_checked

execute if entity @e[tag=species_blacklist,tag=phase_shifter_blacklist] run tag @s add phase_shifter_rnd_checked
execute if entity @s[tag=phase_shifter_has_been] run tag @s add phase_shifter_rnd_checked

execute if entity @e[tag=species_blacklist,tag=wolf_born_blacklist] run tag @s add wolf_born_rnd_checked
execute if entity @s[tag=wolf_born_has_been] run tag @s add wolf_born_rnd_checked

execute if entity @e[tag=species_blacklist,tag=copper_born_blacklist] run tag @s add copper_born_rnd_checked
execute if entity @s[tag=copper_born_has_been] run tag @s add copper_born_rnd_checked

execute if entity @e[tag=species_blacklist,tag=demonic_blacklist] run tag @s add demonic_rnd_checked
execute if entity @s[tag=demonic_has_been] run tag @s add demonic_rnd_checked

#insertbefore1

##runs the code to see if you have all non blacklisted species
execute if entity @s[tag=end_sprinter_rnd_checked,tag=skyborn_rnd_checked,tag=puffer_rnd_checked,tag=night_walker_rnd_checked,tag=egg_shifter_rnd_checked,tag=octo_rnd_checked,tag=werewolf_rnd_checked,tag=icelander_rnd_checked,tag=fireborn_rnd_checked,tag=red_loki_rnd_checked,tag=floraling_rnd_checked,tag=serpenteer_rnd_checked,tag=warlock_rnd_checked,tag=spectral_rnd_checked,tag=dimen_rnd_checked,tag=bits_rnd_checked,tag=phase_shifter_rnd_checked,tag=wolf_born_rnd_checked,tag=copper_born_rnd_checked,tag=demonic_rnd_checked] run tag @s add dod_rnd_has_all_species
execute if entity @s[tag=end_sprinter_rnd_checked,tag=skyborn_rnd_checked,tag=puffer_rnd_checked,tag=night_walker_rnd_checked,tag=egg_shifter_rnd_checked,tag=octo_rnd_checked,tag=werewolf_rnd_checked,tag=icelander_rnd_checked,tag=fireborn_rnd_checked,tag=red_loki_rnd_checked,tag=floraling_rnd_checked,tag=serpenteer_rnd_checked,tag=warlock_rnd_checked,tag=spectral_rnd_checked,tag=dimen_rnd_checked,tag=bits_rnd_checked,tag=phase_shifter_rnd_checked,tag=wolf_born_rnd_checked,tag=copper_born_rnd_checked,tag=demonic_rnd_checked] as @a[distance=0..] run playsound entity.wither.death player @s ~ ~ ~ 1 1
#insertbefore2


##removes undeded stuff
tag @s remove end_sprinter_rnd_checked
tag @s remove skyborn_rnd_checked
tag @s remove puffer_rnd_checked
tag @s remove night_walker_rnd_checked
tag @s remove egg_shifter_rnd_checked
tag @s remove octo_rnd_checked
tag @s remove werewolf_rnd_checked
tag @s remove icelander_rnd_checked
tag @s remove fireborn_rnd_checked
tag @s remove red_loki_rnd_checked
tag @s remove floraling_rnd_checked
tag @s remove serpenteer_rnd_checked
tag @s remove warlock_rnd_checked
tag @s remove spectral_rnd_checked
tag @s remove dimen_rnd_checked
tag @s remove bits_rnd_checked
tag @s remove phase_shifter_rnd_checked
tag @s remove wolf_born_rnd_checked
tag @s remove copper_born_rnd_checked
tag @s remove demonic_rnd_checked
#insertbefore3




### Species marker 