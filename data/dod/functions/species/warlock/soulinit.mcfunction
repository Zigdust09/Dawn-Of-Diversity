data modify storage dod:warlock_bossbar_make pid set value {"pid":0}
execute store result storage dod:warlock_bossbar_make pid.pid int 1 run scoreboard players get @s dod_pid
function dod:species/warlock/bossbar_create with storage dod:warlock_bossbar_make pid


tag @s add dod_warlock_soul_init