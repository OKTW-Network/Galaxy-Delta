scoreboard players set #1 calcu_temp 20
scoreboard players operation #2 calcu_temp = @s workProc1Status
scoreboard players operation #3 calcu_temp = @s workProc1Prog
function galaxy:gui/build-1x1-smelt
data modify block ~ ~ ~ Items append from storage galaxy:temp item
