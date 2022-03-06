scoreboard players set @s galaxy.block.work.process.status 10
scoreboard players set @s galaxy.block.work.process.status-1 0
scoreboard players set @s galaxy.block.work.process.status0 0
scoreboard players set @s galaxy.block.work.process.status1 0
scoreboard players set @s galaxy.block.work.process.status2 0
scoreboard players set @s galaxy.block.work.process.status3 0

execute if score @s galaxy.block.work.processor1.canWork matches -1 run scoreboard players add @s galaxy.block.work.process.status-1 1
# execute if score @s workProc2CanWork matches -1 run scoreboard players add @s workProcStatus-1 1

execute if score @s galaxy.block.work.processor1.canWork matches 0 if score @s galaxy.block.work.processor1.burnTime matches 0 run scoreboard players add @s galaxy.block.work.process.status0 1
# execute if score @s workProc2CanWork matches 0 if score @s galaxy.block.work.processor2.burnTime matches 0 run scoreboard players add @s workProcStatus0 1

execute if score @s galaxy.block.work.processor1.canWork matches 1 if score @s galaxy.block.work.processor1.burnTime matches 0 run scoreboard players add @s galaxy.block.work.process.status1 1
# execute if score @s workProc2CanWork matches 1 if score @s galaxy.block.work.processor2.burnTime matches 0 run scoreboard players add @s workProcStatus1 1

execute if score @s galaxy.block.work.processor1.canWork matches 1 if score @s galaxy.block.work.processor1.burnTime matches 1.. run scoreboard players add @s galaxy.block.work.process.status2 1
# execute if score @s workProc2CanWork matches 1 if score @s galaxy.block.work.processor2.burnTime matches 1.. run scoreboard players add @s workProcStatus2 1

execute if score @s galaxy.block.work.processor1.canWork matches 0 if score @s galaxy.block.work.processor1.burnTime matches 1.. run scoreboard players add @s galaxy.block.work.process.status3 1
# execute if score @s workProc2CanWork matches 0 if score @s galaxy.block.work.processor2.burnTime matches 1.. run scoreboard players add @s workProcStatus3 1

scoreboard players operation @s galaxy.block.work.process.status += @s galaxy.block.work.process.status3
scoreboard players operation @s galaxy.block.work.process.status *= #10 num
scoreboard players operation @s galaxy.block.work.process.status += @s galaxy.block.work.process.status2
scoreboard players operation @s galaxy.block.work.process.status *= #10 num
scoreboard players operation @s galaxy.block.work.process.status += @s galaxy.block.work.process.status1
scoreboard players operation @s galaxy.block.work.process.status *= #10 num
scoreboard players operation @s galaxy.block.work.process.status += @s galaxy.block.work.process.status0
scoreboard players operation @s galaxy.block.work.process.status *= #10 num
scoreboard players operation @s galaxy.block.work.process.status += @s galaxy.block.work.process.status-1
