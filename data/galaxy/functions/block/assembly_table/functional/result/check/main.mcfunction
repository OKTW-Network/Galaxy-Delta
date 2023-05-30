data remove storage galaxy:temp +block.assembly_table.resultAssemblyInfo
data modify storage galaxy:temp +block.assembly_table.resultAssemblyInfo set from block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.assemblyInfo

scoreboard players operation #block.assembly_table.lastResultSlotStatus galaxy = @s galaxy.block.assembly_table.resultSlotStatus
execute if score @s galaxy.block.assembly_table.resultSlotStatus matches 0 run function galaxy:block/assembly_table/functional/result/check/empty
execute if score @s galaxy.block.assembly_table.resultSlotStatus matches 1 run function galaxy:block/assembly_table/functional/result/check/not_empty
execute unless score #block.assembly_table.lastResultSlotStatus galaxy = @s galaxy.block.assembly_table.resultSlotStatus run tag @s add galaxy._tag.assembly_table.resultChanged
execute if score @s galaxy.block.assembly_table.resultSlotStatus matches 1 if entity @s[tag=!galaxy._tag.assembly_table.resultChanged] run function galaxy:block/assembly_table/functional/result/check/uuid
execute if score @s galaxy.block.assembly_table.resultSlotStatus matches 1 if entity @s[tag=galaxy._tag.assembly_table.resultChanged] run function galaxy:block/assembly_table/functional/result/check/blueprint
