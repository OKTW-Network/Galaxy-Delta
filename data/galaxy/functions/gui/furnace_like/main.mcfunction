execute if entity @s[tag=galaxy._task.gui.refresh] run tag @s add galaxy._task.gui.buildCover
execute if entity @s[tag=galaxy._task.gui.refresh] run tag @s add galaxy._task.gui.furnace_like.buildProcessProgress
execute if entity @s[tag=galaxy._task.gui.refresh] run tag @s add galaxy._task.gui.furnace_like.buildFuelBar

data modify storage galaxy:temp +block.pop_item.input set from block ~ ~ ~ Items
data remove storage galaxy:temp +block.pop_item.input[{Slot:2b}]
data remove storage galaxy:temp +block.pop_item.input[{Slot:15b}]
data remove storage galaxy:temp +block.pop_item.input[{Slot:20b}]
function galaxy:block/pop_item/in_front

tag @s[predicate=!galaxy:gui/furnace_like/cover] add galaxy._task.gui.buildCover
execute if entity @s[tag=galaxy._task.gui.buildCover] run tag @s add galaxy._task.gui.cleanupGuiItem
execute if entity @s[tag=galaxy._task.gui.buildCover] run function galaxy:gui/furnace_like/build-cover
tag @s[tag=galaxy._task.gui.buildCover] remove galaxy._task.gui.buildCover

tag @s[predicate=!galaxy:gui/furnace_like/process_progress] add galaxy._task.gui.furnace_like.buildProcessProgress
execute if entity @s[tag=galaxy._task.gui.furnace_like.buildProcessProgress] run tag @s add galaxy._task.gui.cleanupGuiItem
execute if entity @s[tag=galaxy._task.gui.furnace_like.buildProcessProgress] run scoreboard players set #gui.build_piece.progress_bar_2x1.force galaxy 1
execute if entity @s[tag=galaxy._task.gui.furnace_like.buildProcessProgress] run function galaxy:gui/furnace_like/build-process_progress
tag @s[tag=galaxy._task.gui.furnace_like.buildProcessProgress] remove galaxy._task.gui.furnace_like.buildProcessProgress

tag @s[predicate=!galaxy:gui/furnace_like/fuel_bar] add galaxy._task.gui.furnace_like.buildFuelBar
execute if entity @s[tag=galaxy._task.gui.furnace_like.buildFuelBar] run tag @s add galaxy._task.gui.cleanupGuiItem
execute if entity @s[tag=galaxy._task.gui.furnace_like.buildFuelBar] run scoreboard players set #gui.build_piece.fuel_bar_1x1.force galaxy 1
execute if entity @s[tag=galaxy._task.gui.furnace_like.buildFuelBar] run function galaxy:gui/furnace_like/build-fuel_bar
tag @s[tag=galaxy._task.gui.furnace_like.buildFuelBar] remove galaxy._task.gui.furnace_like.buildFuelBar

execute if entity @s[tag=galaxy._task.gui.furnace_like.refreshProcess] run function galaxy:gui/furnace_like/build-process_progress
execute if entity @s[tag=galaxy._task.gui.furnace_like.refreshProcess] run function galaxy:gui/furnace_like/build-fuel_bar
tag @s[tag=galaxy._task.gui.furnace_like.refreshProcess] remove galaxy._task.gui.furnace_like.refreshProcess

execute if entity @s[tag=galaxy._task.gui.cleanupGuiItem] run function galaxy:gui/cleanup_gui_item
tag @s[tag=galaxy._task.gui.cleanupGuiItem] remove galaxy._task.gui.cleanupGuiItem

execute if score #gui.furnace_like.resetRefresh galaxy matches 1 run tag @s[tag=galaxy._task.gui.refresh] remove galaxy._task.gui.refresh
scoreboard players set #gui.furnace_like.resetRefresh galaxy 1
