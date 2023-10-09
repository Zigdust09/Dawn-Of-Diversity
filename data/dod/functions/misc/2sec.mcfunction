##gives the book to new players
function dod:misc/bookgive

function dod:misc/trigger


title @a[tag=!no_species] title "Pick a species"
effect give @a[tag=!no_species] blindness 4 5 true
effect give @a[tag=!no_species] mining_fatigue 4 5 true
effect give @a[tag=!no_species] jump_boost 4 200 true
effect give @a[tag=!no_species] slowness 4 255 true


schedule function dod:misc/2sec 2s append