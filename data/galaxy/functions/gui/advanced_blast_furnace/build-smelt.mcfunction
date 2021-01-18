scoreboard players set #1 calcu_temp 11
function galaxy:block/advanced_blast_furnace/work/processor1/burn/get-fuel
scoreboard players operation #2 calcu_temp = @s workProc1Fuel
function galaxy:gui/build-1x1-smelt
data modify block ~ ~ ~ Items append from storage galaxy:temp item
