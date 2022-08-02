execute if score #block.work.processor.ID galaxy matches 1 run scoreboard players operation #block.work.processor.progress galaxy = @s galaxy.block.work.processor1.progress
execute if score #block.work.processor.ID galaxy matches 1 run scoreboard players operation #block.work.processor.burnTime galaxy = @s galaxy.block.work.processor1.burnTime

function galaxy:block/advanced_blast_furnace/work/processor/main

execute if score #block.work.processor.ID galaxy matches 1 run scoreboard players operation @s galaxy.block.work.processor1.progress = #block.work.processor.progress galaxy
execute if score #block.work.processor.ID galaxy matches 1 run scoreboard players operation @s galaxy.block.work.processor1.burnTime = #block.work.processor.burnTime galaxy
execute if score #block.work.processor.ID galaxy matches 1 store result entity @s HandItems[0].tag.CustomData.galaxy.data.processor1.burnTimeMax int 1 run scoreboard players get #block.work.processor.burnTimeMax galaxy

scoreboard players add #block.work.update_processor.recursiveStep galaxy 1
scoreboard players operation #block.work.processor.ID galaxy *= #2 num
execute if score #block.work.update_processor.recursiveStep galaxy <= #block.work.update_processor.recursiveLimit galaxy run function galaxy:block/advanced_blast_furnace/work/update_processor
