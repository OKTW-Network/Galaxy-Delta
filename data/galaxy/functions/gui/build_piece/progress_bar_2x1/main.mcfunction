execute store result score #gui.build_piece.progress_bar_2x1._value galaxy run scoreboard players get #gui.build_piece.progress_bar_2x1.progress1000 galaxy
scoreboard players set #1 calcu_temp 23
scoreboard players operation #gui.build_piece.progress_bar_2x1._value galaxy *= #1 calcu_temp
scoreboard players set #1 calcu_temp 1000
scoreboard players operation #gui.build_piece.progress_bar_2x1._value galaxy /= #1 calcu_temp
scoreboard players set #1 calcu_temp 22
scoreboard players operation #gui.build_piece.progress_bar_2x1._value galaxy < #1 calcu_temp

scoreboard players set #1 calcu_temp 0
execute if score #gui.build_piece.progress_bar_2x1.force galaxy matches 1 run scoreboard players set #1 calcu_temp 1
execute unless score @s galaxy.GUI.build_piece.progress_bar_2x1.lastValue = #gui.build_piece.progress_bar_2x1._value galaxy run scoreboard players set #1 calcu_temp 1
scoreboard players operation @s galaxy.GUI.build_piece.progress_bar_2x1.lastValue = #gui.build_piece.progress_bar_2x1._value galaxy
execute if score #1 calcu_temp matches 1 run function galaxy:gui/build_piece/progress_bar_2x1/_build

scoreboard players reset #gui.build_piece.progress_bar_2x1.progress1000 galaxy
scoreboard players reset #gui.build_piece.progress_bar_2x1.slot galaxy
scoreboard players reset #gui.build_piece.progress_bar_2x1.force galaxy
scoreboard players reset #gui.build_piece.progress_bar_2x1._value galaxy
