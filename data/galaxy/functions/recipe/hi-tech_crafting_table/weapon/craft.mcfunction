execute if data storage galaxy:recipe hi-tech_crafting_table.craft{recipeID:"weapon.galaxy.katana.steel"} run function galaxy:recipe/hi-tech_crafting_table/weapon/craft/steel

execute if score #recipe.craftingStatus galaxy matches 0 run function #galaxy:recipe/hi-tech_crafting_table/craft_weapon
