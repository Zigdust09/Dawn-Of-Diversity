execute as @s[tag=!equip] run function dod:species/puffer/puffer_item_handle


scoreboard players remove @s[scores={dod_puffer_air=0..}] dod_puffer_air 1
execute positioned ~ ~1 ~ if predicate dod:watercheck run scoreboard players set @s dod_puffer_air 200


data modify storage dod:puffer_air air set value {"air":0}
execute store result storage dod:puffer_air air.air int 0.05 run scoreboard players get @s dod_puffer_air
function dod:species/puffer/puffer_air with storage dod:puffer_air air


effect give @s[nbt={SelectedItem:{id:"minecraft:trident"}}] strength 1 0 true

