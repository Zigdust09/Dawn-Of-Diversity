# Clears species items from players who are not that species

clear @a[tag=!skyborn] elytra{skyborns_elytra:1b}
clear @a[tag=!skyborn] iron_boots{skyborns_boots:1b}

clear @a[tag=!puffer] trident{puffers_trident:1b}

schedule function dod:misc/for_every_species/clear_items 2s append