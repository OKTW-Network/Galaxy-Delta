function galaxy:block/assembly_table/functional/parts/get
data modify storage cu:block container.remove_slot.input set from storage galaxy:temp +block.assembly_table.parts
function cu:block/container/remove_slot
