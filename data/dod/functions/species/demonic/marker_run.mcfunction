execute store result score @s dod_pid run scoreboard players get @p[tag=demonic,distance=..1] dod_pid


execute store result score @s dod_demonic_tentacle_marker_hight_store run scoreboard players get @p[tag=demonic,distance=..2] dod_species_y
scoreboard players operation @s dod_demonic_tentacle_marker_hight_store += World dod_demonic_constant_10




function dod:species/demonic/marker_spread



execute at @s run function dod:species/demonic/marker_raycast




tag @s remove dod_demonic_marker_check