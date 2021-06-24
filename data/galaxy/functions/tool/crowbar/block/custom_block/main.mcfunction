data modify storage galaxy:temp +tool.crowbar.block.custom_block.drop_remain set from block ~ ~ ~ Items

execute if data storage galaxy:temp +tool.crowbar.block.custom_block.drop_remain[0] run function galaxy:tool/crowbar/block/custom_block/drop_remain

setblock ~ ~ ~ minecraft:air replace
