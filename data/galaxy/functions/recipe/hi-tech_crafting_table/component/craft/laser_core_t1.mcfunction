execute if entity @s[gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-check/laser_core_t1
execute if entity @s[gamemode=creative] run scoreboard players set #recipe.craftingStatus galaxy 1
execute if score #recipe.craftingStatus galaxy matches 1 if entity @s[gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/component/requirement-remove/laser_core_t1
execute if score #recipe.craftingStatus galaxy matches 1 run function galaxy:component/give/laser_core_t1
