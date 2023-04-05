data modify storage galaxy:temp +tool.wrench.set_block.data set from block ~ ~ ~
execute if block ~ ~ ~ minecraft:shulker_box run function galaxy:tool/wrench/block/all_facing/set_block/shulker_box/original
execute if block ~ ~ ~ minecraft:white_shulker_box run function galaxy:tool/wrench/block/all_facing/set_block/shulker_box/white
execute if block ~ ~ ~ minecraft:orange_shulker_box run function galaxy:tool/wrench/block/all_facing/set_block/shulker_box/orange
execute if block ~ ~ ~ minecraft:magenta_shulker_box run function galaxy:tool/wrench/block/all_facing/set_block/shulker_box/magenta
execute if block ~ ~ ~ minecraft:light_blue_shulker_box run function galaxy:tool/wrench/block/all_facing/set_block/shulker_box/light_blue
execute if block ~ ~ ~ minecraft:yellow_shulker_box run function galaxy:tool/wrench/block/all_facing/set_block/shulker_box/yellow
execute if block ~ ~ ~ minecraft:lime_shulker_box run function galaxy:tool/wrench/block/all_facing/set_block/shulker_box/lime
execute if block ~ ~ ~ minecraft:pink_shulker_box run function galaxy:tool/wrench/block/all_facing/set_block/shulker_box/pink
execute if block ~ ~ ~ minecraft:gray_shulker_box run function galaxy:tool/wrench/block/all_facing/set_block/shulker_box/gray
execute if block ~ ~ ~ minecraft:light_gray_shulker_box run function galaxy:tool/wrench/block/all_facing/set_block/shulker_box/light_gray
execute if block ~ ~ ~ minecraft:cyan_shulker_box run function galaxy:tool/wrench/block/all_facing/set_block/shulker_box/cyan
execute if block ~ ~ ~ minecraft:purple_shulker_box run function galaxy:tool/wrench/block/all_facing/set_block/shulker_box/purple
execute if block ~ ~ ~ minecraft:blue_shulker_box run function galaxy:tool/wrench/block/all_facing/set_block/shulker_box/blue
execute if block ~ ~ ~ minecraft:brown_shulker_box run function galaxy:tool/wrench/block/all_facing/set_block/shulker_box/brown
execute if block ~ ~ ~ minecraft:green_shulker_box run function galaxy:tool/wrench/block/all_facing/set_block/shulker_box/green
execute if block ~ ~ ~ minecraft:red_shulker_box run function galaxy:tool/wrench/block/all_facing/set_block/shulker_box/red
execute if block ~ ~ ~ minecraft:black_shulker_box run function galaxy:tool/wrench/block/all_facing/set_block/shulker_box/black
data modify block ~ ~ ~ {} merge from storage galaxy:temp +tool.wrench.set_block.data
