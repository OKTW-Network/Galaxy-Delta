scoreboard players set #processors galaxy.block 1
scoreboard players set #processor galaxy.block 1
scoreboard players set #updateGUI galaxy.block 0
scoreboard players set @s galaxy.block.work.status.processing 0
scoreboard players operation #temp%status.burning galaxy.block = @s galaxy.block.work.status.burning
scoreboard players set @s galaxy.block.work.status.burning 0
scoreboard players set #_ID galaxy.block 1
function galaxy:block/advanced_blast_furnace/work/update_processor

execute unless score @s galaxy.block.work.status.burning = #temp%status.burning galaxy.block run function galaxy:block/advanced_blast_furnace/states/lit

execute if score @s galaxy.block.work.status.processing matches 1.. run scoreboard players add #updateGUI galaxy.block 1
execute if score @s galaxy.block.work.status.burning matches 1.. run scoreboard players add #updateGUI galaxy.block 1

execute if score #updateGUI galaxy.block matches 1..99 if predicate minecraft:block_states/open run tag @s add galaxy.gui.updateProcess
execute if score #updateGUI galaxy.block matches 100.. run tag @s add galaxy.gui.updateProcess
