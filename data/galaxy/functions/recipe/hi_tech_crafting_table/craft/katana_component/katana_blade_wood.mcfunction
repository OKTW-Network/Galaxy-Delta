execute if entity @s[gamemode=!creative] run function galaxy:recipe/hi_tech_crafting_table/craft/check_requirement/katana_blade_wood
execute if entity @s[gamemode=creative] run scoreboard players set #recipe.craftingStatus galaxy 1
execute if score #recipe.craftingStatus galaxy matches 1 if entity @s[gamemode=!creative] run function galaxy:recipe/hi_tech_crafting_table/craft/remove_requirement/katana_blade_wood
execute if score #recipe.craftingStatus galaxy matches 1 run data modify storage galaxy:temp +component.get.tag.alterationTarget set value "galaxy.katana"
execute if score #recipe.craftingStatus galaxy matches 1 run function galaxy:component/give/katana_blade_wood
