function galaxy:recipe/advanced_blast_furnace
execute unless score @s workStatus = @s workStatusTemp run function galaxy:gui/advanced_blast_furnace/update
scoreboard players operation @s workStatusTemp = @s workStatus
