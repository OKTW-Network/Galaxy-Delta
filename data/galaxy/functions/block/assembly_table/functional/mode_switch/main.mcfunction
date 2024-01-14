execute if score @s galaxy.block.assembly_table.mode matches 1 run function galaxy:block/assembly_table/functional/mode_switch/from/mode_1

execute if score #block.assembly_table.modeSwitch galaxy matches 0 run function galaxy:block/assembly_table/functional/mode_switch/to/mode_0
execute if score #block.assembly_table.modeSwitch galaxy matches 2 run function galaxy:block/assembly_table/functional/mode_switch/to/mode_2

scoreboard players operation @s galaxy.block.assembly_table.mode = #block.assembly_table.modeSwitch galaxy
