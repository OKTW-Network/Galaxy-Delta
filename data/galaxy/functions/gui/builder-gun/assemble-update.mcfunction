# Parts update result
function galaxy:gui/builder-gun/check_update-parts
execute if entity @s[tag=rebuildResult] run function galaxy:gui/builder-gun/rebuild-result
execute if entity @s[tag=rebuildResult] run function galaxy:gui/builder-gun/build-background_hardware
execute if entity @s[tag=rebuildResult] run function galaxy:gui/builder-gun/build-background_addon
tag @s[tag=rebuildResult] remove rebuildResult

# Result update parts
function galaxy:gui/builder-gun/check_update-result
execute if entity @s[tag=rebuildParts] run function galaxy:gui/builder-gun/rebuild-parts
execute if entity @s[tag=rebuildParts] run function galaxy:gui/builder-gun/build-background_hardware
execute if entity @s[tag=rebuildParts] run function galaxy:gui/builder-gun/build-background_addon
tag @s[tag=rebuildParts] remove rebuildParts
