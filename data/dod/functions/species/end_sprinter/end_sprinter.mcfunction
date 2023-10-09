##if in water teleport
execute if predicate dod:watercheck run playsound entity.enderman.teleport player @a[distance=..10] ~ ~ ~ 10 1
execute if predicate dod:watercheck run particle cloud ~ ~ ~ 0 0 0 2 3
execute if predicate dod:watercheck run spreadplayers ~ ~ 3000 1000 true @s

##if near a mob or arrow teleport
execute if entity @e[type=!#dod:end_sprinter_teleport,distance=..2] run playsound entity.enderman.teleport player @a[distance=..10] ~ ~ ~ 10 1
execute if entity @e[type=!#dod:end_sprinter_teleport,distance=..2] run particle cloud ~ ~ ~ 0 0 0 2 3
execute if entity @e[type=!#dod:end_sprinter_teleport,distance=..2] run spreadplayers ~ ~ 10 20 true @s

##right click with the wand to teleport
execute as @s[scores={end_sprinter_right_click=1..},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{end_sprinter_wand:1}}}] run playsound entity.enderman.teleport player @a[distance=..10] ~ ~ ~ 10 1
execute as @s[scores={end_sprinter_right_click=1..},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{end_sprinter_wand:1}}}] run particle cloud ~ ~ ~ 0 0 0 2 3
execute as @s[scores={end_sprinter_right_click=1..},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{end_sprinter_wand:1}}}] run tag @s add end_sprinter_slow_fall
execute as @s[scores={end_sprinter_right_click=1..},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{end_sprinter_wand:1}}}] anchored eyes run tp @s ^ ^ ^10
execute as @s[scores={end_sprinter_right_click=1..},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{end_sprinter_wand:1}}}] anchored eyes positioned ^ ^ ^10 run effect give @e[tag=!end_sprinter,distance=..3,type=!#dod:undead] instant_damage 1 1 true
execute as @s[scores={end_sprinter_right_click=1..},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{end_sprinter_wand:1}}}] anchored eyes positioned ^ ^ ^10 run effect give @e[tag=!end_sprinter,distance=..3,type=#dod:undead] instant_health 1 1 true
execute as @s[scores={end_sprinter_right_click=1..},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{end_sprinter_wand:1}}}] run scoreboard players reset @s end_sprinter_right_click

##Marker
kill @e[tag=end_sprinter_marker]
execute as @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{end_sprinter_wand:1}}}] anchored eyes positioned ^ ^ ^10 if block ~ ~ ~ #dod:gothru run summon armor_stand ~ ~ ~ {Team:"end_sprinter_marker_yellow",NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:1b,Small:1b,Invisible:1b,Tags:["end_sprinter_marker"],DisabledSlots:4144959}
execute as @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{end_sprinter_wand:1}}}] anchored eyes positioned ^ ^ ^10 unless block ~ ~ ~ #dod:gothru run summon armor_stand ~ ~ ~ {Team:"end_sprinter_marker_red",NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:1b,Small:1b,Invisible:1b,Tags:["end_sprinter_marker"],DisabledSlots:4144959}
execute as @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{end_sprinter_wand:1}}}] anchored eyes positioned ^ ^ ^10 if block ~ ~ ~ #dod:gothru unless block ~ ~-0.5 ~ #dod:gothru run summon armor_stand ~ ~ ~ {Team:"end_sprinter_marker_green",NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:1b,Small:1b,Invisible:1b,Tags:["end_sprinter_marker"],DisabledSlots:4144959}

##Slow fall 
effect give @s[tag=end_sprinter_slow_fall] slow_falling 1 0 true
execute unless block ~ ~-1 ~ #dod:gothru run tag @s remove end_sprinter_slow_fall

##equip
give @s[tag=!equip] warped_fungus_on_a_stick{display:{Name:'{"text":"End Sprinter Wand","color":"dark_purple","italic":true}'},end_sprinter_wand:1} 1