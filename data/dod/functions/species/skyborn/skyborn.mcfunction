##sneak gives jump boost
effect give @s[predicate=dod:sneak] jump_boost 1 10 true

##sneak to fly
scoreboard players add @s[predicate=dod:sneak] dod_skyborn_sneak 1
scoreboard players set @s[predicate=!dod:sneak] dod_skyborn_sneak 0
effect give @s[scores={dod_skyborn_sneak=60..}] levitation 1 5 true

##cant go below y 80
effect give @s[scores={dod_species_y=..80}] levitation 1 5 true 
effect clear @s[scores={dod_species_y=80..},predicate=!dod:sneak] levitation

##boots and elytra
give @s[tag=!equip] elytra{display:{Name:'{"text":"Skyborns Elytra","color":"aqua","italic":true}'},Unbreakable:1b,skyborns_elytra:1} 1
give @s[tag=!equip] leather_boots{display:{Name:'{"text":"Skyfall Boots","color":"aqua","italic":true}',color:2555896},Unbreakable:1b,skyborns_boots:1,Enchantments:[{id:"minecraft:feather_falling",lvl:255s}]} 1