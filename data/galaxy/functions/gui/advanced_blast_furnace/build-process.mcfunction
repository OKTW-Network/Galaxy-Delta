scoreboard players set #build.input.slot galaxy.GUI 13
scoreboard players set #build.input.workStatus galaxy.GUI 0
execute if score @s galaxy.block.work.processor1.canWork matches 1 if score @s galaxy.block.work.processor1.burnTime matches 1.. run scoreboard players set #build.input.workStatus galaxy.GUI 1
execute if score @s galaxy.block.work.processor1.canWork matches -1 run scoreboard players set #build.input.workStatus galaxy.GUI -1
scoreboard players set #build.force galaxy.GUI 0
execute unless predicate galaxy:gui/check_slot-13 run scoreboard players set #build.force galaxy.GUI 1
function galaxy:gui/_build/process/1x1/main
