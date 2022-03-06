# cover
function galaxy:gui/hi-tech_crafting_table/interface-main/check-cover
execute if entity @s[tag=setCover] run function galaxy:gui/remove-gui_item
execute if entity @s[tag=setCover] run function galaxy:gui/hi-tech_crafting_table/interface-main/build-cover
tag @s[tag=setCover] remove setCover

# category button
function galaxy:gui/hi-tech_crafting_table/interface-main/check-category_button
execute if entity @s[tag=setCategoryButton] run function galaxy:gui/remove-gui_item
execute if entity @s[tag=setCategoryButton] run function galaxy:gui/hi-tech_crafting_table/interface-main/build-category_button
tag @s[tag=setCategoryButton] remove setCategoryButton

# category column
function galaxy:gui/hi-tech_crafting_table/interface-main/check-category
execute if entity @s[tag=setCategory] run function galaxy:gui/remove-gui_item
execute if entity @s[tag=setCategory] run function galaxy:gui/hi-tech_crafting_table/interface-main/delete-category
execute if entity @s[tag=setCategory] run function galaxy:gui/hi-tech_crafting_table/interface-main/build-category
tag @s[tag=setCategory] remove setCategory

# recipe list button
function galaxy:gui/hi-tech_crafting_table/interface-main/check-recipe_button
execute if entity @s[tag=setRecipeButton] run function galaxy:gui/remove-gui_item
execute if entity @s[tag=setRecipeButton] run function galaxy:gui/hi-tech_crafting_table/interface-main/build-recipe_button
tag @s[tag=setRecipeButton] remove setRecipeButton

# recipe list page
execute if entity @s[tag=setRecipePage] run function galaxy:gui/hi-tech_crafting_table/interface-main/delete-recipe_page
execute if entity @s[tag=setRecipePage] run function galaxy:gui/hi-tech_crafting_table/interface-main/build-recipe_page
tag @s[tag=setRecipePage] remove setRecipePage

# mode switch, recipe request
function galaxy:gui/hi-tech_crafting_table/interface-main/check-request
execute if entity @s[tag=switchToInterface.recipe_requirement] run function galaxy:gui/remove-gui_item
execute if entity @s[tag=switchToInterface.recipe_requirement] run function galaxy:gui/hi-tech_crafting_table/interface-main/get-request
execute if entity @s[tag=switchToInterface.recipe_requirement] run function galaxy:gui/hi-tech_crafting_table/switch_to_interface
