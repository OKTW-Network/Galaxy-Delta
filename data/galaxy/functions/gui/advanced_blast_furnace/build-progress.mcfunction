scoreboard players set #1 calcu_temp 12
scoreboard players operation #2 calcu_temp = @s workProc1CanWork
function galaxy:block/advanced_blast_furnace/work/processor1/get-progress
scoreboard players operation #3 calcu_temp = @s workProc1Prog
function galaxy:gui/build-1x2-progress
data modify block ~ ~ ~ Items append from storage galaxy:temp item
