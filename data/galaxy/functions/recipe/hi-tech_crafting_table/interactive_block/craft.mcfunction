# elevator
execute if score @s galaxy.GUI.HTct.recipeSubject matches 1 as @a[tag=galaxy.request.HTct.craft,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/interactive_block/requirement-check/elevator
execute if score @s galaxy.GUI.HTct.recipeSubject matches 1 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/interactive_block/requirement-remove/elevator
execute if score @s galaxy.GUI.HTct.recipeSubject matches 1 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:block/give/elevator
execute if score @s galaxy.GUI.HTct.recipeSubject matches 1 as @a[tag=galaxy.request.HTct.craft,gamemode=creative] run function galaxy:block/give/elevator

# katana display stand type 1
execute if score @s galaxy.GUI.HTct.recipeSubject matches 2 as @a[tag=galaxy.request.HTct.craft,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/interactive_block/requirement-check/katana_display_stand-1
execute if score @s galaxy.GUI.HTct.recipeSubject matches 2 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/interactive_block/requirement-remove/katana_display_stand-1
execute if score @s galaxy.GUI.HTct.recipeSubject matches 2 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:entity/give/katana_display_stand-1
execute if score @s galaxy.GUI.HTct.recipeSubject matches 2 as @a[tag=galaxy.request.HTct.craft,gamemode=creative] run function galaxy:entity/give/katana_display_stand-1

# katana display stand type 2
execute if score @s galaxy.GUI.HTct.recipeSubject matches 3 as @a[tag=galaxy.request.HTct.craft,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/interactive_block/requirement-check/katana_display_stand-2
execute if score @s galaxy.GUI.HTct.recipeSubject matches 3 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/interactive_block/requirement-remove/katana_display_stand-2
execute if score @s galaxy.GUI.HTct.recipeSubject matches 3 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:entity/give/katana_display_stand-2
execute if score @s galaxy.GUI.HTct.recipeSubject matches 3 as @a[tag=galaxy.request.HTct.craft,gamemode=creative] run function galaxy:entity/give/katana_display_stand-2

# katana display stand type 3
execute if score @s galaxy.GUI.HTct.recipeSubject matches 4 as @a[tag=galaxy.request.HTct.craft,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/interactive_block/requirement-check/katana_display_stand-3
execute if score @s galaxy.GUI.HTct.recipeSubject matches 4 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/interactive_block/requirement-remove/katana_display_stand-3
execute if score @s galaxy.GUI.HTct.recipeSubject matches 4 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:entity/give/katana_display_stand-3
execute if score @s galaxy.GUI.HTct.recipeSubject matches 4 as @a[tag=galaxy.request.HTct.craft,gamemode=creative] run function galaxy:entity/give/katana_display_stand-3


tag @a[tag=galaxy.request.HTct.craft] remove galaxy.success.HTct.recipeRequirementCheck
