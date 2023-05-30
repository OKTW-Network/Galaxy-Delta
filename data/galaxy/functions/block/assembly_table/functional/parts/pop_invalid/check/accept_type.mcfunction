data modify storage cu:value list.include.source set from storage galaxy:temp +block.assembly_table._partSlotInfo.acceptTypes
data modify storage cu:value list.include.target set from storage galaxy:temp +block.assembly_table._differentParts[1][0].tag.CustomData.galaxy.tag.component.Type
function cu:value/list/include/main
execute if score #value.list.include.result cu matches 0 run scoreboard players set #block.assembly_table._isInvalidPart galaxy 1
