execute if data storage galaxy:temp +gui.hi-tech_crafting_table.switch_interface run data modify entity @s HandItems[0].tag.CustomData.galaxy.data.hi-tech_crafting.interface set from storage galaxy:temp +gui.hi-tech_crafting_table.switch_interface
tag @s add galaxy._task.gui.refresh
data remove storage galaxy:temp +gui.hi-tech_crafting_table.switch_interface
