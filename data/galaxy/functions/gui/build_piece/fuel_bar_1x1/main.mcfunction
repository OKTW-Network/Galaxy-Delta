execute store result score #gui.build_piece.fuel_bar_1x1._value galaxy run scoreboard players get #gui.build_piece.fuel_bar_1x1.burnTime1000 galaxy
scoreboard players set #1 temp 13
scoreboard players operation #gui.build_piece.fuel_bar_1x1._value galaxy *= #1 temp
scoreboard players set #1 temp 1000
scoreboard players operation #gui.build_piece.fuel_bar_1x1._value galaxy /= #1 temp
scoreboard players add #gui.build_piece.fuel_bar_1x1._value galaxy 1
scoreboard players set #1 temp 13
scoreboard players operation #gui.build_piece.fuel_bar_1x1._value galaxy < #1 temp
execute if score #gui.build_piece.fuel_bar_1x1.burnTime1000 galaxy matches 0 run scoreboard players set #gui.build_piece.fuel_bar_1x1._value galaxy 0

scoreboard players set #1 temp 0
execute if score #gui.build_piece.fuel_bar_1x1.force galaxy matches 1 run scoreboard players set #1 temp 1
execute unless score @s galaxy.GUI.build_piece.fuel_bar_1x1.lastValue = #gui.build_piece.fuel_bar_1x1._value galaxy run scoreboard players set #1 temp 1
scoreboard players operation @s galaxy.GUI.build_piece.fuel_bar_1x1.lastValue = #gui.build_piece.fuel_bar_1x1._value galaxy
execute if score #1 temp matches 1 run function galaxy:gui/build_piece/fuel_bar_1x1/_build

scoreboard players reset #gui.build_piece.fuel_bar_1x1.burnTime1000 galaxy
scoreboard players reset #gui.build_piece.fuel_bar_1x1.slot galaxy
scoreboard players reset #gui.build_piece.fuel_bar_1x1.force galaxy
scoreboard players reset #gui.build_piece.fuel_bar_1x1._value galaxy
