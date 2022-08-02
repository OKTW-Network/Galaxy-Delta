function galaxy:weapon/katana/action/flash/move/tag_victim

execute store result score #1 calcu_temp run data get entity @s Rotation[1] 10
data modify entity @s Rotation[1] set value 0f
tp @s ^ ^ ^0.25
execute store result entity @s Rotation[1] float 0.1 run scoreboard players get #1 calcu_temp

function galaxy:hitbox/store-postition

execute at @s if predicate galaxy:weapon/katana/flash_path_check at @s positioned ~0.35 ~ ~0.35 if predicate galaxy:weapon/katana/flash_path_check at @s positioned ~-0.35 ~ ~0.35 if predicate galaxy:weapon/katana/flash_path_check at @s positioned ~-0.35 ~ ~-0.35 if predicate galaxy:weapon/katana/flash_path_check at @s positioned ~0.35 ~ ~-0.35 if predicate galaxy:weapon/katana/flash_path_check run function galaxy:weapon/katana/action/flash/move/path_pass

scoreboard players remove #katana.action.flash.recursiveLimit galaxy 1

execute unless entity @s run tag @s add galaxy._STOP
tag @s[tag=!galaxy._success.weapon.katana.slash.pathPassed] add galaxy._STOP
execute if entity @s[tag=galaxy._STOP] run kill @s

tag @s remove galaxy._success.weapon.katana.slash.pathPassed

execute if entity @s[tag=!galaxy._STOP] if score #katana.action.flash.recursiveLimit galaxy matches 1.. at @s run function galaxy:weapon/katana/action/flash/move/main
