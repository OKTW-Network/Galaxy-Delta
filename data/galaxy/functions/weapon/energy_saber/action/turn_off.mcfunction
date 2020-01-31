execute if score #energy_saber_act_turn_sound Config matches 1 at @s run playsound galaxy:energy_saber.turn_off player @a ~ ~ ~ 1

function galaxy:weapon/energy_saber/meta/detector/style-energy_saber

execute if entity @s[scores={styleSaber=1}] run function galaxy:weapon/energy_saber/replace-hand_main/plasum_off
execute if entity @s[scores={styleSaber=2}] run function galaxy:weapon/energy_saber/replace-hand_main/ranbo_off

execute store result score @s cdSaberTurnOff run scoreboard players get #energy_saber_act_turn_off_cd Config
execute store result score @s cdSaberTurnOn run scoreboard players get #energy_saber_act_turn_on_cd Config
