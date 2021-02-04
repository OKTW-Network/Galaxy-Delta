function galaxy:block/advanced_blast_furnace/work/processor1/main

function galaxy:block/advanced_blast_furnace/work/check-processor_status
execute if entity @s[tag=workProcStatusUpdate] run function galaxy:gui/advanced_blast_furnace/update-process
tag @s[tag=workProcStatusUpdate] remove workProcStatusUpdate

scoreboard players set #1 calcu_temp 0
execute if score @s workProcStatus2 matches 1..9 run scoreboard players set #1 calcu_temp 1
execute if score @s workProcStatus3 matches 1..9 run scoreboard players set #1 calcu_temp 1
execute if predicate minecraft:block_states/open if score #1 calcu_temp matches 1 run function galaxy:gui/advanced_blast_furnace/update-process
