execute if entity @s[gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-check/cooling_system_t2
execute if entity @s[gamemode=creative] run scoreboard players set #recipe.craftingStatus galaxy 1
execute if score #recipe.craftingStatus galaxy matches 1 if entity @s[gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-remove/cooling_system_t2
execute if score #recipe.craftingStatus galaxy matches 1 run function galaxy:component/give/cooling_system_t2
