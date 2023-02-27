execute if entity @s[tag=galaxy._task.gui.refresh] run function galaxy:gui/assembly_table/interface/blueprint/generate_gui_data
tag @s[tag=galaxy._task.gui.refresh] add galaxy._task.assembly_table.buildPlaceholder

execute if entity @s[tag=galaxy._tag.assembly_table.resultChanged] run tag @s add galaxy._task.assembly_table.buildPlaceholder
execute if entity @s[tag=galaxy._tag.assembly_table.partsChanged] run tag @s add galaxy._task.assembly_table.buildPlaceholder
execute if entity @s[tag=galaxy._task.assembly_table.buildPlaceholder] run data remove block ~ ~ ~ Items[{tag:{CustomData:{galaxy:{Type:"gui",id:"assembly_table.parts_placeholder"}}}}]
execute if entity @s[tag=galaxy._task.assembly_table.buildPlaceholder] run data modify block ~ ~ ~ Items prepend from entity @s HandItems[0].tag.CustomData.galaxy.data.gui.placeholder[]
tag @s[tag=galaxy._task.assembly_table.buildPlaceholder] remove galaxy._task.assembly_table.buildPlaceholder
