execute as @e[type=item,nbt={Item:{id:"minecraft:bone",Count:1b},OnGround:1b}] at @s on origin if entity @s[tag=wolf_born,level=5..] run function dod:species/wolf_born/summon_wolf
