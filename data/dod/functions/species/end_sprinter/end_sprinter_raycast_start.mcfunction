scoreboard players set @s dod_end_sprinter_raycast 120

scoreboard players set @s dod_end_sprinter_cooldown 60

playsound entity.enderman.teleport player @a[distance=..10] ~ ~ ~ 2 1

particle reverse_portal ~ ~ ~ 0.125 0.25 0.125 0 50 normal

function dod:species/end_sprinter/end_sprinter_raycast

