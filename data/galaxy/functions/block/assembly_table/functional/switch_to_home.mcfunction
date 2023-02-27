function galaxy:recipe/assembly_table/save/delete-blueprint
function galaxy:recipe/assembly_table/save/delete-parts
scoreboard players reset @s galaxy.block.assembly_table.requiredCount

function galaxy:gui/cleanup_gui_item
tag @s add galaxy._task.gui.refresh
