summon item ~ ~ ~ {Item:{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:100}},Tags:["processing"]}
data modify entity @e[tag=processing,limit=1] Item set from storage galaxy:temp drop[0]
tag @e[tag=processing] remove processing
data remove storage galaxy:temp drop[0]
execute unless data storage galaxy:temp drop[0] run playsound entity.item.pickup block @a ~ ~ ~ 1 0.6
execute if data storage galaxy:temp drop[0] run function galaxy:item_entity/drop
