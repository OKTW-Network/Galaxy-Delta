tag @s add galaxy._tag.ThisEntity
execute at @s run playsound galaxy:energy_saber.turn_off.self player @s ~ ~ ~
execute at @s run playsound galaxy:energy_saber.turn_off player @a[tag=!galaxy._tag.ThisEntity]
tag @s remove galaxy._tag.ThisEntity

execute store result score @s galaxy.energy_saber.turnOn.cooldown run scoreboard players get #galaxy$weapon.energy_saber.action.turn_on.cd Config
