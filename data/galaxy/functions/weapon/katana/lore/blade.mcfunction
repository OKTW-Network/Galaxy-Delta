data modify storage galaxy:temp +weapon.katana.lore.result set value []

data modify storage galaxy:temp +weapon.katana.lore.result append value '{"translate":"item.galaxy.katana_blade","color":"dark_gray","italic":false}'
data modify storage galaxy:temp +weapon.katana.lore.result append value '{"translate":"%s:","with":[{"translate":"item.galaxy.katana"}],"color":"gray","italic":false}'

data modify storage galaxy:temp +weapon.katana.lore.result append value '{"translate":" %s:","with":[{"translate":"attribute.name.galaxy.katana.flash","color":"dark_aqua"}],"color":"gray","italic":false}'

data modify storage cu:value string.static.input set value '{"translate":"  %s: %s","with":[{"translate":"attribute.name.galaxy.katana.flash.damage","color":"aqua"},{"storage":"galaxy:temp","nbt":"+weapon.katana.lore.input.flash.damage","color":"dark_green"}],"color":"gray","italic":false}'
function cu:value/string/static
data modify storage galaxy:temp +weapon.katana.lore.result append from storage cu:value string.static.result

data modify storage cu:value string.static.input set value '{"translate":"  %s: %sB","with":[{"translate":"attribute.name.galaxy.katana.flash.distance","color":"aqua"},{"storage":"galaxy:temp","nbt":"+weapon.katana.lore.input.flash.distance","color":"dark_green"}],"color":"gray","italic":false}'
function cu:value/string/static
data modify storage galaxy:temp +weapon.katana.lore.result append from storage cu:value string.static.result
