execute if data storage galaxy:recipe HTct.craft{categoryID:"tool"} run function galaxy:recipe/hi-tech_crafting_table/tool/craft
execute if data storage galaxy:recipe HTct.craft{categoryID:"functional_block"} run function galaxy:recipe/hi-tech_crafting_table/functional_block/craft
execute if data storage galaxy:recipe HTct.craft{categoryID:"interactive_block"} run function galaxy:recipe/hi-tech_crafting_table/interactive_block/craft
execute if data storage galaxy:recipe HTct.craft{categoryID:"component"} run function galaxy:recipe/hi-tech_crafting_table/component/craft
execute if data storage galaxy:recipe HTct.craft{categoryID:"weapon"} run function galaxy:recipe/hi-tech_crafting_table/weapon/craft

execute if entity @s[tag=galaxy.request.HTct.craft,tag=!galaxy.success.HTct.recipeRequirementCheck] run function #galaxy:recipe/hi-tech_crafting_table/_craft_external

tag @a[tag=galaxy.success.HTct.recipeRequirementCheck] remove galaxy.success.HTct.recipeRequirementCheck
