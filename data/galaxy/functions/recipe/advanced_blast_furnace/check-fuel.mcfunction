scoreboard players set #1 calcu_temp 0
execute if data storage galaxy:temp +recipe.blockIO[{fuel:1b}].tag.CustomData.galaxy.tag.advancedBlastFurnaceFuel store result score #1 calcu_temp run data get storage galaxy:temp +recipe.blockIO[{fuel:1b}].tag.CustomData.galaxy.tag.advancedBlastFurnaceFuel 1
scoreboard players set #advanced_blast_furnace.checkFuel galaxy.recipe 0
execute if score #1 calcu_temp matches 1.. run scoreboard players set #advanced_blast_furnace.checkFuel galaxy.recipe 1
