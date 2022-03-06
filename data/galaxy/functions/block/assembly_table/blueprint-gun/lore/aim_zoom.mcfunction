data modify storage cu:string toStatic.input set value '{"translate":"%s: %s","with":[{"translate":"attribute.aim_zoom","color":"aqua"},{"storage":"galaxy:temp","nbt":"+block.assembly_table.lore.itemCustomDataTag.aim_zoom","color":"gray"}],"color":"dark_gray","italic":false}'
function cu:string/convert_to-static
data modify storage galaxy:temp +block.assembly_table.lore.result append from storage cu:string toStatic.result
