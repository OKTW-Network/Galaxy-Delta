data modify storage cu:value string.static.input set value '{"translate":" %s: %s","with":[{"translate":"attribute.name.galaxy.generic.cosmetic","color":"aqua"},{"storage":"galaxy:temp","nbt":"+block.assembly_table.lore.itemCustomDataTag.cosmetic.Name","color":"dark_green","interpret":true}],"color":"gray","italic":false}'
function cu:value/string/static
data modify storage galaxy:temp +block.assembly_table.lore.result append from storage cu:value string.static.result
