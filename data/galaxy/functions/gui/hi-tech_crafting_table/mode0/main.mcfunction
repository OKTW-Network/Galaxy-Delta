# cover
function galaxy:gui/hi-tech_crafting_table/mode0/check-cover
execute if entity @s[tag=setCover] run function galaxy:gui/remove-gui_item
execute if entity @s[tag=setCover] run function galaxy:gui/hi-tech_crafting_table/mode0/build-cover
tag @s[tag=setCover] remove setCover

# category button
function galaxy:gui/hi-tech_crafting_table/mode0/check-category_button
execute if entity @s[tag=setCategoryButton] run function galaxy:gui/remove-gui_item
execute if entity @s[tag=setCategoryButton] run function galaxy:gui/hi-tech_crafting_table/mode0/build-category_button
tag @s[tag=setCategoryButton] remove setCategoryButton

# category column
function galaxy:gui/hi-tech_crafting_table/mode0/check-category
execute if entity @s[tag=setCategory] run function galaxy:gui/remove-gui_item
execute if entity @s[tag=setCategory] run function galaxy:gui/hi-tech_crafting_table/mode0/delete-category
execute if entity @s[tag=setCategory] run function galaxy:gui/hi-tech_crafting_table/mode0/build-category
tag @s[tag=setCategory] remove setCategory

# recipe list button
function galaxy:gui/hi-tech_crafting_table/mode0/check-recipe_button
execute if entity @s[tag=setRecipeButton] run function galaxy:gui/remove-gui_item
execute if entity @s[tag=setRecipeButton] run function galaxy:gui/hi-tech_crafting_table/mode0/build-recipe_button
tag @s[tag=setRecipeButton] remove setRecipeButton

# recipe list page
execute if entity @s[tag=setRecipePage] run function galaxy:gui/hi-tech_crafting_table/mode0/delete-recipe_page
execute if entity @s[tag=setRecipePage] run function galaxy:gui/hi-tech_crafting_table/mode0/build-recipe_page
tag @s[tag=setRecipePage] remove setRecipePage

# mode switch, recipe request
function galaxy:gui/hi-tech_crafting_table/mode0/check-request
execute if entity @s[tag=switchToInterface.recipe_require] run function galaxy:gui/remove-gui_item
execute if entity @s[tag=switchToInterface.recipe_require] run function galaxy:gui/hi-tech_crafting_table/mode0/get-request
execute if entity @s[tag=switchToInterface.recipe_require] run function galaxy:gui/hi-tech_crafting_table/switch_mode
