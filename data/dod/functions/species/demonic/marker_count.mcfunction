scoreboard players set @s dod_demonic_tentacle_marker_count 0
execute as @e[tag=dod_demonic_marker,distance=..10] if score @s dod_pid = @p[tag=demonic,distance=..2] dod_pid as @p[tag=demonic,distance=..2] run scoreboard players add @s dod_demonic_tentacle_marker_count 1
