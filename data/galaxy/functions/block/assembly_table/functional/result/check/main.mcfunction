data remove storage galaxy:temp +block.assembly_table.resultAssemblyInfo
data remove storage galaxy:temp +block.assembly_table.resultComponent
data modify storage galaxy:temp +block.assembly_table.resultAssemblyInfo set from block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.assemblyInfo
data modify storage galaxy:temp +block.assembly_table.resultComponent set from block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.component

scoreboard players operation #block.assembly_table.lastResultSlotStatus galaxy = @s galaxy.block.assembly_table.resultSlotStatus
execute if score @s galaxy.block.assembly_table.resultSlotStatus matches 0 run function galaxy:block/assembly_table/functional/result/check/empty
execute if score @s galaxy.block.assembly_table.resultSlotStatus matches 1..10 run function galaxy:block/assembly_table/functional/result/check/not_empty
execute unless score @s galaxy.block.assembly_table.resultSlotStatus = #block.assembly_table.lastResultSlotStatus galaxy run tag @s add galaxy._tag.assembly_table.resultChanged
execute if score @s galaxy.block.assembly_table.resultSlotStatus matches 1 if entity @s[tag=!galaxy._tag.assembly_table.resultChanged] run function galaxy:block/assembly_table/functional/result/check/assembly_info_uuid
execute if score @s galaxy.block.assembly_table.resultSlotStatus matches 2 if entity @s[tag=!galaxy._tag.assembly_table.resultChanged] run function galaxy:block/assembly_table/functional/result/check/component_alteration

execute if score @s galaxy.block.assembly_table.resultSlotStatus matches 1 if entity @s[tag=galaxy._tag.assembly_table.resultChanged] run function galaxy:block/assembly_table/functional/result/check/blueprint
