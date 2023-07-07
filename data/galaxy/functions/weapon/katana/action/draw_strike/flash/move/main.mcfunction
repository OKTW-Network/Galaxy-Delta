function galaxy:weapon/katana/action/draw_strike/flash/move/tag_victim

summon minecraft:marker ~ ~ ~ {Tags:["galaxy.dummy.katanaDrawStrike"]}
data modify entity @e[tag=galaxy.dummy.katanaDrawStrike,limit=1] Rotation set from entity @s Rotation
execute if score #weapon.katana.action.drawStrike.flash._performOnGround galaxy matches 1 run data modify entity @e[tag=galaxy.dummy.katanaDrawStrike,limit=1] Rotation[1] set value 0.0f
execute as @e[tag=galaxy.dummy.katanaDrawStrike] at @s run tp ^ ^ ^0.25
execute as @e[tag=galaxy.dummy.katanaDrawStrike] at @s run function galaxy:weapon/katana/action/draw_strike/flash/move/path_check
data modify entity @e[tag=galaxy.dummy.katanaDrawStrike,limit=1] Rotation set from entity @s Rotation
execute if entity @s[tag=galaxy._success.katana.drawStrike.flash.pathCheck] run tp @s @e[tag=galaxy.dummy.katanaDrawStrike,limit=1]
kill @e[tag=galaxy.dummy.katanaDrawStrike]

execute if entity @s[tag=galaxy._success.katana.drawStrike.flash.pathCheck] run scoreboard players add #weapon.katana.action.drawStrike._flashMovedDistance galaxy 25

scoreboard players remove #weapon.katana.action.drawStrike.flash._recursiveTimes galaxy 1

execute if entity @s[tag=!galaxy._success.katana.drawStrike.flash.pathCheck] run scoreboard players set #weapon.katana.action.drawStrike.flash._recursiveTimes galaxy 0

tag @s remove galaxy._success.katana.drawStrike.flash.pathCheck

execute if score #weapon.katana.action.drawStrike.flash._recursiveTimes galaxy matches 1.. at @s run function galaxy:weapon/katana/action/draw_strike/flash/move/main
