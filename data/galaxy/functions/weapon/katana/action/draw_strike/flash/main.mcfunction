execute store result score #weapon.katana.action.drawStrike.range galaxy run data get storage galaxy:temp +weapon.katana.action.drawStrike.range

scoreboard players set #weapon.katana.action.drawStrike._flashMovedDistance galaxy 0

scoreboard players operation #weapon.katana.action.drawStrike.flash._recursiveTimes galaxy = #weapon.katana.action.drawStrike.range galaxy
scoreboard players operation #weapon.katana.action.drawStrike.flash._recursiveTimes galaxy *= #4 num

execute store result score #weapon.katana.action.drawStrike.flash._performOnGround galaxy run data get entity @s OnGround

execute at @s run function galaxy:weapon/katana/action/draw_strike/flash/move/main

scoreboard players operation #1 temp = #weapon.katana.action.drawStrike._flashMovedDistance galaxy
scoreboard players operation #2 temp = #weapon.katana.action.drawStrike.range galaxy
scoreboard players operation #1 temp *= #10 num
scoreboard players operation #1 temp /= #2 temp
scoreboard players operation #weapon.katana.action.drawStrikeCooldown galaxy *= #1 temp
scoreboard players operation #weapon.katana.action.drawStrikeCooldown galaxy /= #1000 num

tag @s add galaxy._success.katana.performDrawStrike
