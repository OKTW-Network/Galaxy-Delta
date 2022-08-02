scoreboard players operation #block._temp.work.processor.progress galaxy = #block.work.processor.progress galaxy

function galaxy:block/advanced_blast_furnace/work/processor/check-recipe

execute if score #advanced_blast_furnace.checkIO galaxy.recipe matches 1 unless score #block.work.processor.burnTime galaxy matches 1.. run function galaxy:block/advanced_blast_furnace/work/processor/burn/start

execute unless score #advanced_blast_furnace.checkIO galaxy.recipe matches 1 if score #block.work.processor.progress galaxy matches 1.. run scoreboard players set #block.work.processor.progress galaxy 0

execute if score #advanced_blast_furnace.checkIO galaxy.recipe matches 1 if score #block.work.processor.burnTime galaxy matches 1.. run scoreboard players add #block.work.processor.progress galaxy 1
execute if score #advanced_blast_furnace.checkIO galaxy.recipe matches 1 if score #block.work.processor.progress galaxy >= #galaxy$advanced_blast_furnace_dur Config run function galaxy:block/advanced_blast_furnace/work/processor/complete

scoreboard players set #block._temp.work.processor.burnTime galaxy -1
execute if score #block.work.processor.burnTime galaxy matches 1.. store result score #block._temp.work.processor.burnTime galaxy run scoreboard players remove #block.work.processor.burnTime galaxy 1
execute if score #block._temp.work.processor.burnTime galaxy matches 0 run scoreboard players operation @s galaxy.block.work.status.burning += #block.work.processor.ID galaxy

execute unless score #block.work.processor.burnTime galaxy matches 1.. if score #block.work.processor.progress galaxy matches 1.. run function galaxy:block/advanced_blast_furnace/work/processor/burn/check-fuel
execute unless score #block.work.processor.burnTime galaxy matches 1.. if score #block.work.processor.progress galaxy matches 1.. unless score #advanced_blast_furnace.checkFuel galaxy.recipe matches 1 run scoreboard players set #block.work.processor.progress galaxy 0

execute unless score #block.work.processor.progress galaxy = #block._temp.work.processor.progress galaxy if score #block.work.processor.progress galaxy matches 0 run scoreboard players add #block.updateGUI galaxy 100
execute if score #block.work.processor.progress galaxy matches 1.. run scoreboard players operation @s galaxy.block.work.status.processing += #block.work.processor.ID galaxy
execute if score #block.work.processor.burnTime galaxy matches 1.. run scoreboard players operation @s galaxy.block.work.status.burning += #block.work.processor.ID galaxy
