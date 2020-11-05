# Parts update result
function galaxy:gui/assembly_table/check_update-parts
execute if entity @s[tag=rebuildResult] run function galaxy:gui/assembly_table/delete-result
execute if entity @s[tag=rebuildResult] run function galaxy:gui/assembly_table/rebuild-result
execute if entity @s[tag=rebuildResult] run function galaxy:gui/assembly_table/build-background_hardware
execute if entity @s[tag=rebuildResult] run function galaxy:gui/assembly_table/build-background_misc
tag @s[tag=rebuildResult] remove rebuildResult

# Result update parts
function galaxy:gui/assembly_table/check_update-result
execute if entity @s[tag=rebuildParts] run function galaxy:gui/assembly_table/delete-parts
execute if entity @s[tag=rebuildParts] run function galaxy:gui/assembly_table/rebuild-parts
execute if entity @s[tag=rebuildParts] run function galaxy:gui/assembly_table/build-background_hardware
execute if entity @s[tag=rebuildParts] run function galaxy:gui/assembly_table/build-background_misc
tag @s[tag=rebuildParts] remove rebuildParts
