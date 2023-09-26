data remove storage galaxy:temp +recipe.assembly_table.assemble.result

execute if predicate galaxy:recipe/assembly_table/blueprint/is-galaxy.gun run function galaxy:recipe/assembly_table/assemble/gun/main
execute if predicate galaxy:recipe/assembly_table/blueprint/is-galaxy.katana run function galaxy:recipe/assembly_table/assemble/katana/main

execute unless predicate galaxy:recipe/assembly_table/blueprint/is-galaxy run function #galaxy:recipe/assembly_table/assemble

execute if data storage galaxy:temp +recipe.assembly_table.assemble.result run tag @s add galaxy._success.assembly_table.resultAssembled
