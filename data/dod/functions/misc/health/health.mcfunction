
##sets the health
attribute @s[tag=end_sprinter] generic.max_health modifier add b4f655e8-c3be-4279-930e-07370ee99520 "end_sprinter" -4 add

attribute @s[tag=puffer] generic.attack_damage modifier add b4f655e8-c3be-4279-930e-07370ee99520 "puffer" -3 add
     
attribute @s[tag=egg_shifter] generic.max_health modifier add 45c0c897-a8f5-4711-a73e-99c9dea59cf6 "egg_shifter" -2 add

##resets everything
scoreboard players set @s dod_health_respawn 0
scoreboard players set @s dod_health_respawn_walk 0
effect give @s instant_health 1 34 true