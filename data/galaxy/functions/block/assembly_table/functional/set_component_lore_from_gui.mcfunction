scoreboard players set #block.assembly_table.guiAction galaxy 1

data modify storage cu:value list.index.input set from storage galaxy:temp +block.assembly_table.resultComponent.Alteration
scoreboard players set #1 temp 6
scoreboard players operation #2 temp = @s galaxy.block.assembly_table.alterationPageNumber
scoreboard players remove #2 temp 1
scoreboard players operation #1 temp *= #2 temp
execute unless predicate galaxy:gui/assembly_table/home/right_panel/page_content/slot_1 run scoreboard players set #2 temp 0
execute unless predicate galaxy:gui/assembly_table/home/right_panel/page_content/slot_2 run scoreboard players set #2 temp 1
execute unless predicate galaxy:gui/assembly_table/home/right_panel/page_content/slot_3 run scoreboard players set #2 temp 2
execute unless predicate galaxy:gui/assembly_table/home/right_panel/page_content/slot_4 run scoreboard players set #2 temp 3
execute unless predicate galaxy:gui/assembly_table/home/right_panel/page_content/slot_5 run scoreboard players set #2 temp 4
execute unless predicate galaxy:gui/assembly_table/home/right_panel/page_content/slot_6 run scoreboard players set #2 temp 5
execute store result score #value.list.index.start cu run scoreboard players operation #1 temp += #2 temp
function cu:value/list/index/main
data modify storage galaxy:temp +component.build_lore.input set from storage galaxy:temp +block.assembly_table.resultComponent.Alteration
data modify storage galaxy:temp +component.build_lore.target set from storage cu:value list.index.result[0].id
function galaxy:component/build_lore/main
data modify block ~ ~ ~ Items[{Slot:13b}].tag.display.Lore set from storage galaxy:temp +component.build_lore.result
function galaxy:block/assembly_table/functional/data/save-result

tag @s add galaxy._task.gui.refresh
