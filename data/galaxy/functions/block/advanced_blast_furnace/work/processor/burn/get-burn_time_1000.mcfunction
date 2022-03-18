execute if score #processor galaxy.block matches 1 run scoreboard players operation #processor.burnTime1000 galaxy.block = @s galaxy.block.work.processor1.burnTime
execute if score #processor galaxy.block matches 1 store result score #processor.burnTimeMax galaxy.block run data get entity @s HandItems[0].tag.CustomData.galaxy.data.processor1.burnTimeMax

scoreboard players operation #processor.burnTime1000 galaxy.block *= #1000 num
scoreboard players operation #processor.burnTime1000 galaxy.block /= #processor.burnTimeMax galaxy.block
