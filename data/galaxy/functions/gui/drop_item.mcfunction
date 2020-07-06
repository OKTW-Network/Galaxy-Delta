summon item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b},Tags:["guiDrop"]}
data modify entity @e[tag=guiDrop,limit=1] Item set from storage galaxy:temporary GUI.container[0]
tag @e[tag=guiDrop] remove guiDrop
data remove storage galaxy:temporary GUI.container[0]
execute if data storage galaxy:temporary GUI.container[0] run function galaxy:gui/drop_item
