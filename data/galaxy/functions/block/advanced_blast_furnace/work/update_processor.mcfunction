execute if score #processor galaxy.block matches 1 run scoreboard players operation #processor.progress galaxy.block = @s galaxy.block.work.processor1.progress
execute if score #processor galaxy.block matches 1 run scoreboard players operation #processor.burnTime galaxy.block = @s galaxy.block.work.processor1.burnTime

function galaxy:block/advanced_blast_furnace/work/processor/main

execute if score #processor galaxy.block matches 1 run scoreboard players operation @s galaxy.block.work.processor1.progress = #processor.progress galaxy.block
execute if score #processor galaxy.block matches 1 run scoreboard players operation @s galaxy.block.work.processor1.burnTime = #processor.burnTime galaxy.block
execute if score #processor galaxy.block matches 1 store result entity @s HandItems[0].tag.CustomData.galaxy.data.processor1.burnTimeMax int 1 run scoreboard players get #processor.burnTimeMax galaxy.block

scoreboard players add #processor galaxy.block 1
scoreboard players operation #_ID galaxy.block *= #2 num
execute if score #processor galaxy.block <= #processors galaxy.block run function galaxy:block/advanced_blast_furnace/work/update_processor
