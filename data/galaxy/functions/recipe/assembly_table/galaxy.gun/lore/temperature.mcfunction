data modify storage cu:value string.static.input set value '{"translate":" %s: %s >> %s","with":[{"translate":"attribute.name.galaxy.generic.temperature","color":"aqua"},{"translate":"%sK","with":[{"storage":"galaxy:temp","nbt":"+block.assembly_table.lore.itemCustomDataTag.temperature_min","color":"dark_green"}],"color":"dark_gray"},{"translate":"%sK","with":[{"storage":"galaxy:temp","nbt":"+block.assembly_table.lore.itemCustomDataTag.temperature_max","color":"dark_green"}],"color":"dark_gray"}],"color":"gray","italic":false}'
function cu:value/string/static
data modify storage galaxy:temp +block.assembly_table.lore.result append from storage cu:value string.static.result