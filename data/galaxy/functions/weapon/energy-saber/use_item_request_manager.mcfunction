### Triggered with main detector, see functions/meta/detector/use_item

function galaxy:meta/detector/sneak
function galaxy:weapon/energy-saber/meta/detector/holding_energy-saber

# katana actions
execute if score #energy-saber_act_turn Config matches 1 run scoreboard players add @a[scores={isRClick=1,isSneak=1,isHoldSaber=1,statusSaber=0,reqActTurnOn=0}] reqActTurnOn 1
execute if score #energy-saber_act_turn Config matches 1 run scoreboard players add @a[scores={isRClick=1,isSneak=1,isHoldSaber=1,statusSaber=1,reqActTurnOff=0}] reqActTurnOff 1
