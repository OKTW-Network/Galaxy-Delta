function galaxy:block/coke_furnace/work/processor1/main

function galaxy:block/coke_furnace/work/check-processor_status
execute if entity @s[tag=workProcStatusUpdate] run tag @s add setProcess
execute if entity @s[tag=workProcStatusUpdate] run function galaxy:gui/coke_furnace/update-progress
tag @s[tag=workProcStatusUpdate] remove workProcStatusUpdate

execute if predicate galaxy:block/barrel-open if score @s workProcStatus1 matches 1..9 run function galaxy:gui/coke_furnace/update-progress

function galaxy:block/coke_furnace/work/get-status
