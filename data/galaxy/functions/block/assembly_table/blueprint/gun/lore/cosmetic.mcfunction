data modify storage cu:string toStatic.input set value '{"translate":" %s: %s","with":[{"translate":"attribute.name.galaxy.generic.cosmetic","color":"aqua"},{"storage":"galaxy:temp","nbt":"+block.assembly_table.lore.itemCustomDataTag.cosmetic.Name","color":"dark_green","interpret":true}],"color":"gray","italic":false}'
function cu:string/convert_to-static
data modify storage galaxy:temp +block.assembly_table.lore.result append from storage cu:string toStatic.result
