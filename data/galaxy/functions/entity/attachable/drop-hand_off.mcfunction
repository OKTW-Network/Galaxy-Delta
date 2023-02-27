data modify storage cu:item input set from entity @s HandItems[1]
execute if predicate galaxy:recipe/convertible/hand_off run data modify storage cu:item input set from entity @s HandItems[1].tag.CustomData.galaxy.convertToItem
item replace entity @s weapon.offhand with minecraft:air
data modify storage cu:item pickupDelay set value 10s
function cu:item/summon
