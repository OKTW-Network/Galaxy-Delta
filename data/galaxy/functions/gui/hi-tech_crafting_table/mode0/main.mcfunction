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

# category list
function galaxy:gui/hi-tech_crafting_table/mode0/check-category
execute if entity @s[tag=setCategory] run function galaxy:gui/remove-gui_item
execute if entity @s[tag=setCategory] run function galaxy:gui/hi-tech_crafting_table/mode0/delete-category
execute if entity @s[tag=setCategory] run function galaxy:gui/hi-tech_crafting_table/mode0/build-category
tag @s[tag=setCategory] remove setCategory

# list page button
function galaxy:gui/hi-tech_crafting_table/mode0/check-list_button
execute if entity @s[tag=setListButton] run function galaxy:gui/remove-gui_item
execute if entity @s[tag=setListButton] run function galaxy:gui/hi-tech_crafting_table/mode0/build-list_button
tag @s[tag=setListButton] remove setListButton

# recipe list
execute if entity @s[tag=setList] run function galaxy:gui/hi-tech_crafting_table/mode0/delete-list
execute if entity @s[tag=setList] run function galaxy:gui/hi-tech_crafting_table/mode0/build-list
tag @s[tag=setList] remove setList

# mode switch, recipe request
function galaxy:gui/hi-tech_crafting_table/mode0/check-request
execute if entity @s[tag=switchToMode1] run function galaxy:gui/remove-gui_item
execute if entity @s[tag=switchToMode1] run function galaxy:gui/hi-tech_crafting_table/mode0/get-request
execute if entity @s[tag=switchToMode1] run function galaxy:gui/hi-tech_crafting_table/switch_mode
