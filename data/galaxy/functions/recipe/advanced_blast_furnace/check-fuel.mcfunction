scoreboard players set #advanced_blast_furnace.checkFuel galaxy.recipe 0

execute if data storage galaxy:temp +recipe.blockIO[{fuel:1b,tag:{CustomData:{galaxy:{Type:"item",id:"coke"}}}}] run scoreboard players set #advanced_blast_furnace.checkFuel galaxy.recipe 1
