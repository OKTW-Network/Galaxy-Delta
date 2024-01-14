execute if score #block.assembly_table.lastResultSlotStatus galaxy matches 0 run function galaxy:block/assembly_table/functional/parts/pop
execute unless score #block.assembly_table.lastResultSlotStatus galaxy matches 0 run function galaxy:block/assembly_table/functional/parts/remove
function galaxy:block/assembly_table/functional/data/delete-blueprint
function galaxy:block/assembly_table/functional/data/delete-parts
