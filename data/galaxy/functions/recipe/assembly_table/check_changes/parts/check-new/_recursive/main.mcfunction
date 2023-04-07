data modify storage cu:value object.find_match.source set from entity @s data.galaxy.assembly_table.blueprint.parts
data modify storage cu:value object.find_match.input set value {Slot:0b}
data modify storage cu:value object.find_match.input.Slot set from storage galaxy:temp +recipe.assembly_table.check_changes._partsDifferent[0][0].Slot
scoreboard players set #value.object.find_match.method cu 1
function cu:value/object/find_match/main
data modify storage galaxy:temp +recipe.assembly_table.check_changes._partSlotInfo set from storage cu:value object.find_match.result[0].galaxyAssembly

scoreboard players set #recipe.assembly_table.check_changes._invalidPart galaxy 0
data remove storage galaxy:temp +recipe.assembly_table.check_changes.invalidParts
execute if data storage galaxy:temp +recipe.assembly_table.check_changes._partsDifferent[1][0].tag.CustomData.galaxy{Type:"gui",id:"assembly_table.parts_placeholder"} run scoreboard players set #recipe.assembly_table.check_changes._invalidPart galaxy -1
execute if score #recipe.assembly_table.check_changes._invalidPart galaxy matches 0 unless data storage galaxy:temp +recipe.assembly_table.check_changes._partsDifferent[1][0].tag.CustomData.galaxy.tag.component run scoreboard players set #recipe.assembly_table.check_changes._invalidPart galaxy 1
execute if score #recipe.assembly_table.check_changes._invalidPart galaxy matches 0 run function galaxy:recipe/assembly_table/check_changes/parts/check-new/_recursive/accept_type
execute if score #recipe.assembly_table.check_changes._invalidPart galaxy matches 0 run function galaxy:recipe/assembly_table/check_changes/parts/check-new/_recursive/limitation/main
execute if score #recipe.assembly_table.check_changes._invalidPart galaxy matches -1..0 if data storage galaxy:temp +recipe.assembly_table.check_changes._partSlotInfo{required:1b} run function galaxy:recipe/assembly_table/check_changes/parts/check-new/_recursive/required
execute if score #recipe.assembly_table.check_changes._invalidPart galaxy matches 1 run data modify storage galaxy:temp +recipe.assembly_table.check_changes.invalidParts append from storage galaxy:temp +recipe.assembly_table.check_changes._partsDifferent[1][0]

data remove storage galaxy:temp +recipe.assembly_table.check_changes._partSlotInfo

data remove storage galaxy:temp +recipe.assembly_table.check_changes._partsDifferent[0][0]
data remove storage galaxy:temp +recipe.assembly_table.check_changes._partsDifferent[1][0]
execute if data storage galaxy:temp +recipe.assembly_table.check_changes._partsDifferent[0][0] run function galaxy:recipe/assembly_table/check_changes/parts/check-new/_recursive/main
