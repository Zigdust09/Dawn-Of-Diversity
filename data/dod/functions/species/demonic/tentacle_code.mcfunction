function dod:species/demonic/marker_count

execute as @s[scores={dod_demonic_tentacle_marker_count=..3}] run function dod:species/demonic/summon_marker

data modify storage dod:demonic_pid pid set value {"pid":0}
execute store result storage dod:demonic_pid pid.pid int 1 run scoreboard players get @s dod_pid
function dod:species/demonic/tentacle_aim with storage dod:demonic_pid pid

execute if entity @e[type=marker,tag=dod_demonic_marker,distance=..9] run effect give @s[x_rotation=75..90] slow_falling 1 0 true
execute if entity @e[type=marker,tag=dod_demonic_marker,distance=..9] run effect give @s[x_rotation=-90..75] levitation 1 1 true

