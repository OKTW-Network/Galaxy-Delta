function galaxy:block/coke_furnace/work/processor1/get-progress

scoreboard players set #build.input.slot galaxy.GUI 20
scoreboard players operation #fuel galaxy.GUI = @s galaxy.block.work.processor1.progress
execute unless score @s galaxy.block.work.processor1.canWork matches -1..0 run scoreboard players remove #fuel galaxy.GUI 1000
execute unless score @s galaxy.block.work.processor1.canWork matches -1..0 run scoreboard players operation #fuel galaxy.GUI *= #-1 num
scoreboard players set #build.force galaxy.GUI 0
execute unless predicate galaxy:gui/check_slot-20 run scoreboard players set #build.force galaxy.GUI 1
function galaxy:gui/_build/smelt/1x1/main
