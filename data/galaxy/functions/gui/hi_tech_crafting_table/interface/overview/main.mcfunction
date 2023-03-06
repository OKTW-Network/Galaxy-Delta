execute if entity @s[tag=galaxy._task.gui.refresh] run function galaxy:gui/hi_tech_crafting_table/interface/overview/refresh

# cover
function galaxy:gui/hi_tech_crafting_table/interface/overview/check-cover
execute if entity @s[tag=galaxy._task.gui.buildCover] run tag @s add galaxy._task.gui.cleanupGuiItem
execute if entity @s[tag=galaxy._task.gui.buildCover] run function galaxy:gui/hi_tech_crafting_table/interface/overview/build-cover
tag @s[tag=galaxy._task.gui.buildCover] remove galaxy._task.gui.buildCover

# category button
execute if score #recipe.hi_tech_crafting_table.categoryMax galaxy matches 1.. run function galaxy:gui/hi_tech_crafting_table/interface/overview/check-category_button
execute if entity @s[tag=setCategoryButton] run tag @s add galaxy._task.gui.cleanupGuiItem
execute if entity @s[tag=setCategoryButton] run function galaxy:gui/hi_tech_crafting_table/interface/overview/build-category_button
tag @s[tag=setCategoryButton] remove setCategoryButton

# get category
execute if entity @s[tag=getCategory] run function galaxy:gui/hi_tech_crafting_table/interface/overview/get-category
tag @s[tag=getCategory] remove getCategory

# category
execute if score #recipe.hi_tech_crafting_table.categoryMax galaxy matches 1.. run function galaxy:gui/hi_tech_crafting_table/interface/overview/check-category
execute if entity @s[tag=setCategory] run tag @s add galaxy._task.gui.cleanupGuiItem
execute if entity @s[tag=setCategory] run function galaxy:gui/hi_tech_crafting_table/interface/overview/delete-category
execute if entity @s[tag=setCategory] run function galaxy:gui/hi_tech_crafting_table/interface/overview/build-category
tag @s[tag=setCategory] remove setCategory

# recipe button
function galaxy:gui/hi_tech_crafting_table/interface/overview/check-recipe_button
execute if entity @s[tag=setRecipeButton] run tag @s add galaxy._task.gui.cleanupGuiItem
execute if entity @s[tag=setRecipeButton] run function galaxy:gui/hi_tech_crafting_table/interface/overview/build-recipe_button
tag @s[tag=setRecipeButton] remove setRecipeButton

# get recipe page
execute if entity @s[tag=getRecipePage] run function galaxy:gui/hi_tech_crafting_table/interface/overview/get-recipe_page
tag @s[tag=getRecipePage] remove getRecipePage

# recipe page
execute if entity @s[tag=setRecipePage] run function galaxy:gui/hi_tech_crafting_table/interface/overview/delete-recipe_page
execute if entity @s[tag=setRecipePage] run data modify block ~ ~ ~ Items append from entity @s HandItems[0].tag.CustomData.galaxy.data.hi_tech_crafting_table.recipePage[]
tag @s[tag=setRecipePage] remove setRecipePage

# recipe request
function galaxy:gui/hi_tech_crafting_table/interface/overview/check-request
execute if entity @s[tag=galaxy._task.hi_tech_crafting_table.switchToRequirement] run tag @s add galaxy._task.gui.cleanupGuiItem
execute if entity @s[tag=galaxy._task.hi_tech_crafting_table.switchToRequirement] run function galaxy:gui/hi_tech_crafting_table/interface/overview/get-recipe
execute if entity @s[tag=galaxy._task.hi_tech_crafting_table.switchToRequirement] run tag @s add galaxy._task.gui.switchInterface
execute if entity @s[tag=galaxy._task.hi_tech_crafting_table.switchToRequirement] run data modify storage galaxy:temp +gui.hi_tech_crafting_table.switch_interface set value "requirement"
tag @s[tag=galaxy._task.hi_tech_crafting_table.switchToRequirement] remove galaxy._task.hi_tech_crafting_table.switchToRequirement
