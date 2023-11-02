
execute as @s[tag=!equip] run function dod:species/puffer/puffer_item_handle

execute unless entity @e[distance=0..50,nbt={Item:{id:"minecraft:conduit",Count:1b}}] run scoreboard players remove @s[scores={dod_puffer_air=0..}] dod_puffer_air 1
execute positioned ~ ~1 ~ if predicate dod:watercheck run scoreboard players set @s[nbt=!{RootVehicle:{Entity:{id:"minecraft:boat"}}}] dod_puffer_air 200


data modify storage dod:puffer_air air set value {"air":0}
execute store result storage dod:puffer_air air.air int 0.05 run scoreboard players get @s dod_puffer_air
execute as @s[predicate=!dod:watercheck,nbt=!{RootVehicle:{Entity:{id:"minecraft:boat"}}}] run function dod:species/puffer/puffer_air with storage dod:puffer_air air


effect give @s[nbt={SelectedItem:{id:"minecraft:trident"}}] strength 1 0 true

execute as @s[scores={dod_puffer_thrown_trident=1..}] run tag @e[type=trident,distance=..2] add puffer_trident
scoreboard players reset @s dod_puffer_thrown_trident

#execute as @e[type=trident,tag=puffer_trident,nbt={inGround:1b},tag=!puffer_trident_check] at @s rotated as @p[tag=puffer] run fill ^ ^ ^0.3 ^ ^ ^0.3 air destroy

