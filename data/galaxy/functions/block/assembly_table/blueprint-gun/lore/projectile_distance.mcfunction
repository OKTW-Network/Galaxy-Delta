data modify storage cu:string toStatic.input set value '{"translate":" %s: %sB","with":[{"translate":"attribute.projectile.distance","color":"aqua"},{"storage":"galaxy:temp","nbt":"+block.assembly_table.lore.itemCustomDataTag.projectile.distance","color":"gray"}],"color":"dark_gray","italic":false}'
function cu:string/convert_to-static
data modify storage galaxy:temp +block.assembly_table.lore.result append from storage cu:string toStatic.result
