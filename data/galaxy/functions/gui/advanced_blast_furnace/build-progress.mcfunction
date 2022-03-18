scoreboard players set #processor galaxy.block 1
function galaxy:block/advanced_blast_furnace/work/processor/get-progress_1000

scoreboard players set #build.input.slot galaxy.GUI 12
scoreboard players set #build.force galaxy.GUI 0
execute unless predicate galaxy:gui/check_slot-12 run scoreboard players set #build.force galaxy.GUI 1
function galaxy:gui/_build/progress/1x2/main
