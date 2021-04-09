function galaxy:weapon/energy_saber/action/turn_off/sound
execute store result score @s sbrTurnOnCd run scoreboard players get #galaxy$energy_saber_act_turn_on_cd Config
