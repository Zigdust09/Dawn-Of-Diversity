##Schedule
schedule function dod:misc/2sec 2s replace
schedule function dod:misc/for_every_species/clear_items 2s replace
schedule function dod:misc/for_every_species/give_species_effects 10s replace
schedule function dod:species/end_sprinter/end_sprinter_1sec 1s replace
schedule function dod:species/puffer/puffer_1_sec 1s replace
schedule function dod:misc/1sec 1s replace
schedule function dod:species/werewolf/werewolf_1sec 1s replace


##Scoreboard Init
scoreboard objectives add dod_pid dummy

scoreboard objectives add dod_warped_right_click minecraft.used:warped_fungus_on_a_stick
scoreboard objectives add dod_health_respawn minecraft.custom:deaths
scoreboard objectives add dod_health_respawn_walk minecraft.custom:walk_one_cm
scoreboard objectives add dod_red_loki_speed dummy
scoreboard objectives add dod_warlock_dammage minecraft.custom:damage_taken
scoreboard objectives add dod_icelander_cooldown dummy
scoreboard objectives add dod_dammage_delt minecraft.custom:damage_dealt
scoreboard objectives add dod_fireborn_cooldown dummy
scoreboard objectives add dod_fireborn_fireball_time dummy
scoreboard objectives add dod_species_y dummy
scoreboard objectives add dod_fire_time dummy
scoreboard objectives add dod_warlock_souls minecraft.custom:mob_kills
scoreboard objectives add dod_egg_shifter_time dummy
scoreboard objectives add dod_skyborn_sneak dummy
scoreboard objectives add dod_icelander_ray dummy
scoreboard objectives add dod_night_walker_amethyst minecraft.dropped:amethyst_block
scoreboard objectives add dod_red_loki_sugar minecraft.dropped:sugar
scoreboard objectives add dod_iceblock_timer dummy
scoreboard objectives add dod_moon_night_math dummy
scoreboard objectives add dod_puffer_air dummy
scoreboard objectives add dod_moon_constant_8 dummy
scoreboard objectives add dod_moon_constant_1 dummy
scoreboard objectives add dod_octo_still dummy
scoreboard objectives add dod_hp dummy
scoreboard objectives add dod_nuzlock_1_is_on dummy
scoreboard objectives add dod_egg_shifter_gamemode dummy
scoreboard objectives add dod_permadeath_1_is_on dummy
scoreboard objectives add dod_random_species_1_is_on dummy
scoreboard objectives add dod_puffer_thrown_trident minecraft.used:minecraft.trident
scoreboard objectives add dod_hunger_level dummy
scoreboard objectives add dod_fall_distace dummy
scoreboard objectives add dod_species_trigger trigger
scoreboard objectives add dod_species_trigger_confirm trigger
scoreboard objectives add dod_random_store dummy

scoreboard objectives add dod_end_sprinter_raycast dummy
scoreboard objectives add dod_end_sprinter_cooldown dummy
scoreboard objectives add dod_species_change_limit dummy
scoreboard objectives add dod_world_init dummy


scoreboard objectives add movement_1x dummy
scoreboard objectives add movement_1y dummy
scoreboard objectives add movement_1z dummy

scoreboard objectives add movement_2x dummy
scoreboard objectives add movement_2y dummy
scoreboard objectives add movement_2z dummy



scoreboard objectives add dod_food_apple minecraft.used:minecraft.apple
scoreboard objectives add dod_food_golden_apple minecraft.used:minecraft.golden_apple
scoreboard objectives add dod_food_melon_slice minecraft.used:minecraft.melon_slice
scoreboard objectives add dod_food_sweet_berries minecraft.used:minecraft.sweet_berries
scoreboard objectives add dod_food_glow_berries minecraft.used:minecraft.glow_berries
scoreboard objectives add dod_food_chorus_fruit minecraft.used:minecraft.chorus_fruit
scoreboard objectives add dod_food_carrot minecraft.used:minecraft.carrot
scoreboard objectives add dod_food_golden_carrot minecraft.used:minecraft.golden_carrot
scoreboard objectives add dod_food_potato minecraft.used:minecraft.potato
scoreboard objectives add dod_food_baked_potato minecraft.used:minecraft.baked_potato
scoreboard objectives add dod_food_poisonus_potato minecraft.used:minecraft.poisonous_potato
scoreboard objectives add dod_food_beetroot minecraft.used:minecraft.beetroot
scoreboard objectives add dod_food_dried_kelp minecraft.used:minecraft.dried_kelp
scoreboard objectives add dod_food_beef minecraft.used:minecraft.beef
scoreboard objectives add dod_food_cooked_beef minecraft.used:minecraft.cooked_beef
scoreboard objectives add dod_food_porkchop minecraft.used:minecraft.porkchop
scoreboard objectives add dod_food_cooked_porkchop minecraft.used:minecraft.cooked_porkchop
scoreboard objectives add dod_food_mutton minecraft.used:minecraft.mutton
scoreboard objectives add dod_food_cooked_mutton minecraft.used:minecraft.cooked_mutton
scoreboard objectives add dod_food_chicken minecraft.used:minecraft.chicken
scoreboard objectives add dod_food_cooked_chicken minecraft.used:minecraft.cooked_chicken
scoreboard objectives add dod_food_rabbit minecraft.used:minecraft.rabbit
scoreboard objectives add dod_food_cooked_rabbit minecraft.used:minecraft.cooked_rabbit
scoreboard objectives add dod_food_cod minecraft.used:minecraft.cod
scoreboard objectives add dod_food_cooked_cod minecraft.used:minecraft.cooked_cod
scoreboard objectives add dod_food_salmon minecraft.used:minecraft.salmon
scoreboard objectives add dod_food_cooked_salmon minecraft.used:minecraft.cooked_salmon
scoreboard objectives add dod_food_tropical_fish minecraft.used:minecraft.tropical_fish
scoreboard objectives add dod_food_pufferfish minecraft.used:minecraft.pufferfish
scoreboard objectives add dod_food_bread minecraft.used:minecraft.bread
scoreboard objectives add dod_food_cookie minecraft.used:minecraft.cookie
scoreboard objectives add dod_food_pumpkin_pie minecraft.used:minecraft.pumpkin_pie
scoreboard objectives add dod_food_rotten_flesh minecraft.used:minecraft.rotten_flesh
scoreboard objectives add dod_food_spider_eye minecraft.used:minecraft.spider_eye
scoreboard objectives add dod_food_bowl minecraft.used:minecraft.bowl
scoreboard objectives add dod_potions_drank minecraft.used:minecraft.glass_bottle


#Team Init

team add egg_shifter 
team modify egg_shifter collisionRule never