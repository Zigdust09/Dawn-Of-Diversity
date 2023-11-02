execute as @a[tag=spectral,nbt=!{RootVehicle:{Entity:{id:"minecraft:boat"}}}] at @s if predicate dod:watercheck run damage @s 2 freeze

schedule function dod:species/spectral/1sec 1s append