#summon wolf ~ ~ ~ {Health:16f,CollarColor:0b,Tags:["dod_wolf_born_wolf"],Attributes:[{Name:generic.attack_damage,Base:4}]}

#Tags:["dod_wolf_born_wolf","dod_wolf_born_wolf_check"]

loot spawn ~ ~ ~ loot dod:get_player_head
summon wolf ~ ~ ~ {Health:16f,CollarColor:0b,Tags:["dod_wolf_born_wolf","dod_wolf_born_wolf_check"],active_effects:[{id:"minecraft:regeneration",amplifier:1b,duration:999999999,show_particles:0b}],Attributes:[{Name:generic.movement_speed,Base:0.35},{Name:generic.attack_damage,Base:4}]}
data modify entity @e[tag=dod_wolf_born_wolf,tag=dod_wolf_born_wolf_check,limit=1] Owner set from entity @e[type=item,limit=1,distance=..1,nbt={Item:{id:"minecraft:player_head"}},sort=nearest] Item.tag.SkullOwner.Id
kill @e[type=item,limit=1,distance=..1,nbt={Item:{id:"minecraft:player_head"}},sort=nearest]
tag @e[tag=dod_wolf_born_wolf_check] remove dod_wolf_born_wolf_check

xp add @s -5 levels

execute as @e[type=item,nbt={Item:{id:"minecraft:bone",Count:1b},OnGround:1b},limit=1,distance=..1,sort=nearest] run kill @s