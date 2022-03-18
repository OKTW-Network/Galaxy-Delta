execute if score #processor galaxy.block matches 1 run scoreboard players operation #processor.progress galaxy.block = @s galaxy.block.work.processor1.progress

function galaxy:block/coke_furnace/work/processor/main

execute if score #processor galaxy.block matches 1 run scoreboard players operation @s galaxy.block.work.processor1.progress = #processor.progress galaxy.block

scoreboard players add #processor galaxy.block 1
scoreboard players operation #_ID galaxy.block *= #2 num
execute if score #processor galaxy.block <= #processors galaxy.block run function galaxy:block/coke_furnace/work/update_processor
