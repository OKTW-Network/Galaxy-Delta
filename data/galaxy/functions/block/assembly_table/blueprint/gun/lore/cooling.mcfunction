data modify storage cu:string toStatic.input set value '{"translate":" %s: %s -> %s","with":[{"translate":"attribute.name.galaxy.generic.cooling","color":"aqua"},{"translate":"%st","with":[{"storage":"galaxy:temp","nbt":"+block.assembly_table.lore.itemCustomDataTag.cooling_delay","color":"dark_green"}],"color":"dark_gray"},{"translate":"%sK/t","with":[{"storage":"galaxy:temp","nbt":"+block.assembly_table.lore.itemCustomDataTag.cooling","color":"dark_green"}],"color":"dark_gray"}],"color":"gray","italic":false}'
function cu:string/convert_to-static
data modify storage galaxy:temp +block.assembly_table.lore.result append from storage cu:string toStatic.result