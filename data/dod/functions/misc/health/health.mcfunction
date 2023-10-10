##sets the health
attribute @s[tag=end_sprinter] generic.max_health modifier add b4f655e8-c3be-4279-930e-07370ee99520 "end_sprinter" -8 add

attribute @s[tag=egg_shifter] generic.max_health modifier add b4f655e8-c3be-4279-930e-07370ee99520 "end_sprinter" -2 add

##resets everything
scoreboard players set @s dod_health_respawn 0
scoreboard players set @s dod_health_respawn_walk 0
effect give @s instant_health 1 34 true