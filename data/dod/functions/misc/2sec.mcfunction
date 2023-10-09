##gives the book to new players
function dod:misc/bookgive


##runs the trigger commands
function dod:misc/trigger

##makes players pick a species
title @a[tag=!has_species] title "Pick a species"
effect give @a[tag=!has_species] blindness 4 5 true
effect give @a[tag=!has_species] mining_fatigue 4 5 true
effect give @a[tag=!has_species] jump_boost 4 200 true
effect give @a[tag=!has_species] slowness 4 255 true

##rescheduals the function to make it repeat
schedule function dod:misc/2sec 2s append