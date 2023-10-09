##Schedule
schedule function dod:misc/2sec 2s replace
schedule function dod:misc/clear_items 2s replace
schedule function dod:misc/give_species_effects 10s replace

##Scoreboard Init
scoreboard objectives add end_sprinter_right_click minecraft.used:warped_fungus_on_a_stick
scoreboard objectives add dod_health_respawn minecraft.custom:deaths
scoreboard objectives add dod_health_respawn_walk minecraft.custom:walk_one_cm
scoreboard objectives add dod_species_y dummy
scoreboard objectives add dod_skyborn_sneak dummy
scoreboard objectives add dod_puffer_air dummy
scoreboard objectives add dod_puffer_puff dummy
scoreboard objectives add dod_nuzlock_1_is_on dummy
scoreboard objectives add dod_random_species_1_is_on dummy
scoreboard objectives add dod_species_trigger trigger
scoreboard objectives add dod_species_trigger_confirm trigger

#Team Init
team add end_sprinter_marker_green
team add end_sprinter_marker_yellow
team add end_sprinter_marker_red
team modify end_sprinter_marker_green color green
team modify end_sprinter_marker_yellow color yellow
team modify end_sprinter_marker_red color red

team add egg_shifter 
team modify egg_shifter collisionRule never