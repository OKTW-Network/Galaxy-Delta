### Triggered with main detector, see functions/meta/detector/use_item

function galaxy:meta/detector/sneak
function galaxy:weapon/energy_saber/meta/detector/holding-energy_saber

# katana actions
execute if score #energy_saber_act_turn Config matches 1 run scoreboard players add @a[scores={isRClick=1,isSneak=1,holdSaber=1,statusSaber=0,reqActTurnOn=0}] reqActTurnOn 1
execute if score #energy_saber_act_turn Config matches 1 run scoreboard players add @a[scores={isRClick=1,isSneak=1,holdSaber=1,statusSaber=1,reqActTurnOff=0}] reqActTurnOff 1
