# hi-tech crafting table
execute if score @s galaxy.GUI.HTct.recipeSubject matches 1 as @a[tag=galaxy.request.HTct.craft,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/functional_block/requirement-check/hi-tech_crafting_table
execute if score @s galaxy.GUI.HTct.recipeSubject matches 1 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/functional_block/requirement-remove/hi-tech_crafting_table
execute if score @s galaxy.GUI.HTct.recipeSubject matches 1 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:block/give/hi-tech_crafting_table
execute if score @s galaxy.GUI.HTct.recipeSubject matches 1 as @a[tag=galaxy.request.HTct.craft,gamemode=creative] run function galaxy:block/give/hi-tech_crafting_table

# coke furnace
execute if score @s galaxy.GUI.HTct.recipeSubject matches 2 as @a[tag=galaxy.request.HTct.craft,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/functional_block/requirement-check/coke_furnace
execute if score @s galaxy.GUI.HTct.recipeSubject matches 2 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/functional_block/requirement-remove/coke_furnace
execute if score @s galaxy.GUI.HTct.recipeSubject matches 2 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:block/give/coke_furnace
execute if score @s galaxy.GUI.HTct.recipeSubject matches 2 as @a[tag=galaxy.request.HTct.craft,gamemode=creative] run function galaxy:block/give/coke_furnace

# advanced blast furnace
execute if score @s galaxy.GUI.HTct.recipeSubject matches 3 as @a[tag=galaxy.request.HTct.craft,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/functional_block/requirement-check/advanced_blast_furnace
execute if score @s galaxy.GUI.HTct.recipeSubject matches 3 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/functional_block/requirement-remove/advanced_blast_furnace
execute if score @s galaxy.GUI.HTct.recipeSubject matches 3 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:block/give/advanced_blast_furnace
execute if score @s galaxy.GUI.HTct.recipeSubject matches 3 as @a[tag=galaxy.request.HTct.craft,gamemode=creative] run function galaxy:block/give/advanced_blast_furnace

# assembly table
execute if score @s galaxy.GUI.HTct.recipeSubject matches 4 as @a[tag=galaxy.request.HTct.craft,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/functional_block/requirement-check/assembly_table
execute if score @s galaxy.GUI.HTct.recipeSubject matches 4 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:recipe/hi-tech_crafting_table/functional_block/requirement-remove/assembly_table
execute if score @s galaxy.GUI.HTct.recipeSubject matches 4 as @a[tag=galaxy.request.HTct.craft,tag=galaxy.success.HTct.recipeRequirementCheck,gamemode=!creative] run function galaxy:block/give/assembly_table
execute if score @s galaxy.GUI.HTct.recipeSubject matches 4 as @a[tag=galaxy.request.HTct.craft,gamemode=creative] run function galaxy:block/give/assembly_table


tag @a[tag=galaxy.request.HTct.craft] remove galaxy.success.HTct.recipeRequirementCheck
