execute if data storage galaxy:temp +block.drop_item.input[{tag:{CustomData:{galaxy:{Type:"gui"}}}}] run data remove storage galaxy:temp +block.drop_item.input[{tag:{CustomData:{galaxy:{Type:"gui"}}}}]
data modify storage cu:block drop_item.input set from storage galaxy:temp +block.drop_item.input
data remove storage galaxy:temp +block.drop_item.input
