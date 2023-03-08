execute if entity @s[gamemode=!creative] run function galaxy:recipe/hi_tech_crafting_table/functional_block/requirement-check/reinforced_blast_furnace
execute if entity @s[gamemode=creative] run scoreboard players set #recipe.craftingStatus galaxy 1
execute if score #recipe.craftingStatus galaxy matches 1 if entity @s[gamemode=!creative] run function galaxy:recipe/hi_tech_crafting_table/functional_block/requirement-remove/reinforced_blast_furnace
execute if score #recipe.craftingStatus galaxy matches 1 run function galaxy:block/give/reinforced_blast_furnace
