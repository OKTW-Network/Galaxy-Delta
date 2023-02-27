function galaxy:recipe/assembly_table/get/result_blueprint_id
data modify storage galaxy:temp +recipe.assembly_table.get.blueprint_by_id.blueprintID set from storage galaxy:temp +recipe.assembly_table.get.blueprint_id.result
function galaxy:recipe/assembly_table/get/blueprint_by_id/main
data modify storage galaxy:temp +recipe.assembly_table.save.blueprint set from storage galaxy:temp +recipe.assembly_table.get.blueprint_by_id.result
function galaxy:recipe/assembly_table/save/blueprint

function galaxy:gui/cleanup_gui_item
tag @s add galaxy._task.gui.refresh
