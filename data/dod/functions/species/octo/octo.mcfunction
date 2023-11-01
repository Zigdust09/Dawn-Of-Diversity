execute as @s[tag=!equip] run function dod:species/octo/octo_item_handle



effect give @s[predicate=!dod:watercheck] blindness 3 1 true

effect give @s[scores={dod_hp=..12}] invisibility 3 1 false
effect give @s[scores={dod_hp=..1}] invisibility 3 1 true


scoreboard players add @s dod_octo_still 1
execute unless entity @e[tag=octo_mark,distance=..0.1] run scoreboard players reset @s dod_octo_still
execute unless entity @e[tag=octo_mark,distance=..10] run summon marker ~ ~ ~ {Tags:[octo_mark]}
tp @e[tag=octo_mark,distance=..10,limit=1,sort=nearest] ~ ~ ~



data modify storage dod:octo_dmg still_time set value {"still_time":0}
execute store result storage dod:octo_dmg still_time.still_time int 0.003 run scoreboard players get @s dod_octo_still
execute if score @s dod_octo_still matches 500.. run function dod:species/octo/octo_dmg with storage dod:octo_dmg still_time

