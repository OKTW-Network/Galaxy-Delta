data modify storage cu:value string.static.input set value '{"translate":" %s: %s","with":[{"translate":"attribute.name.galaxy.generic.aim_zoom","color":"aqua"},{"storage":"galaxy:temp","nbt":"+recipe.assembly_table.assemble._customAttribute.aim_zoom","color":"dark_green"}],"color":"gray","italic":false}'
function cu:value/string/static
data modify storage galaxy:temp +recipe.assembly_table.assemble._lore append from storage cu:value string.static.result
