execute unless data storage galaxy:temp +tool.crowbar.block.custom_block.drop_remain[0].CustomData.galaxy{id:"gui_item"} run data modify storage cu:item input set from storage galaxy:temp +tool.crowbar.block.custom_block.drop_remain[0]
execute unless data storage galaxy:temp +tool.crowbar.block.custom_block.drop_remain[0].CustomData.galaxy{id:"gui_item"} run data modify storage cu:item pickupDelay set value 0s
execute unless data storage galaxy:temp +tool.crowbar.block.custom_block.drop_remain[0].CustomData.galaxy{id:"gui_item"} run function cu:item/summon

data remove storage galaxy:temp +tool.crowbar.block.custom_block.drop_remain[0]

execute if data storage galaxy:temp +tool.crowbar.block.custom_block.drop_remain[0] run function galaxy:tool/crowbar/block/custom_block/drop_remain
