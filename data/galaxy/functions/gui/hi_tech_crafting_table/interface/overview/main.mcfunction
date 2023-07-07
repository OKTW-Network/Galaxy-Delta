execute if entity @s[tag=galaxy._task.gui.refresh] run tag @s add galaxy._task.hi_tech_crafting_table.buildCategoryRow
execute if entity @s[tag=galaxy._task.gui.refresh] run tag @s add galaxy._task.hi_tech_crafting_table.buildContentPage
execute if entity @s[tag=galaxy._task.gui.refresh] run tag @s add galaxy._task.hi_tech_crafting_table.buildContentPageButton

tag @s[tag=!galaxy._task.gui.buildCover,predicate=!galaxy:gui/hi_tech_crafting_table/overview/cover] add galaxy._task.gui.buildCover
execute if entity @s[tag=galaxy._task.gui.buildCover] run tag @s add galaxy._task.gui.cleanupGuiItem
execute if entity @s[tag=galaxy._task.gui.buildCover] run function galaxy:gui/hi_tech_crafting_table/interface/overview/build-cover
tag @s[tag=galaxy._task.gui.buildCover] remove galaxy._task.gui.buildCover

execute if entity @s[tag=galaxy._task.hi_tech_crafting_table.buildCategoryRow] run tag @s add galaxy._task.gui.cleanupGuiItem
execute if entity @s[tag=galaxy._task.hi_tech_crafting_table.buildCategoryRow] run function galaxy:gui/hi_tech_crafting_table/interface/overview/build-category_row
tag @s[tag=galaxy._task.hi_tech_crafting_table.buildCategoryRow] remove galaxy._task.hi_tech_crafting_table.buildCategoryRow

execute if entity @s[tag=galaxy._task.hi_tech_crafting_table.buildContentPage] run function galaxy:gui/hi_tech_crafting_table/interface/overview/remove-content_page_slot
execute if entity @s[tag=galaxy._task.hi_tech_crafting_table.buildContentPage] run data modify block ~ ~ ~ Items append from entity @s data.galaxy.hi_tech_crafting_table.contentPage[]
tag @s[tag=galaxy._task.hi_tech_crafting_table.buildContentPage] remove galaxy._task.hi_tech_crafting_table.buildContentPage

execute if entity @s[tag=galaxy._task.hi_tech_crafting_table.buildContentPageButton] run tag @s add galaxy._task.gui.cleanupGuiItem
execute if entity @s[tag=galaxy._task.hi_tech_crafting_table.buildContentPageButton] run function galaxy:gui/hi_tech_crafting_table/interface/overview/build-content_page_button
tag @s[tag=galaxy._task.hi_tech_crafting_table.buildContentPageButton] remove galaxy._task.hi_tech_crafting_table.buildContentPageButton
