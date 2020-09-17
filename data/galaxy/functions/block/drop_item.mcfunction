summon item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b},Tags:["blockDrop"]}
data modify entity @e[tag=blockDrop,limit=1] Item set from storage galaxy:temporary block.drop[0]
tag @e[tag=blockDrop] remove blockDrop
data remove storage galaxy:temporary block.drop[0]
execute unless data storage galaxy:temporary block.drop[0] run playsound entity.item.pickup block @a ~ ~ ~ 1 0.6
execute if data storage galaxy:temporary block.drop[0] run function galaxy:block/drop_item
