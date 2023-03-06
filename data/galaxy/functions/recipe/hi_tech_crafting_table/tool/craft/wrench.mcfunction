execute if entity @s[gamemode=!creative] run function galaxy:recipe/hi_tech_crafting_table/tool/requirement-check/wrench
execute if entity @s[gamemode=creative] run scoreboard players set #recipe.craftingStatus galaxy 1
execute if score #recipe.craftingStatus galaxy matches 1 if entity @s[gamemode=!creative] run function galaxy:recipe/hi_tech_crafting_table/tool/requirement-remove/wrench
execute if score #recipe.craftingStatus galaxy matches 1 run function galaxy:tool/give/wrench
