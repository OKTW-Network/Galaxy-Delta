data modify storage galaxy:get item set value []
data modify storage galaxy:get item append from entity @s HandItems[0]
execute if data storage galaxy:get item[0] run data modify storage cu:item input set from storage galaxy:get item[0]
execute if data storage galaxy:get item[0] run data modify storage cu:item pickupDelay set value 0s
execute if data storage galaxy:get item[0] run function cu:item/summon
item replace entity @s weapon.mainhand with minecraft:air
