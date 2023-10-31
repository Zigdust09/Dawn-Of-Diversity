scoreboard players add @s dod_copper_born_oxidation 12000
scoreboard players set @s[scores={dod_copper_born_oxidation=48000..}] dod_copper_born_oxidation 48000

particle wax_off ~ ~1 ~ 0.25 0.5 0.25 0.1 10 
playsound item.axe.wax_off player @a[distance=.10] ~ ~ ~ 2 1

kill @e[type=item,distance=..2,limit=1,nbt={Item: {id: "minecraft:iron_axe", Count:1b}}]