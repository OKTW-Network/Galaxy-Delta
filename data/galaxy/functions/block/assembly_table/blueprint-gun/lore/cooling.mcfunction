data modify storage cu:string toStatic.input set value '{"translate":"%s: %st -> %sK/t","with":[{"translate":"attribute.cooling","color":"aqua"},{"storage":"galaxy:temp","nbt":"+block.assembly_table.lore.itemCustomDataTag.cooling_delay","color":"gray"},{"storage":"galaxy:temp","nbt":"+block.assembly_table.lore.itemCustomDataTag.cooling","color":"gray"}],"color":"dark_gray","italic":false}'
function cu:string/convert_to-static
data modify storage galaxy:temp +block.assembly_table.lore.result append from storage cu:string toStatic.result
