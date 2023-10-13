execute as @s[tag=!equip] run function dod:species/end_sprinter/end_sprinter_item_handle


execute as @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{end_sprinters_wand:1b}}},scores={end_sprinter_right_click=1..}] unless score @s dod_end_sprinter_cooldown matches 1.. at @s anchored eyes run function dod:species/end_sprinter/end_sprinter_raycast_start



execute as @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{end_sprinters_wand:1b}}},scores={end_sprinter_right_click=1..}] if score @s dod_end_sprinter_cooldown matches 1..59 at @s run tellraw @s "Teleporting is on cooldown."
execute as @s[scores={end_sprinter_right_click=1..}] run scoreboard players set @s end_sprinter_right_click 0

scoreboard players remove @s[scores={dod_end_sprinter_cooldown=1..}] dod_end_sprinter_cooldown 1

effect give @e[type=enderman,distance=..5] weakness 1 255 true
effect give @e[type=endermite,distance=..5] weakness 1 255 true

