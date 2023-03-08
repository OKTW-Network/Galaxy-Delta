scoreboard players operation #gui.furnace_like.processProgress galaxy = @s galaxy.block.process.progress
scoreboard players operation #gui.furnace_like.processProgressMax galaxy = #galaxy$block.reinforced_blast_furnace.process_duration Config
scoreboard players operation #gui.furnace_like.processProgressMax galaxy = #galaxy$block.reinforced_blast_furnace.process_duration Config
scoreboard players operation #gui.furnace_like.burnTime galaxy = @s galaxy.block.process.burnTime
execute store result score #gui.furnace_like.burnTimeMax galaxy run data get entity @s HandItems[0].tag.CustomData.galaxy.data.reinforced_blast_furnace.burnTimeMax
function galaxy:gui/furnace_like/main
