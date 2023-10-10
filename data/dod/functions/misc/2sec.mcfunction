##gives the book to new players
function dod:misc/bookgive

## adds the species manipulation code
function dod:misc/species_manipulation_check


##runs the trigger commands
function dod:misc/for_every_species/trigger


##rescheduals the function to make it repeat
schedule function dod:misc/2sec 2s append


execute if score World dod_random_species_1_is_on matches 1 as @a[tag=!has_species,tag=!dod_rnd_has_all_species] run function dod:misc/for_every_species/rnd



##runs the "pick a species" code
function dod:misc/pick_a_species




