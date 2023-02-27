execute if score #block.work.processor.ID galaxy matches 1 run scoreboard players operation #block.work.processor.progress galaxy = @s galaxy.block.work.processor1.progress

function galaxy:block/coke_furnace/work/processor/main

execute if score #block.work.processor.ID galaxy matches 1 run scoreboard players operation @s galaxy.block.work.processor1.progress = #block.work.processor.progress galaxy

scoreboard players add #block.work.update_processor.recursiveStep galaxy 1
scoreboard players operation #block.work.processor.ID galaxy *= #2 num
execute if score #block.work.update_processor.recursiveStep galaxy <= #block.work.update_processor._recursiveTimes galaxy run function galaxy:block/coke_furnace/work/update_processor
