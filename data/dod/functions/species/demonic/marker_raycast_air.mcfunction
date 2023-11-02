tp @s ~ ~ ~
scoreboard players remove @s dod_demonic_marker_raycast_limit 1
execute if score @s dod_demonic_marker_raycast_limit matches 1.. if block ~ ~-1 ~ #dod:gothru positioned ~ ~-1 ~ run function dod:species/demonic/marker_raycast_air