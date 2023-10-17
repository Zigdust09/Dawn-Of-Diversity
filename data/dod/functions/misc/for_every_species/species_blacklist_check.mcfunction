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

#insertbefore1



execute if entity @s[tag=end_sprinter_rnd_checked,tag=skyborn_rnd_checked,tag=puffer_rnd_checked,tag=night_walker_rnd_checked,tag=egg_shifter_rnd_checked,tag=octo_rnd_checked] run tag @s add dod_rnd_has_all_species
#insertbefore2


tag @s remove end_sprinter_rnd_checked
tag @s remove skyborn_rnd_checked
tag @s remove puffer_rnd_checked
tag @s remove night_walker_rnd_checked
tag @s remove egg_shifter_rnd_checked
tag @s remove octo_rnd_checked
#insertbefore3



### Species marker 