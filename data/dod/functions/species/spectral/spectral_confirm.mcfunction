scoreboard players enable @s dod_species_trigger_confirm
scoreboard players reset @s dod_species_trigger
scoreboard players enable @s dod_species_trigger
tellraw @s {"text":"=-------------------=","color":"gold"}
tellraw @s {"text":"Dawn of Diversity confirm:","color":"gold"}

tellraw @s [{"text":"Are you sure you want to pick \nSpectral? : ","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger dod_species_trigger_confirm set 14"}},{"text":"[Confirm]","color":"green"}]



tellraw @s {"text":"=-------------------=","color":"gold"}