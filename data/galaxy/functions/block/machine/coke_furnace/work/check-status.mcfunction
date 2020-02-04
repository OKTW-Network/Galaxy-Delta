function galaxy:recipe/coke_furnace
execute unless score @s workStatus = @s workStatusTemp run function galaxy:gui/coke_furnace/update
scoreboard players operation @s workStatusTemp = @s workStatus
