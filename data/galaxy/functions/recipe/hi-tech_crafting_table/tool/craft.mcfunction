# wrench
execute if score @s galaxy.GUI.HTct.recipeSubject matches 1 as @a[tag=galaxy.request.HTct.craft,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/tool/requirement-check/galaxy_delta
execute if score @s galaxy.GUI.HTct.recipeSubject matches 1 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/tool/requirement-remove/galaxy_delta
execute if score @s galaxy.GUI.HTct.recipeSubject matches 1 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:book/give/galaxy_delta
execute if score @s galaxy.GUI.HTct.recipeSubject matches 1 as @a[tag=galaxy.request.HTct.craft,gamemode=creative] run function galaxy:book/give/galaxy_delta

# wrench
execute if score @s galaxy.GUI.HTct.recipeSubject matches 2 as @a[tag=galaxy.request.HTct.craft,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/tool/requirement-check/wrench
execute if score @s galaxy.GUI.HTct.recipeSubject matches 2 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/tool/requirement-remove/wrench
execute if score @s galaxy.GUI.HTct.recipeSubject matches 2 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:tool/give/wrench
execute if score @s galaxy.GUI.HTct.recipeSubject matches 2 as @a[tag=galaxy.request.HTct.craft,gamemode=creative] run function galaxy:tool/give/wrench

# crowbar
execute if score @s galaxy.GUI.HTct.recipeSubject matches 3 as @a[tag=galaxy.request.HTct.craft,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/tool/requirement-check/crowbar
execute if score @s galaxy.GUI.HTct.recipeSubject matches 3 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/tool/requirement-remove/crowbar
execute if score @s galaxy.GUI.HTct.recipeSubject matches 3 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:tool/give/crowbar
execute if score @s galaxy.GUI.HTct.recipeSubject matches 3 as @a[tag=galaxy.request.HTct.craft,gamemode=creative] run function galaxy:tool/give/crowbar

# structure empower
execute if score @s galaxy.GUI.HTct.recipeSubject matches 4 as @a[tag=galaxy.request.HTct.craft,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/tool/requirement-check/empower_lens
execute if score @s galaxy.GUI.HTct.recipeSubject matches 4 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/tool/requirement-remove/empower_lens
execute if score @s galaxy.GUI.HTct.recipeSubject matches 4 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:tool/give/empower_lens
execute if score @s galaxy.GUI.HTct.recipeSubject matches 4 as @a[tag=galaxy.request.HTct.craft,gamemode=creative] run function galaxy:tool/give/empower_lens


tag @a[tag=galaxy.request.HTct.craft] remove galaxy.success.HTct.recipeRequirementCheck
