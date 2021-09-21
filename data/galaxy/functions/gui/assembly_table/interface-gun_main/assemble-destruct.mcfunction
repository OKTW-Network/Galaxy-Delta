# Remove result
tag @s[predicate=!galaxy:gui/assembly_table/check-gun_require,predicate=galaxy:gui/assembly_table/check-gun_result] add removeResult
execute if entity @s[tag=removeResult] run function galaxy:gui/assembly_table/interface-gun_main/delete-result
execute if entity @s[tag=removeResult] run data remove entity @s HandItems[0].tag.CustomData.galaxy.data.parts
execute if entity @s[tag=removeResult] run data remove entity @s HandItems[0].tag.CustomData.galaxy.data.result
execute if entity @s[tag=removeResult] run function galaxy:gui/assembly_table/interface-gun_main/build-background_hardware
execute if entity @s[tag=removeResult] run function galaxy:gui/assembly_table/interface-gun_main/build-background_misc
tag @s[tag=removeResult] remove lockAssemble
tag @s[tag=removeResult] remove removeResult

# Remove parts
tag @s[predicate=!galaxy:gui/assembly_table/check-gun_result,predicate=galaxy:gui/assembly_table/check-gun_require] add removeParts
execute if entity @s[tag=removeParts] run function galaxy:gui/assembly_table/interface-gun_main/delete-parts
execute if entity @s[tag=removeParts] run data remove entity @s HandItems[0].tag.CustomData.galaxy.data.parts
execute if entity @s[tag=removeParts] run data remove entity @s HandItems[0].tag.CustomData.galaxy.data.result
execute if entity @s[tag=removeParts] run function galaxy:gui/assembly_table/interface-gun_main/build-background_hardware
execute if entity @s[tag=removeParts] run function galaxy:gui/assembly_table/interface-gun_main/build-background_misc
tag @s[tag=removeParts] remove lockAssemble
tag @s[tag=removeParts] remove removeParts
