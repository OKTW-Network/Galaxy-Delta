# Remove result
tag @s[predicate=!galaxy:gui/check-builder_gun_require,predicate=galaxy:gui/check-builder_gun_result] add removeResult
execute if entity @s[tag=removeResult] run function galaxy:gui/builder-gun/delete-result
execute if entity @s[tag=removeResult] run data remove entity @s HandItems[0].tag.GUI.parts
execute if entity @s[tag=removeResult] run data remove entity @s HandItems[0].tag.GUI.result
execute if entity @s[tag=removeResult] run function galaxy:gui/builder-gun/build-background_hardware
execute if entity @s[tag=removeResult] run function galaxy:gui/builder-gun/build-background_misc
tag @s[tag=removeResult] remove lockAssemble
tag @s[tag=removeResult] remove removeResult

# Remove parts
tag @s[predicate=!galaxy:gui/check-builder_gun_result,predicate=galaxy:gui/check-builder_gun_require] add removeParts
execute if entity @s[tag=removeParts] run function galaxy:gui/builder-gun/delete-parts
execute if entity @s[tag=removeParts] run data remove entity @s HandItems[0].tag.GUI.parts
execute if entity @s[tag=removeParts] run data remove entity @s HandItems[0].tag.GUI.result
execute if entity @s[tag=removeParts] run function galaxy:gui/builder-gun/build-background_hardware
execute if entity @s[tag=removeParts] run function galaxy:gui/builder-gun/build-background_misc
tag @s[tag=removeParts] remove lockAssemble
tag @s[tag=removeParts] remove removeParts
