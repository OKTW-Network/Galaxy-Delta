# Remove result
tag @s[predicate=!galaxy:gui/check-assembly_table_require,predicate=galaxy:gui/check-assembly_table_result] add removeResult
execute if entity @s[tag=removeResult] run function galaxy:gui/assembly_table/delete-result
execute if entity @s[tag=removeResult] run data remove entity @s HandItems[0].tag.CustomData.galaxy.data.parts
execute if entity @s[tag=removeResult] run data remove entity @s HandItems[0].tag.CustomData.galaxy.data.result
execute if entity @s[tag=removeResult] run function galaxy:gui/assembly_table/build-background_hardware
execute if entity @s[tag=removeResult] run function galaxy:gui/assembly_table/build-background_misc
tag @s[tag=removeResult] remove lockAssemble
tag @s[tag=removeResult] remove removeResult

# Remove parts
tag @s[predicate=!galaxy:gui/check-assembly_table_result,predicate=galaxy:gui/check-assembly_table_require] add removeParts
execute if entity @s[tag=removeParts] run function galaxy:gui/assembly_table/delete-parts
execute if entity @s[tag=removeParts] run data remove entity @s HandItems[0].tag.CustomData.galaxy.data.parts
execute if entity @s[tag=removeParts] run data remove entity @s HandItems[0].tag.CustomData.galaxy.data.result
execute if entity @s[tag=removeParts] run function galaxy:gui/assembly_table/build-background_hardware
execute if entity @s[tag=removeParts] run function galaxy:gui/assembly_table/build-background_misc
tag @s[tag=removeParts] remove lockAssemble
tag @s[tag=removeParts] remove removeParts
