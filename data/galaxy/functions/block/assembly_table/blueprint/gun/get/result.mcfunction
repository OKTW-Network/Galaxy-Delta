data remove storage galaxy:temp +block.assembly_table.get.result
execute if predicate galaxy:block/assembly_table/blueprint/gun/have-result run data modify storage galaxy:temp +block.assembly_table.get.result set from block ~ ~ ~ Items[{Slot:13b}]
