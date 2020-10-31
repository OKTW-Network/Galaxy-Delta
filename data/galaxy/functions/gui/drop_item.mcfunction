summon item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b},Tags:["guiDrop"]}
data modify entity @e[tag=guiDrop,limit=1] Item set from storage galaxy:gui drop[0]
tag @e[tag=guiDrop] remove guiDrop
data remove storage galaxy:gui drop[0]
execute unless data storage galaxy:gui drop[0] run playsound entity.item.pickup block @a ~ ~ ~ 1 0.6
execute if data storage galaxy:gui drop[0] run function galaxy:gui/drop_item
