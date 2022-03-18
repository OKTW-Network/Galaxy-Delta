execute if score #processor galaxy.block matches 1 run scoreboard players operation #processor.progress1000 galaxy.block = @s galaxy.block.work.processor1.progress

scoreboard players operation #processor.progress1000 galaxy.block *= #1000 num
scoreboard players operation #processor.progress1000 galaxy.block /= #galaxy$coke_furnace_dur Config
