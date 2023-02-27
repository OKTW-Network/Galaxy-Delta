execute if data entity @s HandItems[0].tag.CustomData.galaxy.data.assembly.blueprint unless data block ~ ~ ~ Items[{Slot:13b}] run tag @s add galaxy._task.assembly_table.switchToHome
execute if predicate galaxy:recipe/assembly_table/result/is-not_placeholder run tag @s remove galaxy._tag.assembly_table.resultEmpty
execute if predicate galaxy:recipe/assembly_table/result/is-not_placeholder run tag @s add galaxy._tag.assembly_table.resultChanged
