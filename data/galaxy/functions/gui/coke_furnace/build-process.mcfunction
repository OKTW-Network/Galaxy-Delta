scoreboard players set #build.input.slot galaxy.GUI 13
scoreboard players operation #build.input.workStatus galaxy.GUI = @s galaxy.block.work.processor1.canWork
scoreboard players set #build.force galaxy.GUI 0
execute unless predicate galaxy:gui/check_slot-13 run scoreboard players set #build.force galaxy.GUI 1
function galaxy:gui/_build/process/1x1/main
