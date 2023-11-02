##gives species there effects

execute as @a[tag=end_sprinter] unless entity @e[distance=0..30,nbt={Item:{id:"minecraft:netherite_block",Count:1b}}] run function dod:species/end_sprinter/end_sprinter_effects

execute as @a[tag=skyborn] unless entity @e[distance=0..30,nbt={Item:{id:"minecraft:netherite_block",Count:1b}}] run function dod:species/skyborn/skyborn_effects

execute as @a[tag=puffer] unless entity @e[distance=0..30,nbt={Item:{id:"minecraft:netherite_block",Count:1b}}] run function dod:species/puffer/puffer_effects

execute as @a[tag=night_walker] unless entity @e[distance=0..30,nbt={Item:{id:"minecraft:netherite_block",Count:1b}}] run function dod:species/night_walker/night_walker_effects

execute as @a[tag=egg_shifter] unless entity @e[distance=0..30,nbt={Item:{id:"minecraft:netherite_block",Count:1b}}] run function dod:species/egg_shifter/egg_shifter_effects

execute as @a[tag=octo] unless entity @e[distance=0..30,nbt={Item:{id:"minecraft:netherite_block",Count:1b}}] run function dod:species/octo/octo_effects

execute as @a[tag=werewolf] unless entity @e[distance=0..30,nbt={Item:{id:"minecraft:netherite_block",Count:1b}}] run function dod:species/werewolf/werewolf_effects

execute as @a[tag=icelander] unless entity @e[distance=0..30,nbt={Item:{id:"minecraft:netherite_block",Count:1b}}] run function dod:species/icelander/icelander_effects

execute as @a[tag=fireborn] unless entity @e[distance=0..30,nbt={Item:{id:"minecraft:netherite_block",Count:1b}}] run function dod:species/fireborn/fireborn_effects

execute as @a[tag=red_loki] unless entity @e[distance=0..30,nbt={Item:{id:"minecraft:netherite_block",Count:1b}}] run function dod:species/red_loki/red_loki_effects

execute as @a[tag=floraling] unless entity @e[distance=0..30,nbt={Item:{id:"minecraft:netherite_block",Count:1b}}] run function dod:species/floraling/floraling_effects

execute as @a[tag=serpenteer] unless entity @e[distance=0..30,nbt={Item:{id:"minecraft:netherite_block",Count:1b}}] run function dod:species/serpenteer/serpenteer_effects

execute as @a[tag=warlock] unless entity @e[distance=0..30,nbt={Item:{id:"minecraft:netherite_block",Count:1b}}] run function dod:species/warlock/warlock_effects

execute as @a[tag=spectral] unless entity @e[distance=0..30,nbt={Item:{id:"minecraft:netherite_block",Count:1b}}] run function dod:species/spectral/spectral_effects

execute as @a[tag=dimen] unless entity @e[distance=0..30,nbt={Item:{id:"minecraft:netherite_block",Count:1b}}] run function dod:species/dimen/dimen_effects

execute as @a[tag=bits] unless entity @e[distance=0..30,nbt={Item:{id:"minecraft:netherite_block",Count:1b}}] run function dod:species/bits/bits_effects

execute as @a[tag=phase_shifter] unless entity @e[distance=0..30,nbt={Item:{id:"minecraft:netherite_block",Count:1b}}] run function dod:species/phase_shifter/phase_shifter_effects

execute as @a[tag=wolf_born] unless entity @e[distance=0..30,nbt={Item:{id:"minecraft:netherite_block",Count:1b}}] run function dod:species/wolf_born/wolf_born_effects

execute as @a[tag=copper_born] unless entity @e[distance=0..30,nbt={Item:{id:"minecraft:netherite_block",Count:1b}}] run function dod:species/copper_born/copper_born_effects


execute as @a[tag=demonic] unless entity @e[distance=0..30,nbt={Item:{id:"minecraft:netherite_block",Count:1b}}] run function dod:species/demonic/demonic_effects

#insertbefore
### Species marker

##rescheduals the function
schedule function dod:misc/for_every_species/give_species_effects 10s append