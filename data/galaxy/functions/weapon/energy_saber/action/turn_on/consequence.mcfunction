tag @s add galaxy._tag.ThisEntity
execute at @s run playsound galaxy:energy_saber.turn_on.self player @s ~ ~ ~
execute at @s run playsound galaxy:energy_saber.turn_on player @a[tag=!galaxy._tag.ThisEntity]
tag @s remove galaxy._tag.ThisEntity

execute store result score @s galaxy.energy_saber.turnOff.cooldown run scoreboard players get #galaxy$weapon.energy_saber.action.turn_off.cd Config
