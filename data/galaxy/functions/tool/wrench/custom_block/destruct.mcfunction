execute if entity @e[tag=ThisCustomBlock,tag=dropContent] run data modify storage galaxy:temp drop set from block ~ ~ ~ Items
execute if data storage galaxy:temp drop[0] run function galaxy:item_entity/drop-remain
setblock ~ ~ ~ minecraft:air replace
