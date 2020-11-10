scoreboard players set #1 calcu_temp 13
scoreboard players operation #2 calcu_temp = @s workProc1Status
function galaxy:gui/build-1x1-process
data modify block ~ ~ ~ Items append from storage galaxy:temp item
