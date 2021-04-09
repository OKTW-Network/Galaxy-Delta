execute if entity @s[predicate=minecraft:sneaking,predicate=galaxy:weapon/hand_main-energy_saber,predicate=galaxy:hand_main-status0,scores={sbrTurnOnCd=0}] run tag @s add galaxy.reqSaberTurnOn
execute if entity @s[predicate=minecraft:sneaking,predicate=galaxy:weapon/hand_main-energy_saber,predicate=galaxy:hand_main-status1,scores={sbrTurnOffCd=0}] run tag @s add galaxy.reqSaberTurnOff

execute if entity @s[tag=galaxy.reqSaberTurnOn] run function galaxy:weapon/energy_saber/action/turn_on/main
execute if entity @s[tag=galaxy.reqSaberTurnOff] run function galaxy:weapon/energy_saber/action/turn_off/main

tag @s[tag=galaxy.reqSaberTurnOn] remove galaxy.reqSaberTurnOn
tag @s[tag=galaxy.reqSaberTurnOff] remove galaxy.reqSaberTurnOff
