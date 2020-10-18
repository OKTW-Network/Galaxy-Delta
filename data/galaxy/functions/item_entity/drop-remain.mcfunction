execute unless data storage galaxy:temp drop[0].tag{guiItem:1} run summon item ~ ~ ~ {Item:{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:100}},Tags:["processing"]}
execute unless data storage galaxy:temp drop[0].tag{guiItem:1} run data modify entity @e[tag=processing,limit=1] Item set from storage galaxy:temp drop[0]
execute unless data storage galaxy:temp drop[0].tag{guiItem:1} run tag @e[tag=processing] remove processing
data remove storage galaxy:temp drop[0]
execute if data storage galaxy:temp drop[0] run function galaxy:item_entity/drop-remain
