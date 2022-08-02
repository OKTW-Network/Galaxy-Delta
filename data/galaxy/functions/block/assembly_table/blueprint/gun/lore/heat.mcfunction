data modify storage cu:string toStatic.input set value '{"translate":" %s: %s","with":[{"translate":"attribute.name.galaxy.generic.heat","color":"aqua"},{"translate":"%sK/shot","with":[{"storage":"galaxy:temp","nbt":"+block.assembly_table.lore.itemCustomDataTag.heat","color":"dark_green"}],"color":"dark_gray"}],"color":"gray","italic":false}'
function cu:string/convert_to-static
data modify storage galaxy:temp +block.assembly_table.lore.result append from storage cu:string toStatic.result
