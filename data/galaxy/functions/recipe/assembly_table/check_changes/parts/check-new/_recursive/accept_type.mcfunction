data modify storage cu:value list.include.source set from storage galaxy:temp +recipe.assembly_table.check_changes._partSlotInfo.acceptTypes
data modify storage cu:value list.include.target set from storage galaxy:temp +recipe.assembly_table.check_changes._partsDifferent[1][0].tag.CustomData.galaxy.tag.component.Type
function cu:value/list/include/main
execute if score #value.list.include.result cu matches 0 run scoreboard players set #recipe.assembly_table.check_changes._invalidPart galaxy 1
