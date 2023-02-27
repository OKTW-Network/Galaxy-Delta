execute if predicate galaxy:recipe/assembly_table/blueprint/is-galaxy.gun run function galaxy:recipe/assembly_table/galaxy.gun/result/main

execute unless predicate galaxy:recipe/assembly_table/blueprint/is-galaxy run function #galaxy:recipe/assembly_table/assemble_result

function galaxy:recipe/assembly_table/save/result
