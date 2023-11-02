##does the init
execute unless score World dod_random_species_1_is_on matches 1 run scoreboard players enable @a[tag=!dod_species_trigger_enable] dod_species_trigger
##execute if score World dod_random_species_1_is_on matches 1 as @a[tag=!dod_species_trigger_enable] run function dod:misc/for_every_species/rnd
tag @a[tag=!dod_species_trigger_enable] add dod_species_trigger_enable

##if no blacklist
execute as @a[scores={dod_species_trigger=999}] unless entity @e[tag=species_blacklist,tag=random_blacklist] run function dod:species/random_confirm
execute as @a[scores={dod_species_trigger=1}] unless entity @e[tag=species_blacklist,tag=end_sprinter_blacklist] run function dod:species/end_sprinter/end_sprinter_confirm
execute as @a[scores={dod_species_trigger=2}] unless entity @e[tag=species_blacklist,tag=skyborn_blacklist] run function dod:species/skyborn/skyborn_confirm
execute as @a[scores={dod_species_trigger=3}] unless entity @e[tag=species_blacklist,tag=puffer_blacklist] run function dod:species/puffer/puffer_confirm
execute as @a[scores={dod_species_trigger=4}] unless entity @e[tag=species_blacklist,tag=night_walker_blacklist] run function dod:species/night_walker/night_walker_confirm
execute as @a[scores={dod_species_trigger=5}] unless entity @e[tag=species_blacklist,tag=egg_shifter_blacklist] run function dod:species/egg_shifter/egg_shifter_confirm

execute as @a[scores={dod_species_trigger=6}] unless entity @e[tag=species_blacklist,tag=octo_blacklist] run function dod:species/octo/octo_confirm
execute as @a[scores={dod_species_trigger=7}] unless entity @e[tag=species_blacklist,tag=werewolf_blacklist] run function dod:species/werewolf/werewolf_confirm
execute as @a[scores={dod_species_trigger=8}] unless entity @e[tag=species_blacklist,tag=icelander_blacklist] run function dod:species/icelander/icelander_confirm
execute as @a[scores={dod_species_trigger=9}] unless entity @e[tag=species_blacklist,tag=fireborn_blacklist] run function dod:species/fireborn/fireborn_confirm
execute as @a[scores={dod_species_trigger=10}] unless entity @e[tag=species_blacklist,tag=red_loki_blacklist] run function dod:species/red_loki/red_loki_confirm
execute as @a[scores={dod_species_trigger=11}] unless entity @e[tag=species_blacklist,tag=floraling_blacklist] run function dod:species/floraling/floraling_confirm
execute as @a[scores={dod_species_trigger=12}] unless entity @e[tag=species_blacklist,tag=serpenteer_blacklist] run function dod:species/serpenteer/serpenteer_confirm
execute as @a[scores={dod_species_trigger=13}] unless entity @e[tag=species_blacklist,tag=warlock_blacklist] run function dod:species/warlock/warlock_confirm
execute as @a[scores={dod_species_trigger=14}] unless entity @e[tag=species_blacklist,tag=spectral_blacklist] run function dod:species/spectral/spectral_confirm
execute as @a[scores={dod_species_trigger=15}] unless entity @e[tag=species_blacklist,tag=dimen_blacklist] run function dod:species/dimen/dimen_confirm
execute as @a[scores={dod_species_trigger=16}] unless entity @e[tag=species_blacklist,tag=bits_blacklist] run function dod:species/bits/bits_confirm
execute as @a[scores={dod_species_trigger=17}] unless entity @e[tag=species_blacklist,tag=phase_shifter_blacklist] run function dod:species/phase_shifter/phase_shifter_confirm
execute as @a[scores={dod_species_trigger=18}] unless entity @e[tag=species_blacklist,tag=wolf_born_blacklist] run function dod:species/wolf_born/wolf_born_confirm
execute as @a[scores={dod_species_trigger=19}] unless entity @e[tag=species_blacklist,tag=copper_born_blacklist] run function dod:species/copper_born/copper_born_confirm

execute as @a[scores={dod_species_trigger=20}] unless entity @e[tag=species_blacklist,tag=demonic_blacklist] run function dod:species/demonic/demonic_confirm
#insertbefore1
### Species marker 

##if there is a blacklist
execute as @a[scores={dod_species_trigger=999}] if entity @e[tag=species_blacklist,tag=random_blacklist_blacklist] run function dod:misc/random_trigger_blacklist
execute as @a[scores={dod_species_trigger=1}] if entity @e[tag=species_blacklist,tag=end_sprinter_blacklist] run function dod:misc/species_trigger_blacklist
execute as @a[scores={dod_species_trigger=2}] if entity @e[tag=species_blacklist,tag=skyborn_blacklist] run function dod:misc/species_trigger_blacklist
execute as @a[scores={dod_species_trigger=3}] if entity @e[tag=species_blacklist,tag=puffer_blacklist] run function dod:misc/species_trigger_blacklist
execute as @a[scores={dod_species_trigger=4}] if entity @e[tag=species_blacklist,tag=night_walker_blacklist] run function dod:misc/species_trigger_blacklist
execute as @a[scores={dod_species_trigger=5}] if entity @e[tag=species_blacklist,tag=egg_shifter_blacklist] run function dod:misc/species_trigger_blacklist

execute as @a[scores={dod_species_trigger=6}] if entity @e[tag=species_blacklist,tag=octo_blacklist] run function dod:misc/species_trigger_blacklist
execute as @a[scores={dod_species_trigger=7}] if entity @e[tag=species_blacklist,tag=werewolf_blacklist] run function dod:misc/species_trigger_blacklist
execute as @a[scores={dod_species_trigger=8}] if entity @e[tag=species_blacklist,tag=icelander_blacklist] run function dod:misc/species_trigger_blacklist
execute as @a[scores={dod_species_trigger=9}] if entity @e[tag=species_blacklist,tag=fireborn_blacklist] run function dod:misc/species_trigger_blacklist
execute as @a[scores={dod_species_trigger=10}] if entity @e[tag=species_blacklist,tag=red_loki_blacklist] run function dod:misc/species_trigger_blacklist
execute as @a[scores={dod_species_trigger=11}] if entity @e[tag=species_blacklist,tag=floraling_blacklist] run function dod:misc/species_trigger_blacklist
execute as @a[scores={dod_species_trigger=12}] if entity @e[tag=species_blacklist,tag=serpenteer_blacklist] run function dod:misc/species_trigger_blacklist
execute as @a[scores={dod_species_trigger=13}] if entity @e[tag=species_blacklist,tag=warlock_blacklist] run function dod:misc/species_trigger_blacklist
execute as @a[scores={dod_species_trigger=14}] if entity @e[tag=species_blacklist,tag=spectral_blacklist] run function dod:misc/species_trigger_blacklist
execute as @a[scores={dod_species_trigger=15}] if entity @e[tag=species_blacklist,tag=dimen_blacklist] run function dod:misc/species_trigger_blacklist
execute as @a[scores={dod_species_trigger=16}] if entity @e[tag=species_blacklist,tag=bits_blacklist] run function dod:misc/species_trigger_blacklist
execute as @a[scores={dod_species_trigger=17}] if entity @e[tag=species_blacklist,tag=phase_shifter_blacklist] run function dod:misc/species_trigger_blacklist
execute as @a[scores={dod_species_trigger=18}] if entity @e[tag=species_blacklist,tag=wolf_born_blacklist] run function dod:misc/species_trigger_blacklist
execute as @a[scores={dod_species_trigger=19}] if entity @e[tag=species_blacklist,tag=copper_born_blacklist] run function dod:misc/species_trigger_blacklist

execute as @a[scores={dod_species_trigger=20}] if entity @e[tag=species_blacklist,tag=demonic_blacklist] run function dod:misc/species_trigger_blacklist
#insertbefore2
### Species marker 

execute as @a if score @s dod_species_trigger matches 1.. run scoreboard players reset @s dod_species_trigger

execute as @a[scores={dod_species_trigger_confirm=999}] run function dod:misc/for_every_species/rnd
execute as @a[scores={dod_species_trigger_confirm=1}] run tag @s add end_sprinter
execute as @a[scores={dod_species_trigger_confirm=2}] run tag @s add skyborn
execute as @a[scores={dod_species_trigger_confirm=3}] run tag @s add puffer
execute as @a[scores={dod_species_trigger_confirm=4}] run tag @s add night_walker
execute as @a[scores={dod_species_trigger_confirm=5}] run tag @s add egg_shifter

execute as @a[scores={dod_species_trigger_confirm=6}] run tag @s add octo
execute as @a[scores={dod_species_trigger_confirm=7}] run tag @s add werewolf
execute as @a[scores={dod_species_trigger_confirm=8}] run tag @s add icelander
execute as @a[scores={dod_species_trigger_confirm=9}] run tag @s add fireborn
execute as @a[scores={dod_species_trigger_confirm=10}] run tag @s add red_loki
execute as @a[scores={dod_species_trigger_confirm=11}] run tag @s add floraling
execute as @a[scores={dod_species_trigger_confirm=12}] run tag @s add serpenteer
execute as @a[scores={dod_species_trigger_confirm=13}] run tag @s add warlock
execute as @a[scores={dod_species_trigger_confirm=14}] run tag @s add spectral
execute as @a[scores={dod_species_trigger_confirm=15}] run tag @s add dimen
execute as @a[scores={dod_species_trigger_confirm=16}] run tag @s add bits
execute as @a[scores={dod_species_trigger_confirm=17}] run tag @s add phase_shifter
execute as @a[scores={dod_species_trigger_confirm=18}] run tag @s add wolf_born
execute as @a[scores={dod_species_trigger_confirm=19}] run tag @s add copper_born

execute as @a[scores={dod_species_trigger_confirm=20}] run tag @s add demonic
#insertbefore3
### Species marker 

execute as @a if score @s dod_species_trigger_confirm matches 1.. run tag @s remove equip
execute as @a if score @s dod_species_trigger_confirm matches 1.. run tag @s add has_species
execute as @a if score @s dod_species_trigger_confirm matches 1.. run function dod:misc/health/health
execute as @a if score @s dod_species_trigger_confirm matches 1.. run scoreboard players reset @s dod_species_trigger
execute as @a if score @s dod_species_trigger_confirm matches 1.. run scoreboard players reset @s dod_species_trigger_confirm