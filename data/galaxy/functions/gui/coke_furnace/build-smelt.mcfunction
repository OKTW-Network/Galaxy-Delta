scoreboard players set #1 calcu_temp 20
function galaxy:block/coke_furnace/work/processor1/get-progress
scoreboard players operation #2 calcu_temp = @s workProc1Prog
execute unless score @s workProc1CanWork matches -1..0 run scoreboard players remove #2 calcu_temp 1000
execute unless score @s workProc1CanWork matches -1..0 run scoreboard players operation #2 calcu_temp *= #-1 num
function galaxy:gui/build-1x1-smelt
data modify block ~ ~ ~ Items append from storage galaxy:temp item
