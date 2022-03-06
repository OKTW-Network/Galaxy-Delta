scoreboard players set @s galaxy.block.work.process.status 10
scoreboard players set @s galaxy.block.work.process.status-1 0
scoreboard players set @s galaxy.block.work.process.status0 0
scoreboard players set @s galaxy.block.work.process.status1 0

execute if score @s galaxy.block.work.processor1.canWork matches -1 run scoreboard players add @s galaxy.block.work.process.status-1 1
# execute if score @s workProc2CanWork matches -1 run scoreboard players add @s workProcStatus-1 1

execute if score @s galaxy.block.work.processor1.canWork matches 0 run scoreboard players add @s galaxy.block.work.process.status0 1
# execute if score @s workProc2CanWork matches 0 run scoreboard players add @s workProcStatus0 1

execute if score @s galaxy.block.work.processor1.canWork matches 1 run scoreboard players add @s galaxy.block.work.process.status1 1
# execute if score @s workProc2CanWork matches 1 run scoreboard players add @s workProcStatus1 1

scoreboard players operation @s galaxy.block.work.process.status += @s galaxy.block.work.process.status1
scoreboard players operation @s galaxy.block.work.process.status *= #10 num
scoreboard players operation @s galaxy.block.work.process.status += @s galaxy.block.work.process.status0
scoreboard players operation @s galaxy.block.work.process.status *= #10 num
scoreboard players operation @s galaxy.block.work.process.status += @s galaxy.block.work.process.status-1
