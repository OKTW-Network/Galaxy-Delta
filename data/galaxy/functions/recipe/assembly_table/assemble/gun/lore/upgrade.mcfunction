data modify storage cu:value string.static.input set value '{"translate":" %s: %s","with":[{"translate":"attribute.name.galaxy.generic.upgrade","color":"aqua"},{"storage":"galaxy:temp","nbt":"+recipe.assembly_table.assemble._customAttribute.upgrade.Name","color":"dark_green","interpret":true}],"color":"gray","italic":false}'
function cu:value/string/static
data modify storage galaxy:temp +recipe.assembly_table.assemble._lore append from storage cu:value string.static.result
