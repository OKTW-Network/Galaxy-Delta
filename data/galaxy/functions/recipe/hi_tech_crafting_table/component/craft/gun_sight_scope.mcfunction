execute if entity @s[gamemode=!creative] run function galaxy:recipe/hi_tech_crafting_table/component/requirement-check/gun_sight_scope
execute if entity @s[gamemode=creative] run scoreboard players set #recipe.craftingStatus galaxy 1
execute if score #recipe.craftingStatus galaxy matches 1 if entity @s[gamemode=!creative] run function galaxy:recipe/hi_tech_crafting_table/component/requirement-remove/gun_sight_scope
execute if score #recipe.craftingStatus galaxy matches 1 run function galaxy:component/give/gun_sight_scope
