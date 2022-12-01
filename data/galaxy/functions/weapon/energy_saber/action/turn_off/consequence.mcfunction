execute at @s run function galaxy:weapon/energy_saber/sound/action-turn_off
execute store result score @s sbrTurnOnCd run scoreboard players get #galaxy$weapon.energy_saber.action.turn_on.cd Config
