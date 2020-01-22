execute if score #energy_saber_act_turn_sound Config matches 1 at @s run playsound galaxy:energy_saber.turn_on player @a ~ ~ ~ 1

function galaxy:weapon/energy_saber/meta/detector/holding-energy_saber

execute if entity @s[scores={styleSaber=1}] run function galaxy:weapon/energy_saber/replace-hand_main/plasum_on
execute if entity @s[scores={styleSaber=2}] run function galaxy:weapon/energy_saber/replace-hand_main/ranbo_on

execute store result score @s cdActTurnOn run scoreboard players get #energy_saber_act_turn_on_cd Config
execute store result score @s cdActTurnOff run scoreboard players get #energy_saber_act_turn_off_cd Config
