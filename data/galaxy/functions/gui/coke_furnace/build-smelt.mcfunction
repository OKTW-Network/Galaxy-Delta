scoreboard players set #block._input.processor_ID galaxy 1
function galaxy:block/coke_furnace/work/processor/get-progress_1000
scoreboard players operation #block.get.processor.burnTime1000 galaxy = #block.get.processor.progress1000 galaxy
execute unless score #block.get.processor.progress1000 galaxy matches 0 run scoreboard players remove #block.get.processor.burnTime1000 galaxy 1000
execute unless score #block.get.processor.progress1000 galaxy matches 0 run scoreboard players operation #block.get.processor.burnTime1000 galaxy *= #-1 num

scoreboard players set #build.input.slot galaxy.GUI 20
scoreboard players set #build.force galaxy.GUI 0
execute unless predicate galaxy:gui/check_slot-20 run scoreboard players set #build.force galaxy.GUI 1
function galaxy:gui/_build/smelt/1x1/main
