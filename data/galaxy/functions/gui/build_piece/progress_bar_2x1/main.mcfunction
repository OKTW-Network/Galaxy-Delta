execute store result score #gui.build_piece.progress_bar_2x1._value galaxy run scoreboard players get #gui.build_piece.progress_bar_2x1.progress1000 galaxy
scoreboard players set #1 temp 23
scoreboard players operation #gui.build_piece.progress_bar_2x1._value galaxy *= #1 temp
scoreboard players set #1 temp 1000
scoreboard players operation #gui.build_piece.progress_bar_2x1._value galaxy /= #1 temp
scoreboard players set #1 temp 22
scoreboard players operation #gui.build_piece.progress_bar_2x1._value galaxy < #1 temp

scoreboard players set #1 temp 0
execute if score #gui.build_piece.progress_bar_2x1.force galaxy matches 1 run scoreboard players set #1 temp 1
execute unless score @s galaxy.GUI.build_piece.progress_bar_2x1.lastValue = #gui.build_piece.progress_bar_2x1._value galaxy run scoreboard players set #1 temp 1
scoreboard players operation @s galaxy.GUI.build_piece.progress_bar_2x1.lastValue = #gui.build_piece.progress_bar_2x1._value galaxy
execute if score #1 temp matches 1 run function galaxy:gui/build_piece/progress_bar_2x1/_build

scoreboard players reset #gui.build_piece.progress_bar_2x1.progress1000 galaxy
scoreboard players reset #gui.build_piece.progress_bar_2x1.slot galaxy
scoreboard players reset #gui.build_piece.progress_bar_2x1.force galaxy
scoreboard players reset #gui.build_piece.progress_bar_2x1._value galaxy
