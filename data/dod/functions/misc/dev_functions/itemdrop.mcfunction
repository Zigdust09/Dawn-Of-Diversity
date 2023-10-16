summon item ~ ~ ~ {Item:{id:"dirt",Count:1},PickupDelay:10,Tags:[dod_item_drop]}
$data modify entity @e[type=item,distance=..1,sort=nearest,limit=1,tag=dod_item_drop] Item merge from entity @s Inventory[{Slot:$(slot)b}]
$item replace entity @s container.$(slot) with air
tag @e[type=item,distance=..1,sort=nearest,limit=1,tag=dod_item_drop] remove dod_item_drop