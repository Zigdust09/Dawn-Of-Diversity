particle wax_off ~ ~ ~ 0.1 0.1 0.1 0 2
scoreboard players add @s dod_copper_born_limit 1
tp @s ~ ~ ~

execute if score @s dod_copper_born_limit matches 4000.. run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace lightning_rod
execute if score @s dod_copper_born_limit matches 4000.. run summon tnt
execute if score World dod_optional_settings_1_is_on matches 1 if score @s dod_copper_born_limit matches 4000.. in the_end run tp @s ~ ~ ~


execute if score @s dod_copper_born_limit matches ..4000 if block ~ ~ ~ lightning_rod[facing=down] positioned ~ ~1 ~ run function dod:species/copper_born/copper_pipe
execute if score @s dod_copper_born_limit matches ..4000 if block ~ ~ ~ lightning_rod[facing=up] positioned ~ ~-1 ~ run function dod:species/copper_born/copper_pipe
execute if score @s dod_copper_born_limit matches ..4000 if block ~ ~ ~ lightning_rod[facing=west] positioned ~1 ~ ~ run function dod:species/copper_born/copper_pipe
execute if score @s dod_copper_born_limit matches ..4000 if block ~ ~ ~ lightning_rod[facing=east] positioned ~-1 ~ ~ run function dod:species/copper_born/copper_pipe
execute if score @s dod_copper_born_limit matches ..4000 if block ~ ~ ~ lightning_rod[facing=south] positioned ~ ~ ~-1 run function dod:species/copper_born/copper_pipe
execute if score @s dod_copper_born_limit matches ..4000 if block ~ ~ ~ lightning_rod[facing=north] positioned ~ ~ ~1 run function dod:species/copper_born/copper_pipe

