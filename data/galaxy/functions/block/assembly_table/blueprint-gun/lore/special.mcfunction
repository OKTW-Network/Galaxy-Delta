data modify storage cu:string toStatic.input set value '{"translate":"%s: %s","with":[{"translate":"attribute.special","color":"red"},{"storage":"galaxy:temp","nbt":"+block.assembly_table.lore.itemCustomDataTag.special.Name","color":"gray","interpret":true}],"color":"dark_gray","italic":false}'
function cu:string/convert_to-static
data modify storage galaxy:temp +block.assembly_table.lore.result append from storage cu:string toStatic.result
