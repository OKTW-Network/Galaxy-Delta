# GUI cover
function galaxy:gui/assembly_table/interface-gun_main/check-cover
execute if entity @s[tag=galaxy._task.GUI.buildCover] run function galaxy:gui/remove_player_gui_item
execute if entity @s[tag=galaxy._task.GUI.buildCover] run function galaxy:gui/assembly_table/interface-gun_main/drop_displace-cover
execute if entity @s[tag=galaxy._task.GUI.buildCover] run function galaxy:gui/assembly_table/interface-gun_main/build-cover
execute if entity @s[tag=galaxy._task.GUI.buildCover] run tag @s remove galaxy._task.GUI.buildCover

# Drop unallowed
function galaxy:gui/assembly_table/interface-gun_main/check-unallowed
execute if entity @s[tag=galaxy._task.assembly_table.dropUnallowed] run function galaxy:gui/assembly_table/interface-gun_main/drop-unallowed

# # Type unallowed
# execute if data block ~ ~ ~ Items[].tag.CustomData.galaxy.tag.component.Limitation run function galaxy:gui/assembly_table/interface-gun_main/check-fortype
# execute if entity @s[tag=galaxy._task.assembly_table.dropLimited] run function galaxy:gui/assembly_table/interface-gun_main/drop-fortype
# tag @s remove galaxy._task.assembly_table.dropLimited

function galaxy:gui/assembly_table/interface-gun_main/check_update-parts
function galaxy:gui/assembly_table/interface-gun_main/check_update-result

execute if entity @s[tag=galaxy._task.assembly_table.rebuildResult] run function galaxy:gui/assembly_table/interface-gun_main/assemble-update_result
execute if entity @s[tag=galaxy._task.assembly_table.rebuildParts] run function galaxy:gui/assembly_table/interface-gun_main/assemble-update_parts

execute if entity @s[tag=galaxy._task.assembly_table.buildResult] run function galaxy:gui/assembly_table/interface-gun_main/assemble-build_result
execute if entity @s[tag=galaxy._task.assembly_table.buildParts] run function galaxy:gui/assembly_table/interface-gun_main/assemble-build_parts

execute if entity @s[tag=galaxy._task.assembly_table.removeResult] run function galaxy:gui/assembly_table/interface-gun_main/assemble-remove_result
execute if entity @s[tag=galaxy._task.assembly_table.removeParts] run function galaxy:gui/assembly_table/interface-gun_main/assemble-remove_parts

execute if entity @s[tag=galaxy._task.assembly_table.buildBackground] run function galaxy:gui/assembly_table/interface-gun_main/build-background

execute if entity @s[tag=galaxy._task.GUI.update] run tag @s remove galaxy._task.GUI.update
