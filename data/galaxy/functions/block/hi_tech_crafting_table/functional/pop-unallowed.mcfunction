data modify storage galaxy:temp +block.pop_item.input set from block ~ ~ ~ Items
data remove storage galaxy:temp +block.pop_item.input[{tag:{CustomData:{galaxy:{Type:"trigger"}}}}]
function galaxy:block/pop_item/on_top
