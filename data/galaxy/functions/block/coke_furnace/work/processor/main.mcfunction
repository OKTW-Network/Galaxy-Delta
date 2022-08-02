scoreboard players operation #block._temp.work.processor.progress galaxy = #block.work.processor.progress galaxy
scoreboard players set #block.work.processor.canProgressNext galaxy 0

function galaxy:block/coke_furnace/work/processor/check-recipe

execute unless score #coke_furnace.checkIO galaxy.recipe matches 1 if score #block.work.processor.progress galaxy matches 1.. run scoreboard players set #block.work.processor.progress galaxy 0

execute if score #coke_furnace.checkIO galaxy.recipe matches 1 run scoreboard players add #block.work.processor.progress galaxy 1
execute if score #coke_furnace.checkIO galaxy.recipe matches 1 if score #block.work.processor.progress galaxy >= #galaxy$coke_furnace_dur Config run scoreboard players operation @s galaxy.block.work.status.processing += #block.work.processor.ID galaxy
execute if score #coke_furnace.checkIO galaxy.recipe matches 1 if score #block.work.processor.progress galaxy >= #galaxy$coke_furnace_dur Config run function galaxy:block/coke_furnace/work/processor/complete


execute unless score #block.work.processor.progress galaxy = #block._temp.work.processor.progress galaxy if score #block.work.processor.progress galaxy matches 0 run scoreboard players add #block.updateGUI galaxy 100
execute if score #block.work.processor.progress galaxy matches 1.. run scoreboard players operation @s galaxy.block.work.status.processing += #block.work.processor.ID galaxy
