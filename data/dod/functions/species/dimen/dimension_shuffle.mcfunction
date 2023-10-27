item replace entity @s weapon.offhand with air
item replace entity @s weapon.mainhand with warped_fungus_on_a_stick{display:{Name:'{"text":"Dimension Transport","color":"dark_purple","italic":false}',Lore:['{"text":"Transports to a new dimension\\nPut in offhand to cycle"}']},Unbreakable:1b,CustomModelData:2008001003,dimens_wand:1b}


scoreboard players add @s dod_dimen_list 1

scoreboard players set @s[scores={dod_dimen_list=5..}] dod_dimen_list 1 