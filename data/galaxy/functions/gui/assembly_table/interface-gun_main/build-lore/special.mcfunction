data modify storage cu:string toStatic.input set value '{"translate":"%s: %s","with":[{"translate":"attribute.special","color":"red"},{"storage":"galaxy:temp","nbt":"+gui.assembly_table.build-lore.itemCustomDataTag.special.Name","color":"gray","interpret":true}],"color":"dark_gray","italic":false}'
function cu:string/convert_to-static
data modify storage galaxy:temp +gui.assembly_table.build-lore.result append from storage cu:string toStatic.result
