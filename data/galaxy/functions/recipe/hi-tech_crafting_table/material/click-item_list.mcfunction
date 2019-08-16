

execute if score @s sucRequest matches 1 run function galaxy:delete-gui_item
execute if score @s sucRequest matches 1.. run scoreboard players set @s guiMode 1
execute if score @s sucRequest matches 1.. run scoreboard players set @s htctRequPage 1
execute if score @s sucRequest matches 1.. run scoreboard players set @s setGui 1
execute if score @s sucRequest matches 1.. run scoreboard players set @s sucRequest 0
