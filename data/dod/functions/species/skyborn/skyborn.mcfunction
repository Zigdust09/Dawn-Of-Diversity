
execute as @s[tag=!equip] run function dod:species/skyborn/skyborn_item_handle


effect give @s[scores={dod_species_y=..50}] levitation 1 0 true
effect clear @s[scores={dod_species_y=50..}] levitation

effect give @s[scores={dod_species_y=100..,dod_hunger_level=..10}] saturation 1 0 true


data modify storage dod:skyborn_crit hight set value {"hight":0}
execute store result storage dod:skyborn_crit hight.hight int 1 run scoreboard players get @s dod_fall_distace
function dod:species/skyborn/skyborn_crit with storage dod:skyborn_crit hight
