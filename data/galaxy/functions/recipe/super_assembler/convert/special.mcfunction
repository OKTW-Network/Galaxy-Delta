data modify storage galaxy:get itemTag set value []

execute if data entity @s HandItems[0].tag.CustomData.galaxy.data.generateOption{type:1,addon:1} run function galaxy:component/get/tag/special_dual
execute if data entity @s HandItems[0].tag.CustomData.galaxy.data.generateOption{type:2,addon:1} run function galaxy:component/get/tag/special_flow
execute if data entity @s HandItems[0].tag.CustomData.galaxy.data.generateOption{type:3,addon:1} run function galaxy:component/get/tag/special_sequence

data remove storage galaxy:temp +recipe.super_assembler.convert.special
execute if data storage galaxy:get itemTag[0] run data modify storage galaxy:temp +recipe.super_assembler.convert.special set from storage galaxy:get itemTag[0].CustomData.galaxy.tag.special.Alteration.special
