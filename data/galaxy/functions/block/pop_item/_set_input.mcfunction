execute if data storage galaxy:temp +block.pop_item.input[{tag:{CustomData:{galaxy:{Type:"gui"}}}}] run data remove storage galaxy:temp +block.pop_item.input[{tag:{CustomData:{galaxy:{Type:"gui"}}}}]
data modify storage cu:block container.pop_item.input set from storage galaxy:temp +block.pop_item.input
data remove storage galaxy:temp +block.pop_item.input
