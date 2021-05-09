scoreboard players set @s sucABfRcp 0

execute if data storage galaxy:temp process[{input:1b,id:"minecraft:iron_ingot"}] run scoreboard players set @s sucABfRcp 1
execute if data storage galaxy:temp process[{output:1b,tag:{CustomData:{galaxy:{Type:"item",id:"steel_ingot"}}}}] run function galaxy:recipe/advanced_blast_furnace/check-output_count

execute if data storage galaxy:temp process[{input:1b}].Count unless data storage galaxy:temp process[{input:1b,id:"minecraft:iron_ingot"}] run scoreboard players set @s sucABfRcp -1
execute if data storage galaxy:temp process[{output:1b}].Count unless data storage galaxy:temp process[{output:1b,tag:{CustomData:{galaxy:{Type:"item",id:"steel_ingot"}}}}] run scoreboard players set @s sucABfRcp -1
