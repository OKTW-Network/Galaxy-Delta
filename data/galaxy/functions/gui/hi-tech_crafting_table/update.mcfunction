function galaxy:gui/delete-all_slots

tag @s add setCover

execute if score @s guiMode matches 0 run tag @s add getCategory
execute if score @s guiMode matches 0 run tag @s add getList
execute if score @s guiMode matches 0 run tag @s add setCategoryButton
execute if score @s guiMode matches 0 run tag @s add setCategory
execute if score @s guiMode matches 0 run tag @s add setListButton
execute if score @s guiMode matches 0 run tag @s add setList

execute if score @s guiMode matches 1 run tag @s add getRecipe
execute if score @s guiMode matches 1 run tag @s add getRequire
execute if score @s guiMode matches 1 run tag @s add setResult
execute if score @s guiMode matches 1 run tag @s add setRequire
execute if score @s guiMode matches 1 run tag @s add setButtonReturn
