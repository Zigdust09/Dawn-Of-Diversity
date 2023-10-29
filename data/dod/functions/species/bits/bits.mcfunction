execute as @s[tag=!equip] run function dod:species/bits/bits_item_handle


effect give @s[tag=dod_bits_fly,predicate=dod:sneak,x_rotation=..-89] slow_falling 1 0 true
effect give @s[tag=dod_bits_fly,predicate=!dod:sneak,x_rotation=-90] levitation 1 2 true
effect give @s[tag=dod_bits_fly] hunger 1 3 true
execute unless entity @s[x_rotation=-90] run effect give @s[tag=dod_bits_fly,predicate=!dod:sneak] levitation 1 255 true


effect give @s[scores={dod_fall_distace=2..}] slow_falling 1 3 true


execute as @s[predicate=dod:sneak] if block ~ ~-1 ~ #dod:gothru if block ~ ~-2 ~ #dod:gothru run tag @s add dod_bits_fly
tag @s[scores={dod_hunger_level=..6}] remove dod_bits_fly
execute unless block ~ ~-0.5 ~ #dod:gothru run tag @s remove dod_bits_fly

