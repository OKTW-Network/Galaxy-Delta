scoreboard players set #gui.hi-tech_crafting_table.requestRecipe galaxy 0
execute if score @s galaxy.GUI.hi-tech_crafting_table.recipeSubjectPageSlotMax matches 1.. unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:3b}]} run scoreboard players set #gui.hi-tech_crafting_table.requestRecipe galaxy 1
execute if score @s galaxy.GUI.hi-tech_crafting_table.recipeSubjectPageSlotMax matches 2.. unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:4b}]} run scoreboard players set #gui.hi-tech_crafting_table.requestRecipe galaxy 2
execute if score @s galaxy.GUI.hi-tech_crafting_table.recipeSubjectPageSlotMax matches 3.. unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:5b}]} run scoreboard players set #gui.hi-tech_crafting_table.requestRecipe galaxy 3
execute if score @s galaxy.GUI.hi-tech_crafting_table.recipeSubjectPageSlotMax matches 4.. unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:6b}]} run scoreboard players set #gui.hi-tech_crafting_table.requestRecipe galaxy 4
execute if score @s galaxy.GUI.hi-tech_crafting_table.recipeSubjectPageSlotMax matches 5.. unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:7b}]} run scoreboard players set #gui.hi-tech_crafting_table.requestRecipe galaxy 5
execute if score @s galaxy.GUI.hi-tech_crafting_table.recipeSubjectPageSlotMax matches 6.. unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:12b}]} run scoreboard players set #gui.hi-tech_crafting_table.requestRecipe galaxy 6
execute if score @s galaxy.GUI.hi-tech_crafting_table.recipeSubjectPageSlotMax matches 7.. unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:13b}]} run scoreboard players set #gui.hi-tech_crafting_table.requestRecipe galaxy 7
execute if score @s galaxy.GUI.hi-tech_crafting_table.recipeSubjectPageSlotMax matches 8.. unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:14b}]} run scoreboard players set #gui.hi-tech_crafting_table.requestRecipe galaxy 8
execute if score @s galaxy.GUI.hi-tech_crafting_table.recipeSubjectPageSlotMax matches 9.. unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b}]} run scoreboard players set #gui.hi-tech_crafting_table.requestRecipe galaxy 9
execute if score @s galaxy.GUI.hi-tech_crafting_table.recipeSubjectPageSlotMax matches 10.. unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:16b}]} run scoreboard players set #gui.hi-tech_crafting_table.requestRecipe galaxy 10
execute if score @s galaxy.GUI.hi-tech_crafting_table.recipeSubjectPageSlotMax matches 11.. unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:21b}]} run scoreboard players set #gui.hi-tech_crafting_table.requestRecipe galaxy 11
execute if score @s galaxy.GUI.hi-tech_crafting_table.recipeSubjectPageSlotMax matches 12.. unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:22b}]} run scoreboard players set #gui.hi-tech_crafting_table.requestRecipe galaxy 12
execute if score @s galaxy.GUI.hi-tech_crafting_table.recipeSubjectPageSlotMax matches 13.. unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:23b}]} run scoreboard players set #gui.hi-tech_crafting_table.requestRecipe galaxy 13
execute if score @s galaxy.GUI.hi-tech_crafting_table.recipeSubjectPageSlotMax matches 14.. unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:24b}]} run scoreboard players set #gui.hi-tech_crafting_table.requestRecipe galaxy 14
execute if score @s galaxy.GUI.hi-tech_crafting_table.recipeSubjectPageSlotMax matches 15.. unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:25b}]} run scoreboard players set #gui.hi-tech_crafting_table.requestRecipe galaxy 15
execute if score #gui.hi-tech_crafting_table.requestRecipe galaxy matches 1.. run tag @s add galaxy._task.hi-tech_crafting_table.switchToRequirement
