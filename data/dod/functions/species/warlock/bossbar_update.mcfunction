data modify storage dod:bossbar_update bossbar.souls set value {"souls":0}
data modify storage dod:bossbar_update bossbar.pid set value {"pid":0}
execute store result storage dod:bossbar_update bossbar.souls int 1 run scoreboard players get @s dod_warlock_souls
execute store result storage dod:bossbar_update bossbar.pid int 1 run scoreboard players get @s dod_pid
function dod:species/warlock/bossbar_set_value with storage dod:bossbar_update bossbar