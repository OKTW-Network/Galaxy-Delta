data modify storage galaxy:get item set value []
function galaxy:component/get/gun_casing_iron
data modify storage cu:item input set from storage galaxy:get item[0]
data modify storage cu:item owner set from entity @s UUID
execute at @s run function cu:item/give