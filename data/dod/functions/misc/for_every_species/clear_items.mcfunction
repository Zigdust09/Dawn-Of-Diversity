# Clears species items from players who are not that species

clear @a[tag=!end_sprinter] warped_fungus_on_a_stick{end_sprinter_wand:1}

clear @a[tag=!skyborn] elytra{skyborns_elytra:1}
clear @a[tag=!skyborn] leather_boots{skyborns_boots:1}

clear @a[tag=!puffer] trident{puffers_trident:1}

schedule function dod:misc/for_every_species/clear_items 2s append