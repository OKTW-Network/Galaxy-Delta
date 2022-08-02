execute if predicate galaxy:block/assembly_table/blueprint/gun/any-parts run function galaxy:gui/assembly_table/interface-gun_main/drop-parts
function galaxy:block/assembly_table/blueprint/gun/parts
tag @s add galaxy._tag.assembly_table.lockAssemble
tag @s remove galaxy._task.assembly_table.buildParts
