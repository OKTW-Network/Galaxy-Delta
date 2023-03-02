execute if entity @s[predicate=minecraft:entity_properties/sneaking,predicate=galaxy:weapon/energy_saber/posture,predicate=galaxy:weapon/energy_saber/hand_main-inactive,scores={galaxy.energy_saber.turnOn.cooldown=0}] run tag @s add galaxy._request.energy_saber.turnOn
execute if entity @s[predicate=minecraft:entity_properties/sneaking,predicate=galaxy:weapon/energy_saber/posture,predicate=galaxy:weapon/energy_saber/hand_main-active,scores={galaxy.energy_saber.turnOff.cooldown=0}] run tag @s add galaxy._request.energy_saber.turnOff

execute if entity @s[tag=galaxy._request.energy_saber.turnOn] run function galaxy:weapon/energy_saber/action/turn_on/main
execute if entity @s[tag=galaxy._request.energy_saber.turnOff] run function galaxy:weapon/energy_saber/action/turn_off/main

tag @s[tag=galaxy._request.energy_saber.turnOn] remove galaxy._request.energy_saber.turnOn
tag @s[tag=galaxy._request.energy_saber.turnOff] remove galaxy._request.energy_saber.turnOff
