scoreboard players set @s dod_demonic_marker_raycast_limit 20
execute if block ~ ~ ~ #dod:gothru run function dod:species/demonic/marker_raycast_air
execute unless block ~ ~ ~ #dod:gothru run function dod:species/demonic/marker_raycast_ground
kill @s[scores={dod_demonic_marker_raycast_limit=0}]