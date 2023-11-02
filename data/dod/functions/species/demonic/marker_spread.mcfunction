data modify storage dod:demonic_marker_hight location.y set value {"y":0}
data modify storage dod:demonic_marker_hight location.x set value {"x":0}
data modify storage dod:demonic_marker_hight location.z set value {"z":0}


execute store result storage dod:demonic_marker_hight location.y int 1 run scoreboard players get @s dod_demonic_tentacle_marker_hight_store
execute store result storage dod:demonic_marker_hight location.x int 1 run random value -10..10
execute store result storage dod:demonic_marker_hight location.z int 1 run random value -10..10



function dod:species/demonic/marker_hight_set with storage dod:demonic_marker_hight location