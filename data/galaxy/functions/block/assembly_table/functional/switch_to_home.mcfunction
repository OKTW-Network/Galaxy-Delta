execute if data entity @s data.galaxy.assembly_table.blueprint run function galaxy:block/assembly_table/functional/parts/pop
function galaxy:block/assembly_table/functional/data/delete-blueprint
function galaxy:block/assembly_table/functional/data/delete-parts
function galaxy:block/assembly_table/functional/blueprint_page/get_slot_max

tag @s add galaxy._task.gui.refresh

tag @s remove galaxy._task.assembly_table.switchToHome
