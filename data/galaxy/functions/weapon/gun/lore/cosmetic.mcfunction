data modify storage cu:value string.static.input set value '{"translate":" %s","with":[{"translate":"text.express.relate","with":[{"translate":"attribute.name.galaxy.generic.cosmetic","color":"aqua"},{"storage":"galaxy:temp","nbt":"+weapon.gun.lore.input.cosmetic.Name","interpret":true,"color":"dark_green"}],"color":"gray","italic":false}]}'
function cu:value/string/static
data modify storage galaxy:temp +weapon.gun.lore.result append from storage cu:value string.static.result
