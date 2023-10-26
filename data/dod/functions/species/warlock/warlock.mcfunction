execute as @s[tag=!equip] run function dod:species/warlock/warlock_item_handle



execute as @s[tag=!dod_warlock_soul_init,tag=dod_pid_assign] run function dod:species/warlock/soulinit


execute as @s[scores={dod_warlock_souls=50..}] run particle soul ~ ~1 ~ 1 2 1 0 2 normal


effect give @s[scores={dod_warlock_souls=35..}] resistance 2 3 true
scoreboard players remove @s[scores={dod_player_dammage=1..}] dod_warlock_souls 2

scoreboard players set @s[scores={dod_warlock_souls=..0}] dod_warlock_souls 0
scoreboard players set @s[scores={dod_warlock_souls=100..}] dod_warlock_souls 100

effect give @s[scores={dod_warlock_souls=90..}] speed 2 3 true
effect give @s[scores={dod_warlock_souls=90..}] jump_boost 2 3 true
effect give @s[scores={dod_warlock_souls=90..}] night_vision 2 3 true
