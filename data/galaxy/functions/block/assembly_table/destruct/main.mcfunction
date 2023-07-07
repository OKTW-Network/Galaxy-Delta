tag @s add galaxy._tag.thisDestroyedBlock
execute if predicate galaxy:block/assembly_table run setblock ~ ~ ~ minecraft:air destroy
function galaxy:gui/cleanup_gui_item
kill @e[type=minecraft:item,nbt={Item:{tag:{display:{Name:'{"translate":"container.galaxy.assembly_table"}'}}}}]
execute align xyz as @e[type=minecraft:item,dx=0,dy=0,dz=0] if data entity @s Item.tag.CustomData.galaxy.tag.assemblyInfo.UUID run function galaxy:block/assembly_table/destruct/kill_result_item
function galaxy:block/summon_item/assembly_table
tag @s remove galaxy._tag.thisDestroyedBlock
