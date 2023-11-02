execute as @s[tag=!equip] run function dod:species/floraling/floraling_item_handle


execute if block ~ ~ ~ torchflower run effect give @s night_vision 60 0 true
execute if block ~ ~ ~ white_tulip run effect give @s invisibility 60 0 true
execute if block ~ ~ ~ cornflower run effect give @s jump_boost 60 1 true
execute if block ~ ~ ~ allium run effect give @s fire_resistance 60 0 true
execute if block ~ ~ ~ blue_orchid run effect give @s speed 60 1 true
execute if block ~ ~ ~ peony run effect give @s slowness 60 0 true
execute if block ~ ~ ~ lilac run effect give @s slowness 20 3 true
execute if block ~ ~ ~ lilac run effect give @s resistance 10 3 true
execute if block ~ ~ ~ dandelion run effect give @s water_breathing 60 0 true
execute if block ~ ~ ~ red_tulip run effect give @s instant_health 1 0 true
execute if block ~ ~ ~ lily_of_the_valley run effect give @s poison 60 0 true
execute if block ~ ~ ~ oxeye_daisy run effect give @s regeneration 60 0 true
execute if block ~ ~ ~ orange_tulip run effect give @s weakness 60 0 true
execute if block ~ ~ ~ rose_bush run effect give @s strength 30 0 true
execute if block ~ ~ ~ pink_petals run effect give @s luck 60 0 true
execute if block ~ ~ ~ pink_tulip run effect give @s instant_damage 1 0 true
execute if block ~ ~ ~ azure_bluet run effect give @s slow_falling 60 0 true
execute if block ~ ~ ~ pitcher_plant run effect give @s saturation 60 0 true
execute if block ~ ~ ~ poppy run effect give @s blindness 60 0 true
execute if block ~ ~ ~ wither_rose run effect give @s wither 20 0 true
execute if block ~ ~ ~ sunflower run effect give @s glowing 60 0 true
execute if block ~ ~ ~ spore_blossom run effect give @s poison 6000 0 true
execute if block ~ ~-1 ~ chorus_flower run effect give @s levitation 30 5 true




execute if block ~ ~ ~ #dod:flowers run particle block moss_block ~ ~ ~ 0 0 0 1 30 force
execute if block ~ ~ ~ #dod:flowers run playsound entity.player.burp player @a[distance=..10] ~ ~ ~ 3 1
execute if block ~ ~ ~ #dod:flowers run setblock ~ ~ ~ air



damage @s[scores={dod_food_beef=1..}] 10 generic
damage @s[scores={dod_food_chicken=1..}] 10 generic
damage @s[scores={dod_food_cod=1..}] 10 generic
damage @s[scores={dod_food_cooked_beef=1..}] 10 generic
damage @s[scores={dod_food_cooked_chicken=1..}] 10 generic
damage @s[scores={dod_food_cooked_cod=1..}] 10 generic
damage @s[scores={dod_food_cooked_mutton=1..}] 10 generic
damage @s[scores={dod_food_cooked_porkchop=1..}] 10 generic
damage @s[scores={dod_food_cooked_rabbit=1..}] 10 generic
damage @s[scores={dod_food_cooked_salmon=1..}] 10 generic
damage @s[scores={dod_food_mutton=1..}] 10 generic
damage @s[scores={dod_food_porkchop=1..}] 10 generic
damage @s[scores={dod_food_rabbit=1..}] 10 generic
damage @s[scores={dod_food_rotten_flesh=1..}] 10 generic
damage @s[scores={dod_food_pufferfish=1..}] 10 generic
damage @s[scores={dod_food_salmon=1..}] 10 generic
damage @s[scores={dod_food_tropical_fish=1..}] 10 generic
