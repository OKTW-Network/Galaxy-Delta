function galaxy:gui/delete-all_slots

tag @s add setCover

execute if score @s guiMode matches 0 run tag @s add setHTctCatg
execute if score @s guiMode matches 0 run tag @s add setHTctList

execute if score @s guiMode matches 1 run tag @s add setResult
execute if score @s guiMode matches 1 run tag @s add setRequire
execute if score @s guiMode matches 1 run tag @s add setButtonReturn
