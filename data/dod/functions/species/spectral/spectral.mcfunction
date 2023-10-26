execute as @s[tag=!equip] run function dod:species/spectral/spectral_item_handle



execute as @s[nbt={SelectedItem:{id:"minecraft:popped_chorus_fruit",tag:{spectrals_orb:1b}}},tag=!dod_holding_spectrals_orb,scores={dod_spectral_cooldown=..0}] run function dod:species/spectral/gamemode_start

execute as @s[nbt={SelectedItem:{id:"minecraft:popped_chorus_fruit",tag:{spectrals_orb:1b}}},tag=!dod_holding_spectrals_orb,scores={dod_spectral_cooldown=1..}] run tellraw @s "This is on cooldown"


execute as @s[tag=dod_spectral_phase_1] unless block ~ ~ ~ #dod:gothru run function dod:species/spectral/gamemode_phase_2

execute as @s[tag=dod_spectral_phase_2] if block ~ ~ ~ #dod:gothru run function dod:species/spectral/gamemode_phase_leave

execute as @s[tag=dod_spectral_specter] run function dod:species/spectral/gamemode_check

scoreboard players set @s[scores={dod_player_dammage=1..}] dod_spectral_cooldown 40
scoreboard players remove @s dod_spectral_cooldown 1

 
tag @s[nbt={SelectedItem:{id:"minecraft:popped_chorus_fruit",tag:{spectrals_orb:1b}}}] add dod_holding_spectrals_orb
tag @s[nbt=!{SelectedItem:{id:"minecraft:popped_chorus_fruit",tag:{spectrals_orb:1b}}}] remove dod_holding_spectrals_orb