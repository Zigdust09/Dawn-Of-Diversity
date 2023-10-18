execute unless score World dod_moon_night_math matches 1 as @a[tag=werewolf,predicate=dod:watercheck] run damage @s 3 freeze


effect give @s[nbt={Inventory:[{Slot:100b,id:"minecraft:iron_boots"} ]}] wither 3 1 true
effect give @s[nbt={Inventory:[{Slot:101b,id:"minecraft:iron_leggings"} ]}] wither 3 1 true
effect give @s[nbt={Inventory:[{Slot:102b,id:"minecraft:iron_chestplate"} ]}] wither 3 1 true
effect give @s[nbt={Inventory:[{Slot:103b,id:"minecraft:iron_helmet"} ]}] wither 3 1 true

schedule function dod:species/werewolf/werewolf_1sec 1s append