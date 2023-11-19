scoreboard players remove @s dod_icelander_ray 1

execute align zxy positioned ^ ^ ^-1 run summon marker ~0.5 ~0.5 ~0.5 {Tags:[iceray_block]}
scoreboard players set @e[limit=1,sort=nearest,tag=iceray_block] dod_iceblock_timer 8
fill ^ ^ ^-1 ^ ^ ^-1 packed_ice replace #dod:gothru
effect give @e[distance=..5,tag=!icelander] slowness 10 2
execute as @e[distance=..5,tag=!icelander] run damage @s 4 freeze
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 ice replace #dod:water



execute if score @s dod_icelander_ray matches 1.. positioned ^ ^ ^1 if block ~ ~ ~ #dod:gothru run function dod:species/icelander/raycast