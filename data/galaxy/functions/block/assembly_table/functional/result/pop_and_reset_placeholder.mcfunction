data modify storage galaxy:temp +block.pop_item.input append from block ~ ~ ~ Items[{Slot:13b}]
function galaxy:block/pop_item/on_top

tag @s add galaxy._task.assembly_table.buildPlaceholder
