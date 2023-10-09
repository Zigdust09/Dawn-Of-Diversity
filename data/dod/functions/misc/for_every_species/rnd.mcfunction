     ##kill any item for the loop
execute positioned ~ ~5 ~ run kill @e[nbt={Item:{tag:{is_species_item:1}}},distance=..1]
function dod:misc/species_remove
#summon new item
loot spawn ~ ~5 ~ loot dod:species_rnd_pick



##if you have it already go again
execute positioned ~ ~5 ~ if entity @e[nbt={Item:{tag:{species:template}}},distance=..1] as @s[tag=template_has_been] positioned ~ ~-5 ~ run function dod:misc/rnd
execute positioned ~ ~5 ~ if entity @e[nbt={Item:{tag:{species:template}}},distance=..1] as @s[tag=template] positioned ~ ~-5 ~ run function dod:misc/rnd
execute positioned ~ ~5 ~ if entity @e[nbt={Item:{tag:{species:template}}},distance=..1] as @s[tag=!template,tag=!template_has_been] at @s run tellraw @a[distance=0..] [{"selector":"@p","bold":true,"italic":true},{"text":" Is now a Template"}]
#gives you the tag
execute positioned ~ ~5 ~ if entity @e[nbt={Item:{tag:{species:template}}},distance=..1] as @s[tag=!template,tag=!template_has_been] run function dod:species/template/template_rnd

##if you have it already go again
execute positioned ~ ~5 ~ if entity @e[nbt={Item:{tag:{species:end_sprinter}}},distance=..1] as @s[tag=end_sprinter_has_been] positioned ~ ~-5 ~ run function dod:misc/rnd
execute positioned ~ ~5 ~ if entity @e[nbt={Item:{tag:{species:end_sprinter}}},distance=..1] as @s[tag=end_sprinter] positioned ~ ~-5 ~ run function dod:misc/rnd
execute positioned ~ ~5 ~ if entity @e[nbt={Item:{tag:{species:end_sprinter}}},distance=..1] as @s[tag=!end_sprinter,tag=!end_sprinter_has_been] at @s run tellraw @a[distance=0..] [{"selector":"@p","bold":true,"italic":true},{"text":" Is now a End Sprinter"}]
#gives you the tag
execute positioned ~ ~5 ~ if entity @e[nbt={Item:{tag:{species:end_sprinter}}},distance=..1] as @s[tag=!end_sprinter,tag=!end_sprinter_has_been] run function dod:species/end_sprinter/end_sprinter_rnd


##if you have it already go again
execute positioned ~ ~5 ~ if entity @e[nbt={Item:{tag:{species:skyborn}}},distance=..1] as @s[tag=skyborn_has_been] positioned ~ ~-5 ~ run function dod:misc/rnd
execute positioned ~ ~5 ~ if entity @e[nbt={Item:{tag:{species:skyborn}}},distance=..1] as @s[tag=skyborn] positioned ~ ~-5 ~ run function dod:misc/rnd
execute positioned ~ ~5 ~ if entity @e[nbt={Item:{tag:{species:skyborn}}},distance=..1] as @s[tag=!skyborn,tag=!skyborn_has_been] at @s run tellraw @a[distance=0..] [{"selector":"@p","bold":true,"italic":true},{"text":" Is now a Skyborn"}]
#gives you the tag
execute positioned ~ ~5 ~ if entity @e[nbt={Item:{tag:{species:skyborn}}},distance=..1] as @s[tag=!skyborn,tag=!skyborn_has_been] run function dod:species/skyborn/skyborn_rnd




##if you have it already go again
execute positioned ~ ~5 ~ if entity @e[nbt={Item:{tag:{species:puffer}}},distance=..1] as @s[tag=puffer_has_been] positioned ~ ~-5 ~ run function dod:misc/rnd
execute positioned ~ ~5 ~ if entity @e[nbt={Item:{tag:{species:puffer}}},distance=..1] as @s[tag=puffer] positioned ~ ~-5 ~ run function dod:misc/rnd
execute positioned ~ ~5 ~ if entity @e[nbt={Item:{tag:{species:puffer}}},distance=..1] as @s[tag=!puffer,tag=!puffer_has_been] at @s run tellraw @a[distance=0..] [{"selector":"@p","bold":true,"italic":true},{"text":" Is now a Puffer"}]
#gives you the tag
execute positioned ~ ~5 ~ if entity @e[nbt={Item:{tag:{species:puffer}}},distance=..1] as @s[tag=!puffer,tag=!puffer_has_been] run function dod:species/puffer/puffer_rnd

##if you have it already go again
execute positioned ~ ~5 ~ if entity @e[nbt={Item:{tag:{species:night_walker}}},distance=..1] as @s[tag=night_walker_has_been] positioned ~ ~-5 ~ run function dod:misc/rnd
execute positioned ~ ~5 ~ if entity @e[nbt={Item:{tag:{species:night_walker}}},distance=..1] as @s[tag=night_walker] positioned ~ ~-5 ~ run function dod:misc/rnd
execute positioned ~ ~5 ~ if entity @e[nbt={Item:{tag:{species:night_walker}}},distance=..1] as @s[tag=!night_walker,tag=!night_walker_has_been] at @s run tellraw @a[distance=0..] [{"selector":"@p","bold":true,"italic":true},{"text":" Is now a Night Walker"}]
#gives you the tag
execute positioned ~ ~5 ~ if entity @e[nbt={Item:{tag:{species:night_walker}}},distance=..1] as @s[tag=!night_walker,tag=!night_walker_has_been] run function dod:species/night_walker/night_walker_rnd



##if you have it already go again
execute positioned ~ ~5 ~ if entity @e[nbt={Item:{tag:{species:egg_shifter}}},distance=..1] as @s[tag=egg_shifter_has_been] positioned ~ ~-5 ~ run function dod:misc/rnd
execute positioned ~ ~5 ~ if entity @e[nbt={Item:{tag:{species:egg_shifter}}},distance=..1] as @s[tag=egg_shifter] positioned ~ ~-5 ~ run function dod:misc/rnd
execute positioned ~ ~5 ~ if entity @e[nbt={Item:{tag:{species:egg_shifter}}},distance=..1] as @s[tag=!egg_shifter,tag=!egg_shifter_has_been] at @s run tellraw @a[distance=0..] [{"selector":"@p","bold":true,"italic":true},{"text":" Is now a Egg Shifter"}]
#gives you the tag
execute positioned ~ ~5 ~ if entity @e[nbt={Item:{tag:{species:egg_shifter}}},distance=..1] as @s[tag=!egg_shifter,tag=!egg_shifter_has_been] run function dod:species/egg_shifter/egg_shifter_rnd



### Species marker 


##kills the leftover item
execute positioned ~ ~5 ~ run kill @e[nbt={Item:{tag:{is_species_item:1}}},distance=..1]


execute as @s[tag=end_sprinter_has_been,tag=skyborn_has_been,tag=puffer_has_been,tag=night_walker_has_been,tag=egg_shifter_has_been] run function dod:misc/stop
