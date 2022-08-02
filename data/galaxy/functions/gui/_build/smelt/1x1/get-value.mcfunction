execute store result score #smeltValue galaxy.GUI run scoreboard players get #block.get.processor.burnTime1000 galaxy
scoreboard players set #1 calcu_temp 13
scoreboard players operation #smeltValue galaxy.GUI *= #1 calcu_temp
scoreboard players set #1 calcu_temp 1000
scoreboard players operation #smeltValue galaxy.GUI /= #1 calcu_temp
scoreboard players add #smeltValue galaxy.GUI 1
scoreboard players set #1 calcu_temp 13
scoreboard players operation #smeltValue galaxy.GUI < #1 calcu_temp

execute if score #block.get.processor.burnTime1000 galaxy matches 0 run scoreboard players set #smeltValue galaxy.GUI 0
