scoreboard players set @s sucCfRcp 0

execute if data storage galaxy:temp process[{input:1b,id:"minecraft:coal"}] run scoreboard players set @s sucCfRcp 1
execute if score @s sucCfRcp matches 1 if data storage galaxy:temp process[{output:1b,tag:{coke:{}}}] run function galaxy:recipe/coke_furnace/check-output_count

execute if data storage galaxy:temp process[{input:1b}].Count unless data storage galaxy:temp process[{input:1b,id:"minecraft:coal"}] run scoreboard players set @s sucCfRcp -1
execute if data storage galaxy:temp process[{output:1b}].Count unless data storage galaxy:temp process[{output:1b,tag:{coke:{}}}] run scoreboard players set @s sucCfRcp -1
