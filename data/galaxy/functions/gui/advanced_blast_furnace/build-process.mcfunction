scoreboard players set #1 calcu_temp 13
scoreboard players set #2 calcu_temp 0
execute if score @s workProc1CanWork matches 1 if score @s workProc1Burn matches 1.. run scoreboard players set #2 calcu_temp 1
execute if score @s workProc1CanWork matches -1 run scoreboard players set #2 calcu_temp -1
function galaxy:gui/build-1x1-process
data modify block ~ ~ ~ Items append from storage galaxy:temp item
