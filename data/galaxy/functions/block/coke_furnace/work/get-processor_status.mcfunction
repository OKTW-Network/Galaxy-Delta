scoreboard players set @s workProcStatus 10
scoreboard players set @s workProcStatus-1 0
scoreboard players set @s workProcStatus0 0
scoreboard players set @s workProcStatus1 0

execute if score @s workProc1CanWork matches -1 run scoreboard players add @s workProcStatus-1 1
# execute if score @s workProc2CanWork matches -1 run scoreboard players add @s workProcStatus-1 1

execute if score @s workProc1CanWork matches 0 run scoreboard players add @s workProcStatus0 1
# execute if score @s workProc2CanWork matches 0 run scoreboard players add @s workProcStatus0 1

execute if score @s workProc1CanWork matches 1 run scoreboard players add @s workProcStatus1 1
# execute if score @s workProc2CanWork matches 1 run scoreboard players add @s workProcStatus1 1

scoreboard players operation @s workProcStatus += @s workProcStatus1
scoreboard players operation @s workProcStatus *= #10 num
scoreboard players operation @s workProcStatus += @s workProcStatus0
scoreboard players operation @s workProcStatus *= #10 num
scoreboard players operation @s workProcStatus += @s workProcStatus-1
