execute if entity @s[tag=galaxy._task.gui.refresh] run function galaxy:gui/hi-tech_crafting_table/interface/requirement/refresh

# cover
function galaxy:gui/hi-tech_crafting_table/interface/requirement/check-cover
execute if entity @s[tag=galaxy._task.gui.buildCover] run tag @s add galaxy._task.gui.cleanupGuiItem
execute if entity @s[tag=galaxy._task.gui.buildCover] run function galaxy:gui/hi-tech_crafting_table/interface/requirement/build-cover
tag @s[tag=galaxy._task.gui.buildCover] remove galaxy._task.gui.buildCover

# result
execute unless data block ~ ~ ~ Items[{Slot:16b}] run tag @s add galaxy._task.hi-tech_crafting_table.buildResult
execute if entity @s[tag=galaxy._task.hi-tech_crafting_table.buildResult] run function galaxy:gui/hi-tech_crafting_table/interface/requirement/check-request
execute if entity @s[tag=galaxy._task.hi-tech_crafting_table.buildResult] run tag @s add galaxy._task.gui.cleanupGuiItem
execute if entity @s[tag=galaxy._task.hi-tech_crafting_table.buildResult] run function galaxy:gui/hi-tech_crafting_table/interface/requirement/build-result
tag @s[tag=galaxy._task.hi-tech_crafting_table.buildResult] remove galaxy._task.hi-tech_crafting_table.buildResult

# require list button
function galaxy:gui/hi-tech_crafting_table/interface/requirement/check-require_button
execute if entity @s[tag=setRequireButton] run tag @s add galaxy._task.gui.cleanupGuiItem
execute if entity @s[tag=setRequireButton] run function galaxy:gui/hi-tech_crafting_table/interface/requirement/build-require_button
tag @s[tag=setRequireButton] remove setRequireButton

# require list page
function galaxy:gui/hi-tech_crafting_table/interface/requirement/check-require_page
execute if entity @s[tag=setRequirePage] run tag @s add galaxy._task.gui.cleanupGuiItem
execute if entity @s[tag=setRequirePage] run function galaxy:gui/hi-tech_crafting_table/interface/requirement/delete-require_page
execute if entity @s[tag=setRequirePage] run data modify block ~ ~ ~ Items append from entity @s HandItems[0].tag.CustomData.galaxy.data.requirePage[]
tag @s[tag=setRequirePage] remove setRequirePage

# button return
execute if entity @s[tag=setButtonReturn] run item replace block ~ ~ ~ container.18 with minecraft:gray_stained_glass_pane{display:{Name:'{"translate":"gui.back","italic":false}'},HideFlags:127,CustomModelData:201020,CustomData:{galaxy:{Type:"gui"}}}
tag @s[tag=setButtonReturn] remove setButtonReturn

# mode switch, return
execute unless data block ~ ~ ~ Items[{Slot:18b}] run tag @s add galaxy._task.hi-tech_crafting_table.switchToOverview
execute if entity @s[tag=galaxy._task.hi-tech_crafting_table.switchToOverview] run tag @s add galaxy._task.gui.cleanupGuiItem
execute if entity @s[tag=galaxy._task.hi-tech_crafting_table.switchToOverview] run tag @s add galaxy._task.gui.switchInterface
execute if entity @s[tag=galaxy._task.hi-tech_crafting_table.switchToOverview] run data modify storage galaxy:temp +gui.hi-tech_crafting_table.switch_interface set value "overview"
tag @s[tag=galaxy._task.hi-tech_crafting_table.switchToOverview] remove galaxy._task.hi-tech_crafting_table.switchToOverview
