execute unless score World dod_moon_night_math matches 1 as @a[tag=werewolf,predicate=dod:watercheck,nbt=!{RootVehicle:{Entity:{id:"minecraft:boat"}}}] run damage @s 3 freeze


execute as @a[tag=werewolf,nbt={Inventory:[{Slot:100b,id:"minecraft:iron_boots"} ]}] run damage @s 5
execute as @a[tag=werewolf,nbt={Inventory:[{Slot:101b,id:"minecraft:iron_leggings"} ]}] run damage @s 5
execute as @a[tag=werewolf,nbt={Inventory:[{Slot:102b,id:"minecraft:iron_chestplate"} ]}] run damage @s 5
execute as @a[tag=werewolf,nbt={Inventory:[{Slot:103b,id:"minecraft:iron_helmet"} ]}] run damage @s 5

schedule function dod:species/werewolf/werewolf_1sec 1s append