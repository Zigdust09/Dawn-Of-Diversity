scoreboard players enable @s dod_species_trigger_confirm
scoreboard players reset @s dod_species_trigger
scoreboard players enable @s dod_species_trigger
tellraw @p {"text":"=-------------------=","color":"gold"}
tellraw @p {"text":"Dawn of Diversity confirm:","color":"gold"}

tellraw @p [{"text":"Are you sure you want to pick \nEnd Sprinter? : ","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger dod_species_trigger_confirm set 1"}},{"text":"[Confirm]","color":"green"}]



tellraw @p {"text":"=-------------------=","color":"gold"}