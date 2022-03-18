scoreboard players set #processor galaxy.block 1
function galaxy:block/advanced_blast_furnace/work/processor/burn/get-burn_time_1000

scoreboard players set #build.input.slot galaxy.GUI 11
scoreboard players set #build.force galaxy.GUI 0
execute unless predicate galaxy:gui/check_slot-11 run scoreboard players set #build.force galaxy.GUI 1
function galaxy:gui/_build/smelt/1x1/main
