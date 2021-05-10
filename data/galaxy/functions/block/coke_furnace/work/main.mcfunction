function galaxy:block/coke_furnace/work/processor1/main

function galaxy:block/coke_furnace/work/check-processor_status
execute if entity @s[tag=workProcStatusUpdate] run tag @s add galaxy.gui.updateProcess
tag @s[tag=workProcStatusUpdate] remove workProcStatusUpdate

execute if predicate minecraft:block_states/open if score @s workProcStatus1 matches 1..9 run tag @s add galaxy.gui.updateProcess
