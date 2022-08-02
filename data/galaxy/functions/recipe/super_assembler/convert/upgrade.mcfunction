data modify storage galaxy:get itemTag set value []

execute if data entity @s HandItems[0].tag.CustomData.galaxy.data.generateOption{type:1,upgrade:1} run function galaxy:component/get/tag/upgrade_gun_dual
execute if data entity @s HandItems[0].tag.CustomData.galaxy.data.generateOption{type:2,upgrade:1} run function galaxy:component/get/tag/upgrade_gun_flow

data remove storage galaxy:temp +recipe.super_assembler.convert.upgrade
execute if data storage galaxy:get itemTag[0] run data modify storage galaxy:temp +recipe.super_assembler.convert.upgrade set from storage galaxy:get itemTag[0].CustomData.galaxy.tag.upgrade.Alteration.upgrade
