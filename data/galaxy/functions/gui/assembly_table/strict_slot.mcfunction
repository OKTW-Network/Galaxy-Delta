data modify storage cu:block container.get_slot_item.input set from entity @s data.galaxy.gui.strict_slot
function cu:block/container/get_slot_item
execute store result score #1 temp if data storage cu:block container.get_slot_item.result[]
execute store result score #2 temp if data storage cu:block container.get_slot_item.result[{tag:{CustomData:{galaxy:{Type:"gui"}}}}]
execute unless score #1 temp = #2 temp run data modify storage galaxy:temp +block.pop_item.input set from storage cu:block container.get_slot_item.result
execute if data storage galaxy:temp +block.pop_item.input[0] run function galaxy:block/pop_item/on_top
