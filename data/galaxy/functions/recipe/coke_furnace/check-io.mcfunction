scoreboard players set #coke_furnace.checkIO galaxy.recipe 0

execute if data storage galaxy:temp +recipe.blockIO[{input:1b,id:"minecraft:coal"}] run scoreboard players set #coke_furnace.checkIO galaxy.recipe 1

execute if data storage galaxy:temp +recipe.blockIO[{output:1b,tag:{CustomData:{galaxy:{Type:"item",id:"coke"}}}}] run function galaxy:recipe/coke_furnace/check-output_count

execute if data storage galaxy:temp +recipe.blockIO[{input:1b}].Count unless data storage galaxy:temp +recipe.blockIO[{input:1b,id:"minecraft:coal"}] run scoreboard players set #coke_furnace.checkIO galaxy.recipe -1
execute if data storage galaxy:temp +recipe.blockIO[{output:1b}].Count unless data storage galaxy:temp +recipe.blockIO[{output:1b,tag:{CustomData:{galaxy:{Type:"item",id:"coke"}}}}] run scoreboard players set #coke_furnace.checkIO galaxy.recipe -1
