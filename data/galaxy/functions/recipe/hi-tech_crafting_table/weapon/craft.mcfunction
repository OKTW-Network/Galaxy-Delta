execute if data storage galaxy:recipe HTct.craft{recipeID:"weapon.galaxy.katana.steel"} run function galaxy:recipe/hi-tech_crafting_table/weapon/craft/steel

execute if entity @s[tag=galaxy._request.HTct.craft,tag=!galaxy._success.hi-tech_crafting_table.recipeRequirementCheck] run function #galaxy:recipe/hi-tech_crafting_table/_craft_weapon
