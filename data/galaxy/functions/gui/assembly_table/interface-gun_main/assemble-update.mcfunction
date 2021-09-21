# Parts update result
function galaxy:gui/assembly_table/interface-gun_main/check_update-parts
execute if entity @s[tag=rebuildResult] run function galaxy:gui/assembly_table/interface-gun_main/delete-result
execute if entity @s[tag=rebuildResult] run function galaxy:gui/assembly_table/interface-gun_main/rebuild-result
execute if entity @s[tag=rebuildResult] run function galaxy:gui/assembly_table/interface-gun_main/build-background_hardware
execute if entity @s[tag=rebuildResult] run function galaxy:gui/assembly_table/interface-gun_main/build-background_misc
tag @s[tag=rebuildResult] remove rebuildResult

# Result update parts
function galaxy:gui/assembly_table/interface-gun_main/check_update-result
execute if entity @s[tag=rebuildParts] run function galaxy:gui/assembly_table/interface-gun_main/delete-parts
execute if entity @s[tag=rebuildParts] run function galaxy:gui/assembly_table/interface-gun_main/rebuild-parts
execute if entity @s[tag=rebuildParts] run function galaxy:gui/assembly_table/interface-gun_main/build-background_hardware
execute if entity @s[tag=rebuildParts] run function galaxy:gui/assembly_table/interface-gun_main/build-background_misc
tag @s[tag=rebuildParts] remove rebuildParts
