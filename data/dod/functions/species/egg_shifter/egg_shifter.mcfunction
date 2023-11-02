
execute as @s[tag=!equip] run function dod:species/egg_shifter/egg_shifter_item_handle

scoreboard players add @s[predicate=dod:sneak] dod_egg_shifter_time 1 
scoreboard players reset @s[predicate=!dod:sneak] dod_egg_shifter_time

give @s[scores={dod_egg_shifter_time=1200..}] egg{display:{Name:'{"text":"Rotten Egg","color":"green","italic":false}'},egg_shifter_rotten_egg:1b}
scoreboard players reset @s[scores={dod_egg_shifter_time=1200..}] dod_egg_shifter_time





execute if predicate dod:sneak unless entity @e[type=chicken,tag=egg_shifter_morph,distance=..2] run summon chicken ~ ~ ~ {Tags:["egg_shifter_morph"],Invulnerable:1b,DeathLootTable:"dod:blank"}

execute if predicate dod:sneak run tp @e[tag=egg_shifter_morph,limit=1,distance=..2] ~ ~ ~ ~ ~
execute if predicate dod:sneak as @e[tag=egg_shifter_morph,limit=1,distance=..2] at @s run function dod:species/egg_shifter/chicken_motion




execute if predicate dod:sneak as @s[tag=!egg_shifter_sneak] run function dod:species/egg_shifter/chicken_start
effect give @s[predicate=dod:sneak,scores={dod_fall_distace=2..}] slow_falling 1 3 true


execute unless predicate dod:sneak as @s[tag=egg_shifter_sneak] run function dod:species/egg_shifter/chicken_stop


execute if predicate dod:sneak run tag @s add egg_shifter_sneak
execute unless predicate dod:sneak run tag @s remove egg_shifter_sneak
