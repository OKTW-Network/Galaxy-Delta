# katana
execute if score @s galaxy.GUI.HTct.recipeSubject matches 1 as @a[tag=galaxy.request.HTct.craft,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/weapon/requirement-check/steel
execute if score @s galaxy.GUI.HTct.recipeSubject matches 1 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/weapon/requirement-remove/steel
execute if score @s galaxy.GUI.HTct.recipeSubject matches 1 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:weapon/katana/give/steel
execute if score @s galaxy.GUI.HTct.recipeSubject matches 1 as @a[tag=galaxy.request.HTct.craft,gamemode=creative] run function galaxy:weapon/katana/give/steel


tag @a[tag=galaxy.request.HTct.craft] remove galaxy.success.HTct.recipeRequirementCheck
