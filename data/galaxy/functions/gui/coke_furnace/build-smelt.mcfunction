scoreboard players set #processor galaxy.block 1
function galaxy:block/coke_furnace/work/processor/get-progress_1000
scoreboard players operation #processor.burnTime1000 galaxy.block = #processor.progress1000 galaxy.block
execute unless score #processor.progress1000 galaxy.block matches 0 run scoreboard players remove #processor.burnTime1000 galaxy.block 1000
execute unless score #processor.progress1000 galaxy.block matches 0 run scoreboard players operation #processor.burnTime1000 galaxy.block *= #-1 num

scoreboard players set #build.input.slot galaxy.GUI 20
scoreboard players set #build.force galaxy.GUI 0
execute unless predicate galaxy:gui/check_slot-20 run scoreboard players set #build.force galaxy.GUI 1
function galaxy:gui/_build/smelt/1x1/main
