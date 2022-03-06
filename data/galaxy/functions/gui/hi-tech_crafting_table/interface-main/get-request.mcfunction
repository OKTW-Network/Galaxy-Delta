execute if score @s galaxy.GUI.HTct.recipeSubjectListSlotMax matches 1.. unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:3b}]} run scoreboard players set @s galaxy.GUI.HTct.recipeNumber 1
execute if score @s galaxy.GUI.HTct.recipeSubjectListSlotMax matches 2.. unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:4b}]} run scoreboard players set @s galaxy.GUI.HTct.recipeNumber 2
execute if score @s galaxy.GUI.HTct.recipeSubjectListSlotMax matches 3.. unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:5b}]} run scoreboard players set @s galaxy.GUI.HTct.recipeNumber 3
execute if score @s galaxy.GUI.HTct.recipeSubjectListSlotMax matches 4.. unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:6b}]} run scoreboard players set @s galaxy.GUI.HTct.recipeNumber 4
execute if score @s galaxy.GUI.HTct.recipeSubjectListSlotMax matches 5.. unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:7b}]} run scoreboard players set @s galaxy.GUI.HTct.recipeNumber 5
execute if score @s galaxy.GUI.HTct.recipeSubjectListSlotMax matches 6.. unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:12b}]} run scoreboard players set @s galaxy.GUI.HTct.recipeNumber 6
execute if score @s galaxy.GUI.HTct.recipeSubjectListSlotMax matches 7.. unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:13b}]} run scoreboard players set @s galaxy.GUI.HTct.recipeNumber 7
execute if score @s galaxy.GUI.HTct.recipeSubjectListSlotMax matches 8.. unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:14b}]} run scoreboard players set @s galaxy.GUI.HTct.recipeNumber 8
execute if score @s galaxy.GUI.HTct.recipeSubjectListSlotMax matches 9.. unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b}]} run scoreboard players set @s galaxy.GUI.HTct.recipeNumber 9
execute if score @s galaxy.GUI.HTct.recipeSubjectListSlotMax matches 10.. unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:16b}]} run scoreboard players set @s galaxy.GUI.HTct.recipeNumber 10
execute if score @s galaxy.GUI.HTct.recipeSubjectListSlotMax matches 11.. unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:21b}]} run scoreboard players set @s galaxy.GUI.HTct.recipeNumber 11
execute if score @s galaxy.GUI.HTct.recipeSubjectListSlotMax matches 12.. unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:22b}]} run scoreboard players set @s galaxy.GUI.HTct.recipeNumber 12
execute if score @s galaxy.GUI.HTct.recipeSubjectListSlotMax matches 13.. unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:23b}]} run scoreboard players set @s galaxy.GUI.HTct.recipeNumber 13
execute if score @s galaxy.GUI.HTct.recipeSubjectListSlotMax matches 14.. unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:24b}]} run scoreboard players set @s galaxy.GUI.HTct.recipeNumber 14
execute if score @s galaxy.GUI.HTct.recipeSubjectListSlotMax matches 15.. unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:25b}]} run scoreboard players set @s galaxy.GUI.HTct.recipeNumber 15

scoreboard players operation @s galaxy.GUI.HTct.recipeSubject = @s galaxy.GUI.HTct.recipeNumber
scoreboard players operation #1 calcu_temp = @s galaxy.GUI.HTct.recipeSubjectListPage
scoreboard players remove #1 calcu_temp 1
scoreboard players operation #1 calcu_temp *= #15 num
scoreboard players operation @s galaxy.GUI.HTct.recipeSubject += #1 calcu_temp
