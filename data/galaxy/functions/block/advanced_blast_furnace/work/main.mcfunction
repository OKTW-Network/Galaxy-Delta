scoreboard players set #block.work.update_processor._recursiveTimes galaxy 1
scoreboard players set #block.work.update_processor.recursiveStep galaxy 1
scoreboard players set #block.updateGUI galaxy 0
scoreboard players set @s galaxy.block.work.status.processing 0
scoreboard players operation #block._temp.work.status.burning galaxy = @s galaxy.block.work.status.burning
scoreboard players set @s galaxy.block.work.status.burning 0
scoreboard players set #block.work.processor.ID galaxy 1
function galaxy:block/advanced_blast_furnace/work/update_processor


execute unless score @s galaxy.block.work.status.burning = #block._temp.work.status.burning galaxy run function galaxy:block/advanced_blast_furnace/states/lit

execute if score @s galaxy.block.work.status.processing matches 1.. run scoreboard players add #block.updateGUI galaxy 1
execute if score @s galaxy.block.work.status.burning matches 1.. run scoreboard players add #block.updateGUI galaxy 1

execute if score #block.updateGUI galaxy matches 1..99 if predicate minecraft:block_states/open run tag @s add galaxy.gui.updateProcess
execute if score #block.updateGUI galaxy matches 100.. run tag @s add galaxy.gui.updateProcess
