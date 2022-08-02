execute if score #block._input.processor_ID galaxy matches 1 run scoreboard players operation #block.get.processor.burnTime1000 galaxy = @s galaxy.block.work.processor1.burnTime
execute if score #block._input.processor_ID galaxy matches 1 store result score #block.work.processor.burnTimeMax galaxy run data get entity @s HandItems[0].tag.CustomData.galaxy.data.processor1.burnTimeMax

scoreboard players operation #block.get.processor.burnTime1000 galaxy *= #1000 num
scoreboard players operation #block.get.processor.burnTime1000 galaxy /= #block.work.processor.burnTimeMax galaxy
