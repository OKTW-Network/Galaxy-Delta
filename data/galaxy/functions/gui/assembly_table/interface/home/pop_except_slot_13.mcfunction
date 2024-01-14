data modify storage galaxy:temp +block.pop_item.input set from block ~ ~ ~ Items
data remove storage galaxy:temp +block.pop_item.input[{Slot:13b}]
function galaxy:block/pop_item/on_top
