data modify storage galaxy:get itemTag set value []

execute if score @s optType matches 2 if score @s optCosmetic matches 1 run function galaxy:component/get/tag/cosmetic_gun_type2_railgun

data remove storage galaxy:temp +recipe.super_assembler.convert.cosmetic
execute if data storage galaxy:get itemTag[0] run data modify storage galaxy:temp +recipe.super_assembler.convert.cosmetic set from storage galaxy:get itemTag[0].CustomData.galaxy.tag.cosmetic.Alteration.cosmetic
