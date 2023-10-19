execute as @s[tag=!equip] run function dod:species/icelander/icelander_item_handle

execute if block ~ ~-1 ~ packed_ice run effect give @s speed 1 20 true
execute if block ~ ~-1 ~ blue_ice run effect give @s speed 1 20 true


damage @s[scores={dod_fire_time=1..}] 6 on_fire




execute as @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{icelanders_wand:1b}}},scores={dod_warped_right_click=1..}] unless score @s dod_icelander_cooldown matches 1.. at @s run function dod:species/icelander/iceray_start



execute as @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{icelanders_wand:1b}}},scores={dod_warped_right_click=1..}] if score @s dod_icelander_cooldown matches 1..89 at @s run tellraw @s "Iceray is on cooldown."

scoreboard players remove @s dod_icelander_cooldown 1
