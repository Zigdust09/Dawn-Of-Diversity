execute as @s[tag=!equip] run function dod:species/serpenteer/serpenteer_item_handle

damage @s[scores={dod_food_apple=1..}] 10 generic
damage @s[scores={dod_food_baked_potato=1..}] 10 generic
damage @s[scores={dod_food_beetroot=1..}] 10 generic
damage @s[scores={dod_food_bowl=1..}] 10 generic
damage @s[scores={dod_food_bread=1..}] 10 generic
damage @s[scores={dod_food_carrot=1..}] 10 generic
damage @s[scores={dod_food_chorus_fruit=1..}] 10 generic
damage @s[scores={dod_food_cookie=1..}] 10 generic
damage @s[scores={dod_food_dried_kelp=1..}] 10 generic
damage @s[scores={dod_food_glow_berries=1..}] 10 generic
damage @s[scores={dod_food_golden_carrot=1..}] 10 generic
damage @s[scores={dod_food_melon_slice=1..}] 10 generic
damage @s[scores={dod_food_poisonus_potato=1..}] 10 generic
damage @s[scores={dod_food_potato=1..}] 10 generic
damage @s[scores={dod_food_pufferfish=1..}] 10 generic
damage @s[scores={dod_food_pumpkin_pie=1..}] 10 generic
damage @s[scores={dod_food_sweet_berries=1..}] 10 generic


execute if block ~ ~-1 ~ grass_block run effect give @s invisibility 1 0 true
execute if block ~ ~-2 ~ grass_block run effect give @s invisibility 1 0 true
execute if block ~ ~-3 ~ grass_block run effect give @s invisibility 1 0 true

effect clear @s poison

execute as @s[scores={dod_dammage_delt=1..}] run effect give @e[distance=..5.2,nbt={HurtTime:10s},tag=!serpenteer] poison 5 1