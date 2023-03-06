execute if entity @s[gamemode=!creative] run function galaxy:recipe/hi_tech_crafting_table/component/requirement-check/upgrade_gun_dual
execute if entity @s[gamemode=creative] run scoreboard players set #recipe.craftingStatus galaxy 1
execute if score #recipe.craftingStatus galaxy matches 1 if entity @s[gamemode=!creative] run function galaxy:recipe/hi_tech_crafting_table/component/requirement-remove/upgrade_gun_dual
execute if score #recipe.craftingStatus galaxy matches 1 run function galaxy:component/give/upgrade_gun_dual
