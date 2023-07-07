execute if entity @s[gamemode=!creative] run function galaxy:recipe/hi_tech_crafting_table/craft/check_requirement/cooling_system_t1
execute if entity @s[gamemode=creative] run scoreboard players set #recipe.craftingStatus galaxy 1
execute if score #recipe.craftingStatus galaxy matches 1 if entity @s[gamemode=!creative] run function galaxy:recipe/hi_tech_crafting_table/craft/remove_requirement/cooling_system_t1
execute if score #recipe.craftingStatus galaxy matches 1 run function galaxy:component/give/cooling_system_t1
