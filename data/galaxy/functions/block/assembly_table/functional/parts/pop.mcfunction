function galaxy:block/assembly_table/functional/parts/get
data modify storage galaxy:temp +block.pop_item.input set from storage galaxy:temp +block.assembly_table.parts
function galaxy:block/pop_item/on_top
