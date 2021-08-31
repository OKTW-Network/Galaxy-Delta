data modify storage galaxy:get itemTag set value []

execute if score @s optType matches 1 if score @s optAddon matches 1 run function galaxy:component/get/tag/special_dual

execute if score @s optType matches 2 if score @s optAddon matches 1 run function galaxy:component/get/tag/special_flow

execute if score @s optType matches 3 if score @s optAddon matches 1 run function galaxy:component/get/tag/special_sequence

data remove storage galaxy:temp +recipe.super_assembler.convert.special
execute if data storage galaxy:get itemTag[0] run data modify storage galaxy:temp +recipe.super_assembler.convert.special set from storage galaxy:get itemTag[0].CustomData.galaxy.tag.special.Alteration.special
