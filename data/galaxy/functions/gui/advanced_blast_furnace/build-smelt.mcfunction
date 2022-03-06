function galaxy:block/advanced_blast_furnace/work/processor1/burn/get-fuel

scoreboard players set #build.input.slot galaxy.GUI 11
scoreboard players operation #fuel galaxy.GUI = @s galaxy.block.work.processor1.fuel
scoreboard players set #build.force galaxy.GUI 0
execute unless predicate galaxy:gui/check_slot-11 run scoreboard players set #build.force galaxy.GUI 1
function galaxy:gui/_build/smelt/1x1/main
