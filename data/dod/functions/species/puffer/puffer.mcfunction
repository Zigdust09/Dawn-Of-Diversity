##breath display and hurt
execute as @s[scores={dod_puffer_air=120..}] run effect give @s wither 1 1
execute as @s[scores={dod_puffer_air=1..20}] run title @s actionbar "oxegen:6"
execute as @s[scores={dod_puffer_air=21..40}] run title @s actionbar "oxegen:5"
execute as @s[scores={dod_puffer_air=41..60}] run title @s actionbar "oxegen:4"
execute as @s[scores={dod_puffer_air=61..80}] run title @s actionbar "oxegen:3"
execute as @s[scores={dod_puffer_air=81..100}] run title @s actionbar "oxegen:2"
execute as @s[scores={dod_puffer_air=101..120}] run title @s actionbar "oxegen:1"

##puff up
execute if predicate dod:sneak run scoreboard players add @s dod_puffer_puff 1
execute unless predicate dod:sneak if score @s dod_puffer_puff matches 0.. run scoreboard players remove @s dod_puffer_puff 1
execute as @s[scores={dod_puffer_puff=40..}] run effect give @e[distance=..10,tag=!puffer] poison 10 5 true

##air goes down
execute if block ~ ~1 ~ #dod:water run scoreboard players set @s dod_puffer_air 0
execute unless entity @e[type=item_frame,distance=0..50,nbt={Item:{id:"minecraft:conduit",Count:1b}}] run scoreboard players add @s dod_puffer_air 1


##trident
give @s[tag=!equip] trident{display:{Name:'{"text":"Puffers Trident","color":"blue","italic":true}'},Unbreakable:1b,puffers_trident:1,Enchantments:[{id:"minecraft:loyalty",lvl:3s}]} 1