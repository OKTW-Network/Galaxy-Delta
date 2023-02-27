execute if entity @s[gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/interactive_block/requirement-check/elevator
execute if entity @s[gamemode=creative] run scoreboard players set #recipe.craftingStatus galaxy 1
execute if score #recipe.craftingStatus galaxy matches 1 if entity @s[gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/interactive_block/requirement-remove/elevator
execute if score #recipe.craftingStatus galaxy matches 1 run function galaxy:block/give/elevator
