scoreboard players set #weapon.katana.action.draw_strike._flashMovedDistance galaxy 0

scoreboard players operation #weapon.katana.action.draw_strike.flash._recursiveTimes galaxy = #weapon.katana.action.draw_strike.effect_strength galaxy
scoreboard players operation #weapon.katana.action.draw_strike.flash._recursiveTimes galaxy *= #4 num

execute store result score #weapon.katana.action.draw_strike.flash._performOnGround galaxy run data get entity @s OnGround

execute at @s run function galaxy:weapon/katana/action/draw_strike/flash/move/main

scoreboard players operation #1 temp = #weapon.katana.action.draw_strike._flashMovedDistance galaxy
scoreboard players operation #2 temp = #weapon.katana.action.draw_strike.effect_strength galaxy
scoreboard players operation #1 temp *= #10 num
scoreboard players operation #1 temp /= #2 temp
scoreboard players operation #weapon.katana.action.draw_strike.cooldown galaxy *= #1 temp
scoreboard players operation #weapon.katana.action.draw_strike.cooldown galaxy /= #1000 num

tag @s add galaxy._success.katana.performDrawStrike
