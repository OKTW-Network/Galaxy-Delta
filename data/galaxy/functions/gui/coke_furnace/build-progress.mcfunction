function galaxy:block/coke_furnace/work/processor1/get-progress

scoreboard players set #build.input.slot galaxy.GUI 12
scoreboard players operation #canWork galaxy.GUI = @s galaxy.block.work.processor1.canWork
scoreboard players operation #progress galaxy.GUI = @s galaxy.block.work.processor1.progress
scoreboard players set #build.force galaxy.GUI 0
execute unless predicate galaxy:gui/check_slot-12 run scoreboard players set #build.force galaxy.GUI 1
function galaxy:gui/_build/progress/1x2/main
