data modify storage cu:block container.get_slot_item.input set from entity @s HandItems[0].tag.CustomData.galaxy.data.gui.cover
function cu:block/container/get_slot_item
data modify storage cu:value different.input1 set from entity @s HandItems[0].tag.CustomData.galaxy.data.gui.cover
data modify storage cu:value different.input2 set from storage cu:block container.get_slot_item.result
function cu:value/different
execute if score #value.different.result cu matches 1 run tag @s add galaxy._task.gui.cleanupGuiItem
execute if score #value.different.result cu matches 1 run tag @s add galaxy._task.gui.buildCover
execute if score #value.different.result cu matches 1 run data modify storage galaxy:temp +block.pop_item.input set from storage cu:block container.get_slot_item.result
execute if data storage galaxy:temp +block.pop_item.input[0] run function galaxy:block/pop_item/on_top
