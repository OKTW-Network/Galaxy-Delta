data modify storage cu:item input set from entity @s HandItems[0]
execute if predicate galaxy:recipe/convertible/hand_main run data modify storage cu:item input set from entity @s HandItems[0].tag.CustomData.galaxy.convertToItem
data modify storage cu:item pickupDelay set value 10s
function cu:item/summon
