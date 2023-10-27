execute as @s[tag=!equip] run function dod:species/dimen/dimen_item_handle


execute as @s[nbt=!{SelectedItem:{}},nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:-106b,tag:{dimens_wand:1b}}]}] at @s run function dod:species/dimen/dimension_shuffle

execute as @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{dimens_wand:1b}}},scores={dod_warped_right_click=1..}] run function dod:species/dimen/swap_dimension_start

execute as @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{dimens_wand:1b}}}] run function dod:species/dimen/dimension_title