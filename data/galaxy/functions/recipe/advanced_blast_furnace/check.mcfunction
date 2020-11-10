scoreboard players set @s sucABfRcp 0

execute if data storage galaxy:temp process[{input:1b,id:"minecraft:iron_ingot"}] if data storage galaxy:temp process[{input:2b,tag:{coke:1}}] run scoreboard players set @s sucABfRcp 1
execute if score @s sucABfRcp matches 1 if data storage galaxy:temp process[{output:1b,tag:{ingotSteel:1}}] run function galaxy:recipe/advanced_blast_furnace/check-output_count

execute if data storage galaxy:temp process[{input:1b}].Count unless data storage galaxy:temp process[{input:1b,id:"minecraft:iron_ingot"}] run scoreboard players set @s sucABfRcp -1
execute if data storage galaxy:temp process[{input:2b}].Count unless data storage galaxy:temp process[{input:2b,tag:{coke:1}}] run scoreboard players set @s sucABfRcp -1
execute if data storage galaxy:temp process[{output:1b}].Count unless data storage galaxy:temp process[{output:1b,tag:{ingotSteel:1}}] run scoreboard players set @s sucABfRcp -1
