# cover
function galaxy:gui/hi-tech_crafting_table/mode0/check-cover
execute if entity @s[tag=setCover] run function galaxy:gui/remove-gui_item
execute if entity @s[tag=setCover] run function galaxy:gui/hi-tech_crafting_table/mode0/build-cover
tag @s[tag=setCover] remove setCover

# category selection
function galaxy:gui/hi-tech_crafting_table/mode0/check-category
execute if entity @s[tag=setHTctCatg] run function galaxy:gui/remove-gui_item
execute if entity @s[tag=setHTctCatg] run function galaxy:gui/hi-tech_crafting_table/mode0/delete-list
execute if entity @s[tag=setHTctCatg] run function galaxy:gui/hi-tech_crafting_table/mode0/build-category
execute if entity @s[tag=setHTctCatg] run scoreboard players set @s htctListPage 1
execute if entity @s[tag=setHTctCatg] run tag @s add setHTctList
tag @s[tag=setHTctCatg] remove setHTctCatg

# recipe list
function galaxy:gui/hi-tech_crafting_table/mode0/check-list
execute if entity @s[tag=setHTctList] run function galaxy:gui/remove-gui_item
execute if entity @s[tag=setHTctList] run function galaxy:gui/hi-tech_crafting_table/mode0/delete-list
execute if entity @s[tag=setHTctList] run function galaxy:recipe/hi-tech_crafting_table/get-list_page_max
execute if entity @s[tag=setHTctList] run function galaxy:gui/hi-tech_crafting_table/mode0/build-list
tag @s[tag=setHTctList] remove setHTctList

# mode switch
function galaxy:recipe/hi-tech_crafting_table/check-list
