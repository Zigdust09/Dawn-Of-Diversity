##gives species there effects

execute as @a[tag=end_sprinter] unless entity @e[distance=0..30,nbt={Item:{id:"minecraft:netherite_block",Count:1b}}] run function dod:species/end_sprinter/end_sprinter_effects

execute as @a[tag=skyborn] unless entity @e[distance=0..30,nbt={Item:{id:"minecraft:netherite_block",Count:1b}}] run function dod:species/skyborn/skyborn_effects

execute as @a[tag=puffer] unless entity @e[distance=0..30,nbt={Item:{id:"minecraft:netherite_block",Count:1b}}] run function dod:species/puffer/puffer_effects

execute as @a[tag=night_walker] unless entity @e[distance=0..30,nbt={Item:{id:"minecraft:netherite_block",Count:1b}}] run function dod:species/night_walker/night_walker_effects

execute as @a[tag=egg_shifter] unless entity @e[distance=0..30,nbt={Item:{id:"minecraft:netherite_block",Count:1b}}] run function dod:species/egg_shifter/egg_shifter_effects

#insertbefore
### Species marker

##rescheduals the function
schedule function dod:misc/for_every_species/give_species_effects 10s append