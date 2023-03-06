data modify storage galaxy:recipe hi_tech_crafting_table.craft.categoryID set from entity @s HandItems[0].tag.CustomData.galaxy.data.hi_tech_crafting_table.category.HTctCategoryID
data modify storage galaxy:recipe hi_tech_crafting_table.craft.recipeID set from entity @s HandItems[0].tag.CustomData.galaxy.data.recipe.HTctRecipeID

execute as @a[tag=galaxy._request.HTct.craft] run function galaxy:recipe/hi_tech_crafting_table/craft
