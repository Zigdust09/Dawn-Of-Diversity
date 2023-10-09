##gives species there effects

execute as @a[tag=end_sprinter] run function dod:species/end_sprinter/end_sprinter_effects

execute as @a[tag=skyborn] run function dod:species/skyborn/skyborn_effects

execute as @a[tag=puffer] run function dod:species/puffer/puffer_effects

execute as @a[tag=night_walker] run function dod:species/night_walker/night_walker_effects

execute as @a[tag=egg_shifter] run function dod:species/egg_shifter/egg_shifter_effects



### Species marker 

##rescheduals the function
schedule function dod:misc/give_species_effects 10s append