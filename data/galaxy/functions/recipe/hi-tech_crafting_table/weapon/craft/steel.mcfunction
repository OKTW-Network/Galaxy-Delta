execute if entity @s[gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/weapon/requirement-check/steel
execute if entity @s[gamemode=creative] run scoreboard players set #recipe.craftingStatus galaxy 1
execute if score #recipe.craftingStatus galaxy matches 1 if entity @s[gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/weapon/requirement-remove/steel
execute if score #recipe.craftingStatus galaxy matches 1 run function galaxy:weapon/give/steel
