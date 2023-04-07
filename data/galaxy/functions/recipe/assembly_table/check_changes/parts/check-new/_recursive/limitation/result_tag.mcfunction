data modify storage cu:value object.match_targets.source set from entity @s data.galaxy.assembly_table.result.tag
data modify storage cu:value object.match_targets.input set from storage galaxy:temp +recipe.assembly_table.check_changes._partsDifferent[1][0].tag.CustomData.galaxy.tag.component.Limitation.resultTag
scoreboard players set #value.object.match_targets.method cu 1
function cu:value/object/match_targets/main
execute if score #value.object.match_targets.result cu matches 0 run scoreboard players set #recipe.assembly_table.check_changes._invalidPart galaxy 1
