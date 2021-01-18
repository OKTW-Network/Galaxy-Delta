function galaxy:block/coke_furnace/work/processor1/check-recipe

execute unless score @s workProc1CanWork matches 1 if score @s workProc1 matches 1.. run scoreboard players set @s workProc1 0

execute if score @s workProc1CanWork matches 1 run scoreboard players add @s workProc1 1
execute if score @s workProc1CanWork matches 1 if score @s workProc1 >= #coke_furnace_dur Config run function galaxy:block/coke_furnace/work/processor1/complete
