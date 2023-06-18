function galaxy:recipe/assembly_table/delete_result_data

item replace block ~ ~ ~ container.13 with minecraft:air
function galaxy:block/assembly_table/functional/data/delete-result
scoreboard players set @s galaxy.block.assembly_table.resultSlotStatus 0

function galaxy:block/assembly_table/functional/data/save-parts
execute store result score #block.assembly_table._requiredRemain galaxy if data entity @s data.galaxy.assembly_table.partSlotComplete[{tag:{CustomData:{galaxy:{tag:{assemblyPartSlotRequired:1b}}}}}]
execute if score #block.assembly_table._requiredRemain galaxy matches 0 run function galaxy:recipe/assembly_table/assemble
execute if entity @s[tag=galaxy._success.assembly_table.resultAssembled] run data modify storage galaxy:temp +recipe.assembly_table.assemble.result.Slot set value 13b
execute if entity @s[tag=galaxy._success.assembly_table.resultAssembled] run data modify block ~ ~ ~ Items append from storage galaxy:temp +recipe.assembly_table.assemble.result
execute if entity @s[tag=galaxy._success.assembly_table.resultAssembled] run function galaxy:block/assembly_table/functional/data/save-result
execute if entity @s[tag=galaxy._success.assembly_table.resultAssembled] run scoreboard players set @s galaxy.block.assembly_table.resultSlotStatus 1
tag @s[tag=galaxy._success.assembly_table.resultAssembled] remove galaxy._success.assembly_table.resultAssembled
