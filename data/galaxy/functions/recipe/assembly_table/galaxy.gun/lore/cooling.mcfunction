data modify storage cu:value string.static.input set value '{"translate":" %s: %s -> %s","with":[{"translate":"attribute.name.galaxy.generic.cooling","color":"aqua"},{"translate":"%st","with":[{"storage":"galaxy:temp","nbt":"+block.assembly_table.lore.itemCustomDataTag.cooling_delay","color":"dark_green"}],"color":"dark_gray"},{"translate":"%sK/t","with":[{"storage":"galaxy:temp","nbt":"+block.assembly_table.lore.itemCustomDataTag.cooling","color":"dark_green"}],"color":"dark_gray"}],"color":"gray","italic":false}'
function cu:value/string/static
data modify storage galaxy:temp +block.assembly_table.lore.result append from storage cu:value string.static.result