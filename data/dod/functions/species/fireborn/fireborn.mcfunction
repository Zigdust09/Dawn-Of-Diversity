execute as @s[tag=!equip] run function dod:species/fireborn/fireborn_item_handle



execute as @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{fireborns_wand:1b}}},scores={dod_warped_right_click=1..}] unless score @s dod_fireborn_cooldown matches 1.. at @s run function dod:species/fireborn/fireball

damage @s[predicate=dod:watercheck,nbt=!{RootVehicle:{Entity:{id:"minecraft:boat"}}}] 10 freeze
damage @s[predicate=dod:rain,predicate=dod:check_sky] 10 freeze
damage @s[predicate=dod:thunder,predicate=dod:check_sky] 10 freeze
damage @s[predicate=dod:in_cold_biome] 1 freeze


execute as @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{fireborns_wand:1b}}},scores={dod_warped_right_click=1..}] if score @s dod_fireborn_cooldown matches 1..59 at @s run tellraw @s "Fireborn is on cooldown."

scoreboard players remove @s dod_fireborn_cooldown 1

execute if block ~ ~ ~ air run fill ~ ~-1 ~ ~ ~-1 ~ obsidian replace lava