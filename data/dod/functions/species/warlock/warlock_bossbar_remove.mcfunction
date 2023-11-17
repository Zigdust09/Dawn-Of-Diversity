data modify storage dod:warlock_bossbar_make pid set value {"pid":0}
execute store result storage dod:warlock_bossbar_make pid.pid int 1 run scoreboard players get @s dod_pid
function dod:species/warlock/warlock_bossbar_remove_final with storage dod:warlock_bossbar_make pid