data modify storage cu:value object.find_match.source set from entity @s data.galaxy.assembly_table.blueprint.parts
data modify storage cu:value object.find_match.input set value {Slot:0b}
data modify storage cu:value object.find_match.input.Slot set from storage galaxy:temp +block.assembly_table._differentParts[0][0].Slot
scoreboard players set #value.object.find_match.method cu 1
function cu:value/object/find_match/main
data modify storage galaxy:temp +block.assembly_table._partSlotInfo set from storage cu:value object.find_match.result[0].galaxyAssembly

scoreboard players set #block.assembly_table._isInvalidPart galaxy 0
execute if data storage galaxy:temp +block.assembly_table._differentParts[1][0].tag.CustomData.galaxy{Type:"gui",id:"assembly_table.parts_placeholder"} run scoreboard players set #block.assembly_table._isInvalidPart galaxy -1
execute if score #block.assembly_table._isInvalidPart galaxy matches 0 unless data storage galaxy:temp +block.assembly_table._differentParts[1][0].tag.CustomData.galaxy.tag.component run scoreboard players set #block.assembly_table._isInvalidPart galaxy 1
execute if score #block.assembly_table._isInvalidPart galaxy matches 0 run function galaxy:block/assembly_table/functional/parts/pop_invalid/check/accept_type
execute if score #block.assembly_table._isInvalidPart galaxy matches 1 run data modify storage galaxy:temp +block.pop_item.input append from storage galaxy:temp +block.assembly_table._differentParts[1][0]
execute if score #block.assembly_table._isInvalidPart galaxy matches 1 run function galaxy:block/pop_item/on_top

data remove storage galaxy:temp +block.assembly_table._partSlotInfo

data remove storage galaxy:temp +block.assembly_table._differentParts[0][0]
data remove storage galaxy:temp +block.assembly_table._differentParts[1][0]
execute if data storage galaxy:temp +block.assembly_table._differentParts[0][0] run function galaxy:block/assembly_table/functional/parts/pop_invalid/_recursive
