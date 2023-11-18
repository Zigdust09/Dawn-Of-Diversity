clear @s echo_shard 32
particle minecraft:end_rod ~ ~ ~ 1 2 1 0 100 normal
playsound block.beacon.activate player @a[distance=..30] ~ ~ ~ 10 1 1
gamemode survival @s
kill @e[type=item,nbt={Item:{id:"minecraft:echo_shard",Count:32b}},distance=..2,limit=1]
execute as @a[distance=..5000] at @s run playsound block.beacon.activate player @s ~ ~ ~ 5 1 1
function dod:misc/admin_functions/remove_species_tags