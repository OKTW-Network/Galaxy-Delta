execute if entity @s[tag=galaxy._task.gui.refresh] run tag @s add galaxy._task.hi_tech_crafting_table.buildResult
execute if entity @s[tag=galaxy._task.gui.refresh] run tag @s add galaxy._task.hi_tech_crafting_table.buildRequirementPage
execute if entity @s[tag=galaxy._task.gui.refresh] run tag @s add galaxy._task.hi_tech_crafting_table.buildRequirementPageButton

tag @s[tag=!galaxy._task.gui.buildCover,predicate=!galaxy:gui/hi_tech_crafting_table/recipe/cover] add galaxy._task.gui.buildCover
execute if entity @s[tag=galaxy._task.gui.buildCover] run tag @s add galaxy._task.gui.cleanupGuiItem
execute if entity @s[tag=galaxy._task.gui.buildCover] run function galaxy:gui/hi_tech_crafting_table/interface/recipe/build-cover
tag @s[tag=galaxy._task.gui.buildCover] remove galaxy._task.gui.buildCover

tag @s[tag=!galaxy._task.hi_tech_crafting_table.buildResult,predicate=!galaxy:gui/hi_tech_crafting_table/recipe/result] add galaxy._task.hi_tech_crafting_table.buildResult
execute if entity @s[tag=galaxy._task.hi_tech_crafting_table.buildResult] run data modify block ~ ~ ~ Items append from entity @s data.galaxy.hi_tech_crafting_table.recipe.icon
tag @s[tag=galaxy._task.hi_tech_crafting_table.buildResult] remove galaxy._task.hi_tech_crafting_table.buildResult

execute if entity @s[tag=!galaxy._task.hi_tech_crafting_table.buildRequirementPage] run function galaxy:gui/hi_tech_crafting_table/interface/recipe/check-requirement_page
execute if entity @s[tag=galaxy._task.hi_tech_crafting_table.buildRequirementPage] run tag @s add galaxy._task.gui.cleanupGuiItem
execute if entity @s[tag=galaxy._task.hi_tech_crafting_table.buildRequirementPage] run function galaxy:gui/hi_tech_crafting_table/interface/recipe/remove-requirement_page
execute if entity @s[tag=galaxy._task.hi_tech_crafting_table.buildRequirementPage] run data modify block ~ ~ ~ Items append from entity @s data.galaxy.hi_tech_crafting_table.requirementPage[]
tag @s[tag=galaxy._task.hi_tech_crafting_table.buildRequirementPage] remove galaxy._task.hi_tech_crafting_table.buildRequirementPage

execute if entity @s[tag=galaxy._task.hi_tech_crafting_table.buildRequirementPageButton] run tag @s add galaxy._task.gui.cleanupGuiItem
execute if entity @s[tag=galaxy._task.hi_tech_crafting_table.buildRequirementPageButton] run function galaxy:gui/hi_tech_crafting_table/interface/recipe/build-requirement_page_button
tag @s[tag=galaxy._task.hi_tech_crafting_table.buildRequirementPageButton] remove galaxy._task.hi_tech_crafting_table.buildRequirementPageButton
