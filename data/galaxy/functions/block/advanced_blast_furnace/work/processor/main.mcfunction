scoreboard players operation #temp.processor.progress galaxy.block = #processor.progress galaxy.block

function galaxy:block/advanced_blast_furnace/work/processor/check-recipe

execute if score #advanced_blast_furnace.checkIO galaxy.recipe matches 1 unless score #processor.burnTime galaxy.block matches 1.. run function galaxy:block/advanced_blast_furnace/work/processor/burn/start

execute unless score #advanced_blast_furnace.checkIO galaxy.recipe matches 1 if score #processor.progress galaxy.block matches 1.. run scoreboard players set #processor.progress galaxy.block 0

execute if score #advanced_blast_furnace.checkIO galaxy.recipe matches 1 if score #processor.burnTime galaxy.block matches 1.. run scoreboard players add #processor.progress galaxy.block 1
execute if score #advanced_blast_furnace.checkIO galaxy.recipe matches 1 if score #processor.progress galaxy.block >= #galaxy$advanced_blast_furnace_dur Config run function galaxy:block/advanced_blast_furnace/work/processor/complete

scoreboard players set #temp.processor.burnTime galaxy.block -1
execute if score #processor.burnTime galaxy.block matches 1.. store result score #temp.processor.burnTime galaxy.block run scoreboard players remove #processor.burnTime galaxy.block 1
execute if score #temp.processor.burnTime galaxy.block matches 0 run scoreboard players operation @s galaxy.block.work.status.burning += #_ID galaxy.block

execute unless score #processor.burnTime galaxy.block matches 1.. if score #processor.progress galaxy.block matches 1.. run function galaxy:block/advanced_blast_furnace/work/processor/burn/check-fuel
execute unless score #processor.burnTime galaxy.block matches 1.. if score #processor.progress galaxy.block matches 1.. unless score #advanced_blast_furnace.checkFuel galaxy.recipe matches 1 run scoreboard players set #processor.progress galaxy.block 0

execute unless score #processor.progress galaxy.block = #temp.processor.progress galaxy.block if score #processor.progress galaxy.block matches 0 run scoreboard players add #updateGUI galaxy.block 100
execute if score #processor.progress galaxy.block matches 1.. run scoreboard players operation @s galaxy.block.work.status.processing += #_ID galaxy.block
execute if score #processor.burnTime galaxy.block matches 1.. run scoreboard players operation @s galaxy.block.work.status.burning += #_ID galaxy.block
