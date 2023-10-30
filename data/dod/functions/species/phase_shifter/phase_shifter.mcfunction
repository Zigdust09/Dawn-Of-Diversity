execute as @s[tag=!equip] run function dod:species/phase_shifter/phase_shifter_item_handle

effect give @s[scores={dod_species_y=..50}] levitation 1 0 true
effect clear @s[scores={dod_species_y=50..}] levitation


ride @s[predicate=!dod:sneak] mount @e[type=arrow,distance=..3,sort=nearest,tag=!dod_arrow_check,limit=1,nbt={inGround:0b}]

effect give @s[scores={dod_fall_distace=2..}] slow_falling 1 3 true

damage @s[scores={dod_food_beef=1..}] 10 generic
damage @s[scores={dod_food_cooked_beef=1..}] 10 generic
damage @s[scores={dod_food_porkchop=1..}] 10 generic
damage @s[scores={dod_food_cooked_porkchop=1..}] 10 generic
damage @s[scores={dod_food_mutton=1..}] 10 generic
damage @s[scores={dod_food_cooked_mutton=1..}] 10 generic
damage @s[scores={dod_food_chicken=1..}] 10 generic
damage @s[scores={dod_food_cooked_chicken=1..}] 10 generic
damage @s[scores={dod_food_rabbit=1..}] 10 generic
damage @s[scores={dod_food_cooked_rabbit=1..}] 10 generic
damage @s[scores={dod_food_cod=1..}] 10 generic
damage @s[scores={dod_food_cooked_cod=1..}] 10 generic
damage @s[scores={dod_food_salmon=1..}] 10 generic
damage @s[scores={dod_food_cooked_salmon=1..}] 10 generic
damage @s[scores={dod_food_tropical_fish=1..}] 10 generic
damage @s[scores={dod_food_pufferfish=1..}] 10 generic
damage @s[scores={dod_food_rotten_flesh=1..}] 10 generic
damage @s[scores={dod_food_spider_eye=1..}] 10 generic