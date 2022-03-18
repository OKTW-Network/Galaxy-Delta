scoreboard players set #advanced_blast_furnace.checkIO galaxy.recipe 0

execute if data storage galaxy:temp +recipe.blockIO[{input:1b,id:"minecraft:iron_ingot"}] run scoreboard players set #advanced_blast_furnace.checkIO galaxy.recipe 1

execute if data storage galaxy:temp +recipe.blockIO[{output:1b,tag:{CustomData:{galaxy:{Type:"item",id:"steel_ingot"}}}}] run function galaxy:recipe/advanced_blast_furnace/check-output_count

execute if data storage galaxy:temp +recipe.blockIO[{input:1b}].Count unless data storage galaxy:temp +recipe.blockIO[{input:1b,id:"minecraft:iron_ingot"}] run scoreboard players set #advanced_blast_furnace.checkIO galaxy.recipe -1
execute if data storage galaxy:temp +recipe.blockIO[{output:1b}].Count unless data storage galaxy:temp +recipe.blockIO[{output:1b,tag:{CustomData:{galaxy:{Type:"item",id:"steel_ingot"}}}}] run scoreboard players set #advanced_blast_furnace.checkIO galaxy.recipe -1
