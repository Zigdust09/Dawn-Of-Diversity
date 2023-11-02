particle campfire_signal_smoke ~ ~ ~ 2 2 2 0 2000 force @a[distance=..100] 
effect give @a[distance=..8] invisibility 25 0 true
tag @a[distance=..8,gamemode=survival] add egg_shifter_smoke
gamemode spectator @a[tag=egg_shifter_smoke]
scoreboard players set @a[tag=egg_shifter_smoke] dod_egg_shifter_gamemode 3


kill @s