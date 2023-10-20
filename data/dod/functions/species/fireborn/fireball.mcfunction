scoreboard players set @s dod_fireborn_cooldown 60
kill @e[type=fireball,distance=..3]
execute positioned ~ ~1 ~ positioned ^ ^ ^2 run summon fireball ~ ~ ~ {HasVisualFire:0b,ExplosionPower:2b,Item:{id:"minecraft:blaze_powder",Count:1b},Tags:[fireborns_fireball]}