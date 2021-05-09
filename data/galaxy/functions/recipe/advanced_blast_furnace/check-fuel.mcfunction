scoreboard players set @s sucABfFuel 0

execute if data storage galaxy:temp process[{fuel:1b,tag:{CustomData:{galaxy:{Type:"item",id:"coke"}}}}] run scoreboard players set @s sucABfFuel 1

# execute if data storage galaxy:temp process[{fuel:1b}].Count unless data storage galaxy:temp process[{fuel:1b,tag:{CustomData:{galaxy:{Type:"item",id:"coke"}}}}] run scoreboard players set @s sucABfFuel -1
