# katana actions
execute if score #energy_saber_act_turn Config matches 1 if entity @s[predicate=minecraft:sneaking,predicate=galaxy:weapon/hand_main-energy_saber,predicate=galaxy:hand_main-status0,scores={cdSaberTurnOn=0}] run tag @s add reqSaberTurnOn
execute if score #energy_saber_act_turn Config matches 1 if entity @s[predicate=minecraft:sneaking,predicate=galaxy:weapon/hand_main-energy_saber,predicate=galaxy:hand_main-status1,scores={cdSaberTurnOff=0}] run tag @s add reqSaberTurnOff

execute if entity @s[tag=reqSaberTurnOn] run function galaxy:weapon/energy_saber/action/turn_on
execute if entity @s[tag=reqSaberTurnOff] run function galaxy:weapon/energy_saber/action/turn_off

execute if entity @s[tag=reqSaberTurnOn] run tag @s remove reqSaberTurnOn
execute if entity @s[tag=reqSaberTurnOff] run tag @s remove reqSaberTurnOff
