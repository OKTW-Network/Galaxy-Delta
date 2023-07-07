execute if entity @s[gamemode=!creative] run function galaxy:recipe/hi_tech_crafting_table/craft/check_requirement/laser_core_t1
execute if entity @s[gamemode=creative] run scoreboard players set #recipe.craftingStatus galaxy 1
execute if score #recipe.craftingStatus galaxy matches 1 if entity @s[gamemode=!creative] run function galaxy:recipe/hi_tech_crafting_table/craft/remove_requirement/laser_core_t1
execute if score #recipe.craftingStatus galaxy matches 1 run data modify storage galaxy:temp +component.get.tag.alterationTarget set value "galaxy.gun"
execute if score #recipe.craftingStatus galaxy matches 1 run function galaxy:component/give/laser_core_t1
