execute if entity @s[gamemode=!creative] run function galaxy:recipe/hi_tech_crafting_table/craft/check_requirement/gun_casing_gold
execute if entity @s[gamemode=creative] run scoreboard players set #recipe.craftingStatus galaxy 1
execute if score #recipe.craftingStatus galaxy matches 1 if entity @s[gamemode=!creative] run function galaxy:recipe/hi_tech_crafting_table/craft/remove_requirement/gun_casing_gold
execute if score #recipe.craftingStatus galaxy matches 1 run function galaxy:component/give/gun_casing_gold
