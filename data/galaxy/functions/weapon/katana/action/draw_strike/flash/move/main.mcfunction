function galaxy:weapon/katana/action/draw_strike/flash/move/tag_victim

execute positioned ^ ^ ^0.25 run function galaxy:weapon/katana/action/draw_strike/flash/move/path_check
execute if entity @s[tag=galaxy._success.katana.drawStrike.flash.pathCheck] run tp ^ ^ ^0.25
execute if entity @s[tag=galaxy._success.katana.drawStrike.flash.pathCheck] run scoreboard players add #weapon.katana.action.drawStrike._flashMovedDistance galaxy 25

scoreboard players remove #weapon.katana.action.drawStrike.flash._recursiveTimes galaxy 1

execute if entity @s[tag=!galaxy._success.katana.drawStrike.flash.pathCheck] run scoreboard players set #weapon.katana.action.drawStrike.flash._recursiveTimes galaxy 0

tag @s remove galaxy._success.katana.drawStrike.flash.pathCheck

execute if score #weapon.katana.action.drawStrike.flash._recursiveTimes galaxy matches 1.. at @s run function galaxy:weapon/katana/action/draw_strike/flash/move/main
