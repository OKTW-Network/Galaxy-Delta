scoreboard players operation #temp.processor.progress galaxy.block = #processor.progress galaxy.block
scoreboard players set #processor.canProgressNext galaxy.block 0

function galaxy:block/coke_furnace/work/processor/check-recipe

execute unless score #coke_furnace.checkIO galaxy.recipe matches 1 if score #processor.progress galaxy.block matches 1.. run scoreboard players set #processor.progress galaxy.block 0

execute if score #coke_furnace.checkIO galaxy.recipe matches 1 run scoreboard players add #processor.progress galaxy.block 1
execute if score #coke_furnace.checkIO galaxy.recipe matches 1 if score #processor.progress galaxy.block >= #galaxy$coke_furnace_dur Config run scoreboard players operation @s galaxy.block.work.status.processing += #_ID galaxy.block
execute if score #coke_furnace.checkIO galaxy.recipe matches 1 if score #processor.progress galaxy.block >= #galaxy$coke_furnace_dur Config run function galaxy:block/coke_furnace/work/processor/complete


execute unless score #processor.progress galaxy.block = #temp.processor.progress galaxy.block if score #processor.progress galaxy.block matches 0 run scoreboard players add #updateGUI galaxy.block 100
execute if score #processor.progress galaxy.block matches 1.. run scoreboard players operation @s galaxy.block.work.status.processing += #_ID galaxy.block
