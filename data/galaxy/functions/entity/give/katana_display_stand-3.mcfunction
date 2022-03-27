data modify storage galaxy:get item set value []
function galaxy:entity/get/katana_display_stand-3
data modify storage cu:item input set from storage galaxy:get item[0]
data modify storage cu:item owner set from entity @s UUID
execute at @s run function cu:item/give
