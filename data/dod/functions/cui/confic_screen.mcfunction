tellraw @s {"text":""}
tellraw @s {"text":""}
tellraw @s {"text":""}
tellraw @s {"text":""}
tellraw @s {"text":""}
tellraw @s {"text":""}
tellraw @s {"text":""}
tellraw @s {"text":""}
tellraw @s {"text":""}
tellraw @s {"text":""}
tellraw @s {"text":""}
tellraw @s {"text":""}
tellraw @s {"text":""}
tellraw @s {"text":""}
tellraw @s {"text":""}
tellraw @s {"text":""}
tellraw @s {"text":""}
tellraw @s {"text":"=-------------------=","color":"gold"}
tellraw @s {"text":"Dawn of Diversity settings:","color":"gold"}

execute if score World dod_nuzlock_1_is_on matches 1 run tellraw @s [{"text":"Nuzlock mode: ","color":"aqua"},{"text":"[On] ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function dod:cui/nuzlock_on"}},{"text":"[Off]","color":"gray","bold":true,"clickEvent":{"action":"run_command","value":"/function dod:cui/nuzlock_off"}}]

execute unless score World dod_nuzlock_1_is_on matches 1 run tellraw @s [{"text":"Nuzlock mode: ","color":"aqua"},{"text":"[On] ","color":"gray","bold":true,"clickEvent":{"action":"run_command","value":"/function dod:cui/nuzlock_on"}},{"text":"[Off]","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function dod:cui/nuzlock_off"}}]

execute if score World dod_random_species_1_is_on matches 1 run tellraw @s [{"text":"Species random mode: ","color":"aqua"},{"text":"[On] ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function dod:cui/random_species_on"}},{"text":"[Off]","color":"gray","bold":true,"clickEvent":{"action":"run_command","value":"/function dod:cui/random_species_off"}}]        

execute unless score World dod_random_species_1_is_on matches 1 run tellraw @s [{"text":"Species random mode: ","color":"aqua"},{"text":"[On] ","color":"gray","bold":true,"clickEvent":{"action":"run_command","value":"/function dod:cui/random_species_on"}},{"text":"[Off]","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function dod:cui/random_species_off"}}]


tellraw @s {"text":"=-------------------=","color":"gold"}