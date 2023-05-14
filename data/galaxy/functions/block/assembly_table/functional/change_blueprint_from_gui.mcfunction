data modify storage cu:value list.index.input set from storage galaxy:recipe assembly_table.blueprint
scoreboard players set #1 temp 6
scoreboard players operation #2 temp = @s galaxy.GUI.assembly_table.blueprintPage
scoreboard players remove #2 temp 1
scoreboard players operation #1 temp *= #2 temp
execute unless predicate galaxy:gui/assembly_table/home/blueprint_icon/slot_1 run scoreboard players set #2 temp 0
execute unless predicate galaxy:gui/assembly_table/home/blueprint_icon/slot_2 run scoreboard players set #2 temp 1
execute unless predicate galaxy:gui/assembly_table/home/blueprint_icon/slot_3 run scoreboard players set #2 temp 2
execute unless predicate galaxy:gui/assembly_table/home/blueprint_icon/slot_4 run scoreboard players set #2 temp 3
execute unless predicate galaxy:gui/assembly_table/home/blueprint_icon/slot_5 run scoreboard players set #2 temp 4
execute unless predicate galaxy:gui/assembly_table/home/blueprint_icon/slot_6 run scoreboard players set #2 temp 5
execute store result score #value.list.index.start cu run scoreboard players operation #1 temp += #2 temp
function cu:value/list/index/main
data modify storage galaxy:temp +recipe.assembly_table.save.blueprint set from storage cu:value list.index.result[0]
function galaxy:recipe/assembly_table/save/blueprint

scoreboard players set @s galaxy.block.assembly_table.requiredCount 0
function galaxy:recipe/assembly_table/save/parts_from_blueprint

function galaxy:gui/cleanup_gui_item
tag @s add galaxy._task.gui.refresh
