execute if entity @s[tag=galaxy._task.gui.refresh] run tag @s add galaxy._task.gui.buildCover
execute if entity @s[tag=galaxy._task.gui.refresh] run tag @s add galaxy._task.gui.coke_furnace.buildProcessProgress
execute if entity @s[tag=galaxy._task.gui.refresh] run tag @s add galaxy._task.gui.coke_furnace.buildFuelBar

data modify storage galaxy:temp +block.pop_item.input set from block ~ ~ ~ Items
data remove storage galaxy:temp +block.pop_item.input[{Slot:11b}]
data remove storage galaxy:temp +block.pop_item.input[{Slot:15b}]
function galaxy:block/pop_item/in_front

tag @s[predicate=!galaxy:gui/coke_furnace/cover] add galaxy._task.gui.buildCover
execute if entity @s[tag=galaxy._task.gui.buildCover] run tag @s add galaxy._task.gui.cleanupGuiItem
execute if entity @s[tag=galaxy._task.gui.buildCover] run function galaxy:gui/coke_furnace/build-cover
tag @s[tag=galaxy._task.gui.buildCover] remove galaxy._task.gui.buildCover

tag @s[predicate=!galaxy:gui/coke_furnace/process_progress] add galaxy._task.gui.coke_furnace.buildProcessProgress
execute if entity @s[tag=galaxy._task.gui.coke_furnace.buildProcessProgress] run tag @s add galaxy._task.gui.cleanupGuiItem
execute if entity @s[tag=galaxy._task.gui.coke_furnace.buildProcessProgress] run scoreboard players set #gui.build_piece.progress_bar_2x1.force galaxy 1
execute if entity @s[tag=galaxy._task.gui.coke_furnace.buildProcessProgress] run function galaxy:gui/coke_furnace/build-process_progress
tag @s[tag=galaxy._task.gui.coke_furnace.buildProcessProgress] remove galaxy._task.gui.coke_furnace.buildProcessProgress

tag @s[predicate=!galaxy:gui/coke_furnace/fuel_bar] add galaxy._task.gui.coke_furnace.buildFuelBar
execute if entity @s[tag=galaxy._task.gui.coke_furnace.buildFuelBar] run tag @s add galaxy._task.gui.cleanupGuiItem
execute if entity @s[tag=galaxy._task.gui.coke_furnace.buildFuelBar] run scoreboard players set #gui.build_piece.fuel_bar_1x1.force galaxy 1
execute if entity @s[tag=galaxy._task.gui.coke_furnace.buildFuelBar] run function galaxy:gui/coke_furnace/build-fuel_bar
tag @s[tag=galaxy._task.gui.coke_furnace.buildFuelBar] remove galaxy._task.gui.coke_furnace.buildFuelBar

execute if entity @s[tag=galaxy._task.gui.coke_furnace.updateProcess] run function galaxy:gui/coke_furnace/build-process_progress
execute if entity @s[tag=galaxy._task.gui.coke_furnace.updateProcess] run function galaxy:gui/coke_furnace/build-fuel_bar
tag @s[tag=galaxy._task.gui.coke_furnace.updateProcess] remove galaxy._task.gui.coke_furnace.updateProcess

execute if entity @s[tag=galaxy._task.gui.cleanupGuiItem] run function galaxy:gui/cleanup_gui_item
tag @s[tag=galaxy._task.gui.cleanupGuiItem] remove galaxy._task.gui.cleanupGuiItem

tag @s[tag=galaxy._task.gui.refresh] remove galaxy._task.gui.refresh
