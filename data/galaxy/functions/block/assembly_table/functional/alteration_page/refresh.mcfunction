execute store result score #1 temp store result score #2 temp store result score @s galaxy.block.assembly_table.alterationMax run data get storage galaxy:temp +block.assembly_table.resultComponent.Alteration
scoreboard players operation #1 temp /= #6 num
scoreboard players operation #2 temp %= #6 num
execute if score #2 temp matches 1.. run scoreboard players add #1 temp 1
execute store result score @s galaxy.block.assembly_table.alterationPageNumberMax run scoreboard players get #1 temp

function galaxy:block/assembly_table/functional/alteration_page/get_slot_max

tag @s add galaxy._task.assembly_table.generateAlterationPage
tag @s add galaxy._task.gui.refresh
