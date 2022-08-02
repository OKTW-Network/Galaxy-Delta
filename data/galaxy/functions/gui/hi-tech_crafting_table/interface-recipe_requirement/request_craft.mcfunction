data modify storage galaxy:recipe HTct.craft.categoryID set from entity @s HandItems[0].tag.CustomData.galaxy.data.category.HTctCategoryID
data modify storage galaxy:recipe HTct.craft.recipeID set from entity @s HandItems[0].tag.CustomData.galaxy.data.recipe.HTctRecipeID

execute as @a[tag=galaxy._request.HTct.craft] run function galaxy:recipe/hi-tech_crafting_table/craft
