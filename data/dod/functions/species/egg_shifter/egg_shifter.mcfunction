##Summon and teleport the chicken
execute as @s[predicate=dod:sneak] run tp @e[tag=egg_shifter_hide,limit=1,sort=nearest,distance=..5] ~ ~ ~ ~ ~
execute as @s[predicate=dod:sneak] unless entity @e[tag=egg_shifter_hide,distance=..5] run summon chicken ~ ~ ~ {Tags:["egg_shifter_hide"],Team:"egg_shifter"}

#Effects in chicken
effect give @s[predicate=dod:sneak] invisibility 1 0 true
effect give @s[predicate=dod:sneak] speed 1 3 true
effect give @s[predicate=dod:sneak] jump_boost 1 1 true
effect give @s[predicate=dod:sneak] strength 1 1 true
effect give @s[predicate=dod:sneak] resistance 1 1 true
effect give @s[predicate=dod:sneak] slow_falling 1 1 true

#No effects when not in chicken
effect clear @s[predicate=!dod:sneak] invisibility
effect clear @s[predicate=!dod:sneak] strength
effect clear @s[predicate=!dod:sneak] speed
effect clear @s[predicate=!dod:sneak] resistance
effect clear @s[predicate=!dod:sneak] jump_boost
effect clear @s[predicate=!dod:sneak] slow_falling
#Debuffs not in chicken
effect give @s[predicate=!dod:sneak] weakness 1 2 true
effect give @s[predicate=!dod:sneak] slowness 1 1 true
effect give @s[predicate=!dod:sneak] mining_fatigue 1 0 true

#No debuffs in chicken
effect clear @s[predicate=dod:sneak] weakness
effect clear @s[predicate=dod:sneak] slowness
effect clear @s[predicate=dod:sneak] mining_fatigue

##Kill the chicken
execute as @e[tag=egg_shifter_hide] at @s unless entity @a[tag=egg_shifter,distance=..5,predicate=dod:sneak] run tp @s ~ -95 ~

##Merge motion
execute as @e[tag=egg_shifter_hide] at @s run data modify entity @s Motion merge from entity @p[tag=egg_shifter_hide,predicate=dod:sneak,distance=..5]