
##sets the health
execute as @s run function dod:misc/health/health_take_away

attribute @s[tag=end_sprinter] generic.max_health modifier add b4f655e8-c3be-4279-930e-07370ee99520 "end_sprinter" -4 add
     
attribute @s[tag=egg_shifter] generic.attack_damage modifier add d436f500-09a9-451c-b9f8-2ff3e80ecfca "egg_shifter_default_dmg" -10 add
attribute @s[tag=egg_shifter] generic.max_health modifier add 45c0c897-a8f5-4711-a73e-99c9dea59cf6 "egg_shifter" -2 add

attribute @s[tag=octo] generic.max_health modifier add 88243e2a-d936-4b5c-9f79-ce0f37698586 "octo" 4 add

attribute @s[tag=icelander] generic.max_health modifier add c1ff0cd7-71fd-4672-b11e-1e6865c50db6 "icelander" 2 add

attribute @s[tag=fireborn] generic.max_health modifier add 587d2ac9-7c5a-4070-bf54-c2c5e2bf0345 "fireborn" -2 add
attribute @s[tag=fireborn] generic.attack_damage modifier add 0d3e7042-5388-4c6f-910b-8f23974ce81a "fireborn_dmg" 4 add

attribute @s[tag=red_loki] generic.max_health modifier add c09f9528-85da-4019-abfa-2f634152cef7 "red_loki" -4 add
attribute @s[tag=red_loki] generic.attack_damage modifier add d47f4fd7-47df-43f0-a6e4-ff5aeef81633 "red_loki_dmg" -1 add

attribute @s[tag=floraling] generic.max_health modifier add 64d3a220-5722-4b6f-84f4-626586845d05 "floraling" -6 add

attribute @s[tag=warlock] generic.max_health modifier add 5dde4178-a6f7-4eec-b556-24023316e663 "warlock" 10 add

attribute @s[tag=spectral] generic.max_health modifier add 43265ded-dd3c-47b0-a1d1-63435221804a "spectral" -10 add

attribute @s[tag=dimen] generic.max_health modifier add ff071d47-63e4-4b6b-aea9-251c3e6372ed "dimen" -6 add

attribute @s[tag=bits] generic.max_health modifier add 595cd892-bcdc-4e3b-a914-961463d8ac78 "bits" 6 add

attribute @s[tag=phase_shifter] generic.max_health modifier add f3edc288-be89-4e29-b557-87e77933c6ec "phase_shifter" -8 add

attribute @s[tag=wolf_born] generic.max_health modifier add 808c5c67-a668-4411-83d0-219ad91de654 "wolf born" -8 add

attribute @s[tag=demonic] generic.max_health modifier add 808c5c67-a668-4411-83d0-219ad91de654 "demonic" -4 add


##resets everything
scoreboard players set @s dod_health_respawn 0
scoreboard players set @s dod_health_respawn_walk 0
effect give @s instant_health 1 34 true