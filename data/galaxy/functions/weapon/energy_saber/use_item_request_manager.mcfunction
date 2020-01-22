### Triggered with main detector, see functions/meta/detector/use_item

function cu:detector/sneak
function galaxy:weapon/energy_saber/meta/detector/holding-energy_saber

scoreboard players set #calculation_temp10 numeric 0

# katana actions
execute if score #energy_saber_act_turn Config matches 1 if entity @s[tag=isSneak,scores={holdSaber=1,statusSaber=0,reqActTurnOn=0}] store success score #calculation_temp10 numeric run function galaxy:weapon/energy_saber/action/turn_on
execute if score #energy_saber_act_turn Config matches 1 if score #calculation_temp10 numeric matches 0 if entity @s[tag=isSneak,scores={holdSaber=1,statusSaber=1,reqActTurnOff=0}] run function galaxy:weapon/energy_saber/action/turn_on
