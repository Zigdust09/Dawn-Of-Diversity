##Buffs in dark
effect give @s[predicate=dod:night_walker_light] haste 15 3 true
effect give @s[predicate=dod:night_walker_light] night_vision 15 3 true
effect give @s[predicate=dod:night_walker_light] speed 15 1 true
effect give @s[predicate=dod:night_walker_light] jump_boost 15 1 true
effect give @s[predicate=dod:night_walker_light] strength 15 0 true

##No debuffs in dark
effect clear @s[predicate=dod:night_walker_light] blindness
effect clear @s[predicate=dod:night_walker_light] weakness
effect clear @s[predicate=dod:night_walker_light] mining_fatigue
effect clear @s[predicate=dod:night_walker_light] slowness

##Debuffs in light
effect give @s[predicate=!dod:night_walker_light] weakness 15 0 true
effect give @s[predicate=!dod:night_walker_light] blindness 15 1 true
effect give @s[predicate=!dod:night_walker_light] mining_fatigue 15 0 true
effect give @s[predicate=!dod:night_walker_light] slowness 15 1 true

##No buffs in light
effect clear @s[predicate=!dod:night_walker_light] haste
effect clear @s[predicate=!dod:night_walker_light] night_vision
effect clear @s[predicate=!dod:night_walker_light] speed
effect clear @s[predicate=!dod:night_walker_light] jump_boost
effect clear @s[predicate=!dod:night_walker_light] strength


##Hunger and poison imunity
effect clear @s poison
effect clear @s hunger
