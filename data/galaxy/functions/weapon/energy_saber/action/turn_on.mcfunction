execute as @a[scores={reqActTurnOn=1}] at @s if score #energy_saber_act_turn_sound Config matches 1 run playsound galaxy:energy_saber.turn_on player @a[distance=..32] ~ ~ ~ 1 1 0.2

execute as @a[scores={reqActTurnOn=1}] run function galaxy:weapon/energy_saber/meta/detector/holding-energy_saber

execute as @a[scores={reqActTurnOn=1,styleSaber=1}] run function galaxy:weapon/energy_saber/replace-hand_main/plasum_on
execute as @a[scores={reqActTurnOn=1,styleSaber=2}] run function galaxy:weapon/energy_saber/replace-hand_main/ranbo_on

execute as @a[scores={reqActTurnOn=1}] store result score @s cdActTurnOn run scoreboard players get #energy_saber_act_turn_on_cd Config
execute as @a[scores={reqActTurnOn=1}] store result score @s cdActTurnOff run scoreboard players get #energy_saber_act_turn_off_cd Config
