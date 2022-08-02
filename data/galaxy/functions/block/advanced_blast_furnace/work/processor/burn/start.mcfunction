function galaxy:block/advanced_blast_furnace/work/processor/burn/check-fuel

execute if score #advanced_blast_furnace.checkFuel galaxy.recipe matches 1 store result score #block.work.processor.burnTimeMax galaxy store result score #block.work.processor.burnTime galaxy run data get storage galaxy:get item[{fuel:1b}].tag.CustomData.galaxy.tag.fuelABf 1

execute if score #advanced_blast_furnace.checkFuel galaxy.recipe matches 1 store result score #1 calcu_temp run data get storage galaxy:get item[{fuel:1b}].Count 1
execute if score #advanced_blast_furnace.checkFuel galaxy.recipe matches 1 store result block ~ ~ ~ Items[{Slot:20b}].Count byte 1 run scoreboard players remove #1 calcu_temp 1
