function dod:misc/food_score_reset

execute if entity @a[tag=icelander] run scoreboard players remove @e[tag=iceray_block] dod_iceblock_timer 1
execute as @e[tag=iceray_block,scores={dod_iceblock_timer=0}] at @s run function dod:species/icelander/iceblock_delete

schedule function dod:misc/1sec 1s append

execute as @a[tag=warlock] run function dod:species/warlock/bossbar_update