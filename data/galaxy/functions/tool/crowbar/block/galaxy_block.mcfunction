data modify storage cu:item input set from block ~ ~ ~ Items
data remove storage cu:item input[{tag:{CustomData:{galaxy:{Type:"gui"}}}}]
execute if data storage cu:item input[0] run data modify storage cu:item pickupDelay set value 0s
execute if data storage cu:item input[0] run function cu:item/summon
setblock ~ ~ ~ minecraft:air replace

tag @s remove galaxy._task.crowbar.doGalaxyBlock
