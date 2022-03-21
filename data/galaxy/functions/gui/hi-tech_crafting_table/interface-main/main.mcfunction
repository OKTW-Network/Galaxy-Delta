# cover
function galaxy:gui/hi-tech_crafting_table/interface-main/check-cover
execute if entity @s[tag=setCover] run function galaxy:gui/remove-gui_item
execute if entity @s[tag=setCover] run function galaxy:gui/hi-tech_crafting_table/interface-main/build-cover
tag @s[tag=setCover] remove setCover

# category button
execute if score #global galaxy.GUI.HTct.categoryMax matches 1.. run function galaxy:gui/hi-tech_crafting_table/interface-main/check-category_button
execute if entity @s[tag=setCategoryButton] run function galaxy:gui/remove-gui_item
execute if entity @s[tag=setCategoryButton] run function galaxy:gui/hi-tech_crafting_table/interface-main/build-category_button
tag @s[tag=setCategoryButton] remove setCategoryButton

# get category
execute if entity @s[tag=getCategory] run function galaxy:gui/hi-tech_crafting_table/interface-main/get-category
tag @s[tag=getCategory] remove getCategory

# category
execute if score #global galaxy.GUI.HTct.categoryMax matches 1.. run function galaxy:gui/hi-tech_crafting_table/interface-main/check-category
execute if entity @s[tag=setCategory] run function galaxy:gui/remove-gui_item
execute if entity @s[tag=setCategory] run function galaxy:gui/hi-tech_crafting_table/interface-main/delete-category
execute if entity @s[tag=setCategory] run function galaxy:gui/hi-tech_crafting_table/interface-main/build-category
tag @s[tag=setCategory] remove setCategory

# recipe button
function galaxy:gui/hi-tech_crafting_table/interface-main/check-recipe_button
execute if entity @s[tag=setRecipeButton] run function galaxy:gui/remove-gui_item
execute if entity @s[tag=setRecipeButton] run function galaxy:gui/hi-tech_crafting_table/interface-main/build-recipe_button
tag @s[tag=setRecipeButton] remove setRecipeButton

# get recipe page
execute if entity @s[tag=getRecipePage] run function galaxy:gui/hi-tech_crafting_table/interface-main/get-recipe_page
tag @s[tag=getRecipePage] remove getRecipePage

# recipe page
execute if entity @s[tag=setRecipePage] run function galaxy:gui/hi-tech_crafting_table/interface-main/delete-recipe_page
execute if entity @s[tag=setRecipePage] run function galaxy:gui/hi-tech_crafting_table/interface-main/build-recipe_page
tag @s[tag=setRecipePage] remove setRecipePage

# mode switch, recipe request
function galaxy:gui/hi-tech_crafting_table/interface-main/check-request
execute if entity @s[tag=switchToInterface.recipe_requirement] run function galaxy:gui/remove-gui_item
execute if entity @s[tag=switchToInterface.recipe_requirement] run function galaxy:gui/hi-tech_crafting_table/interface-main/get-recipe
execute if entity @s[tag=switchToInterface.recipe_requirement] run function galaxy:gui/hi-tech_crafting_table/switch_to_interface
