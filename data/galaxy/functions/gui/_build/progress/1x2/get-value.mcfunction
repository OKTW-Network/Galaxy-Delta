execute store result score #progressValue galaxy.GUI run scoreboard players get #processor.progress1000 galaxy.block
scoreboard players set #1 calcu_temp 23
scoreboard players operation #progressValue galaxy.GUI *= #1 calcu_temp
scoreboard players set #1 calcu_temp 1000
scoreboard players operation #progressValue galaxy.GUI /= #1 calcu_temp
scoreboard players set #1 calcu_temp 22
scoreboard players operation #progressValue galaxy.GUI < #1 calcu_temp
