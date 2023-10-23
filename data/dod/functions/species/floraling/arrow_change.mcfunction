execute if block ~ ~ ~ torchflower run data merge entity @s {Item:{id:"minecraft:tipped_arrow",tag:{custom_potion_effects:[{id:"minecraft:night_vision",amplifier:1b,duration:800}]}}}

execute if block ~ ~ ~ white_tulip run data merge entity @s {Item:{id:"minecraft:tipped_arrow",tag:{custom_potion_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:800}]}}}

execute if block ~ ~ ~ cornflower run data merge entity @s {Item:{id:"minecraft:tipped_arrow",tag:{custom_potion_effects:[{id:"minecraft:jump_boost",amplifier:1b,duration:800}]}}}

execute if block ~ ~ ~ allium run data merge entity @s {Item:{id:"minecraft:tipped_arrow",tag:{custom_potion_effects:[{id:"minecraft:fire_resistance",amplifier:1b,duration:800}]}}}

execute if block ~ ~ ~ blue_orchid run data merge entity @s {Item:{id:"minecraft:tipped_arrow",tag:{custom_potion_effects:[{id:"minecraft:speed",amplifier:1b,duration:800}]}}}

execute if block ~ ~ ~ peony run data merge entity @s {Item:{id:"minecraft:tipped_arrow",tag:{custom_potion_effects:[{id:"minecraft:slowness",amplifier:1b,duration:800}]}}}

execute if block ~ ~ ~ lilac run data merge entity @s {Item:{id:"minecraft:tipped_arrow",tag:{custom_potion_effects:[{id:"minecraft:slowness",amplifier:1b,duration:800}]}}}

execute if block ~ ~ ~ lilac run data merge entity @s {Item:{id:"minecraft:tipped_arrow",tag:{custom_potion_effects:[{id:"minecraft:resistance",amplifier:1b,duration:800}]}}}

execute if block ~ ~ ~ dandelion run data merge entity @s {Item:{id:"minecraft:tipped_arrow",tag:{custom_potion_effects:[{id:"minecraft:water_breathing",amplifier:1b,duration:800}]}}}

execute if block ~ ~ ~ red_tulip run data merge entity @s {Item:{id:"minecraft:tipped_arrow",tag:{custom_potion_effects:[{id:"minecraft:instant_health",amplifier:1b,duration:1}]}}}

execute if block ~ ~ ~ lily_of_the_valley run data merge entity @s {Item:{id:"minecraft:tipped_arrow",tag:{custom_potion_effects:[{id:"minecraft:poison",amplifier:1b,duration:800}]}}}

execute if block ~ ~ ~ oxeye_daisy run data merge entity @s {Item:{id:"minecraft:tipped_arrow",tag:{custom_potion_effects:[{id:"minecraft:regeneration",amplifier:1b,duration:800}]}}}

execute if block ~ ~ ~ orange_tulip run data merge entity @s {Item:{id:"minecraft:tipped_arrow",tag:{custom_potion_effects:[{id:"minecraft:weakness",amplifier:1b,duration:800}]}}}

execute if block ~ ~ ~ rose_bush run data merge entity @s {Item:{id:"minecraft:tipped_arrow",tag:{custom_potion_effects:[{id:"minecraft:strength",amplifier:1b,duration:800}]}}}

execute if block ~ ~ ~ pink_petals run data merge entity @s {Item:{id:"minecraft:tipped_arrow",tag:{custom_potion_effects:[{id:"minecraft:luck",amplifier:1b,duration:800}]}}}

execute if block ~ ~ ~ pink_tulip run data merge entity @s {Item:{id:"minecraft:tipped_arrow",tag:{custom_potion_effects:[{id:"minecraft:instant_damage",amplifier:1b,duration:1}]}}}

execute if block ~ ~ ~ azure_bluet run data merge entity @s {Item:{id:"minecraft:tipped_arrow",tag:{custom_potion_effects:[{id:"minecraft:slow_falling",amplifier:1b,duration:800}]}}}

execute if block ~ ~ ~ pitcher_plant run data merge entity @s {Item:{id:"minecraft:tipped_arrow",tag:{custom_potion_effects:[{id:"minecraft:saturation",amplifier:10b,duration:10}]}}}

execute if block ~ ~ ~ poppy run data merge entity @s {Item:{id:"minecraft:tipped_arrow",tag:{custom_potion_effects:[{id:"minecraft:blindness",amplifier:1b,duration:800}]}}}

execute if block ~ ~ ~ wither_rose run data merge entity @s {Item:{id:"minecraft:tipped_arrow",tag:{custom_potion_effects:[{id:"minecraft:wither",amplifier:1b,duration:300}]}}}

execute if block ~ ~ ~ sunflower run data merge entity @s {Item:{id:"minecraft:tipped_arrow",tag:{custom_potion_effects:[{id:"minecraft:glowing",amplifier:1b,duration:800}]}}}

execute if block ~ ~ ~ spore_blossom run data merge entity @s {Item:{id:"minecraft:tipped_arrow",tag:{custom_potion_effects:[{id:"minecraft:poison",amplifier:1b,duration:80000}]}}}

execute if block ~ ~-1 ~ chorus_flower run data merge entity @s {Item:{id:"minecraft:tipped_arrow",tag:{custom_potion_effects:[{id:"minecraft:poison",amplifier:1b,duration:8000}]}}}

execute if block ~ ~ ~ #dod:flowers run particle item arrow ~ ~ ~ 0 0 0 1 30 force
execute if block ~ ~ ~ #dod:flowers run playsound entity.witch.drink player @a[distance=..10] ~ ~ ~ 3 1
execute if block ~ ~ ~ #dod:flowers run setblock ~ ~ ~ air