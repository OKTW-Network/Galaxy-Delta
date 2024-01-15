tag @s add galaxy._task.assembly_table.buildModeSwitchButton
execute unless score @s galaxy.block.assembly_table.resultSlotStatus matches 2 run function galaxy:block/assembly_table/functional/mode_switch_button/switch_to_mode_0
