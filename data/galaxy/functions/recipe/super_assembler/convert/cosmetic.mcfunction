data modify storage galaxy:get itemTag set value []

execute if data entity @s HandItems[0].tag.CustomData.galaxy.data.generateOption{type:2,cosmetic:1} run function galaxy:component/get/tag/cosmetic_gun_type2_railgun

data remove storage galaxy:temp +recipe.super_assembler.convert.cosmetic
execute if data storage galaxy:get itemTag[0] run data modify storage galaxy:temp +recipe.super_assembler.convert.cosmetic set from storage galaxy:get itemTag[0].CustomData.galaxy.tag.cosmetic.Alteration.cosmetic
