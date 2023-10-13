execute as @a[tag=end_sprinter,predicate=dod:watercheck] at @s unless entity @e[distance=0..30,nbt={Item:{id:"minecraft:netherite_block",Count:1b}}] run damage @s 3 minecraft:generic




schedule function dod:species/end_sprinter/end_sprinter_1sec 1s append