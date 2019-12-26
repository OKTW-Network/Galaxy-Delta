function galaxy:gui/delete-all_slots

scoreboard players set @s setGuiCover 1

execute if score @s guiMode matches 0 run scoreboard players set @s setHTctCategory 1
execute if score @s guiMode matches 0 run scoreboard players set @s setHTctListPage 1

execute if score @s guiMode matches 1 run scoreboard players set @s setHTctResult 1
execute if score @s guiMode matches 1 run scoreboard players set @s setHTctRequPage 1
execute if score @s guiMode matches 1 run scoreboard players set @s setButtConfirm 2
execute if score @s guiMode matches 1 run scoreboard players set @s setButtBack1 2
