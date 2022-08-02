execute if data storage galaxy:recipe HTct.craft{recipeID:"tool.galaxy.galaxy_delta"} run function galaxy:recipe/hi-tech_crafting_table/tool/craft/galaxy_delta
execute if data storage galaxy:recipe HTct.craft{recipeID:"tool.galaxy.wrench"} run function galaxy:recipe/hi-tech_crafting_table/tool/craft/wrench
execute if data storage galaxy:recipe HTct.craft{recipeID:"tool.galaxy.crowbar"} run function galaxy:recipe/hi-tech_crafting_table/tool/craft/crowbar
execute if data storage galaxy:recipe HTct.craft{recipeID:"tool.galaxy.empower_lens"} run function galaxy:recipe/hi-tech_crafting_table/tool/craft/empower_lens

execute if entity @s[tag=galaxy._request.HTct.craft,tag=!galaxy._success.hi-tech_crafting_table.recipeRequirementCheck] run function #galaxy:recipe/hi-tech_crafting_table/_craft_tool
