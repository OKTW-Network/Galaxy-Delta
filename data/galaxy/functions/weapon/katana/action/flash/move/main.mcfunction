function galaxy:weapon/katana/action/flash/move/tag_victim

execute store result score #1 calcu_temp run data get entity @s Rotation[1] 1000
data modify entity @s Rotation[1] set value 0f
execute at @s run tp @s ^ ^ ^0.25
execute store result entity @s Rotation[1] float 0.001 run scoreboard players get #1 calcu_temp

execute at @s run function galaxy:weapon/katana/action/flash/move/path_check
execute if entity @s[tag=galaxy._success.weapon.katana.slash.pathPassed] at @s run function galaxy:weapon/katana/action/flash/move/path_pass

scoreboard players remove #katana.action.flash.recursiveLimit galaxy 1

execute unless entity @s run tag @s add galaxy._STOP
tag @s[tag=!galaxy._success.weapon.katana.slash.pathPassed] add galaxy._STOP
execute unless score #katana.action.flash.recursiveLimit galaxy matches 1.. run tag @s add galaxy._STOP

execute if entity @s[tag=galaxy._STOP] run kill @s

tag @s remove galaxy._success.weapon.katana.slash.pathPassed

execute if entity @s[tag=!galaxy._STOP] if score #katana.action.flash.recursiveLimit galaxy matches 1.. at @s run function galaxy:weapon/katana/action/flash/move/main
