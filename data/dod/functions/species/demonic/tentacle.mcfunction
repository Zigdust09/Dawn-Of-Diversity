particle dust 0.694 0.153 0.153 1 ~ ~ ~ 0.02 0.02 0.02 0 1 force
execute unless entity @e[type=marker,tag=dod_demonic_marker,distance=..0.21] positioned ^ ^ ^0.2 run function dod:species/demonic/tentacle
execute as @e[type=!#dod:not_mob_player,distance=..1] run damage @s 1 on_fire
execute as @a[distance=..1,tag=!demonic] run damage @s 1 on_fire