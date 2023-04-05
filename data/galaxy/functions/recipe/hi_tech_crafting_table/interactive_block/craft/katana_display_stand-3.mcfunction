execute if entity @s[gamemode=!creative] run function galaxy:recipe/hi_tech_crafting_table/interactive_block/requirement-check/katana_display_stand
execute if entity @s[gamemode=creative] run scoreboard players set #recipe.craftingStatus galaxy 1
execute if score #recipe.craftingStatus galaxy matches 1 if entity @s[gamemode=!creative] run function galaxy:recipe/hi_tech_crafting_table/interactive_block/requirement-remove/katana_display_stand
execute if score #recipe.craftingStatus galaxy matches 1 run function galaxy:entity/give/katana_display_stand_3
