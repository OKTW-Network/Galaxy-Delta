function galaxy:gui/delete-all_slots

tag @s add setCover

execute if score @s guiInterface matches 0 run tag @s add getCategory
execute if score @s guiInterface matches 0 run tag @s add setCategoryButton
execute if score @s guiInterface matches 0 run tag @s add setCategory
execute if score @s guiInterface matches 0 run tag @s add setRecipeButton
execute if score @s guiInterface matches 0 run tag @s add getRecipePage
execute if score @s guiInterface matches 0 run tag @s add setRecipePage

execute if score @s guiInterface matches 1 run tag @s add getRecipe
execute if score @s guiInterface matches 1 run tag @s add setResult
execute if score @s guiInterface matches 1 run tag @s add setRequireButton
execute if score @s guiInterface matches 1 run tag @s add getRequirePage
execute if score @s guiInterface matches 1 run tag @s add setRequirePage
execute if score @s guiInterface matches 1 run tag @s add setButtonReturn
