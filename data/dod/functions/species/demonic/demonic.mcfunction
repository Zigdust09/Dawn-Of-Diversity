execute as @s[tag=!equip] run function dod:species/demonic/demonic_item_handle




execute as @s[tag=dod_demonic_tentacle] run function dod:species/demonic/tentacle_code



execute as @s[predicate=dod:sneak,tag=!dod_demonic_sneaking,tag=dod_demonic_tentacle] run function dod:species/demonic/tentacle_on
execute as @s[predicate=dod:sneak,tag=!dod_demonic_sneaking,tag=!dod_demonic_tentacle] run function dod:species/demonic/tentacle_off

 damage @s[predicate=dod:watercheck,nbt=!{RootVehicle:{Entity:{id:"minecraft:boat"}}}] 4 freeze

tag @s[predicate=dod:sneak] add dod_demonic_sneaking
tag @s[predicate=!dod:sneak] remove dod_demonic_sneaking



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


