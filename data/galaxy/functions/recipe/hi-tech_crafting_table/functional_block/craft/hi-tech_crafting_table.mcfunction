execute if entity @s[gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/functional_block/requirement-check/hi-tech_crafting_table
execute if entity @s[gamemode=creative] run scoreboard players set #recipe.craftingStatus galaxy 1
execute if score #recipe.craftingStatus galaxy matches 1 if entity @s[gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/functional_block/requirement-remove/hi-tech_crafting_table
execute if score #recipe.craftingStatus galaxy matches 1 run function galaxy:block/give/hi-tech_crafting_table
