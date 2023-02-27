data modify storage galaxy:temp +weapon.katana.lore.result set value []

data modify storage galaxy:temp +weapon.katana.lore.result append value '{"text":""}'
data modify storage galaxy:temp +weapon.katana.lore.result append value '{"translate":"%s:","with":[{"translate":"item.galaxy.katana"}],"color":"gray","italic":false}'

data modify storage galaxy:temp +weapon.katana.lore.result append value '{"translate":" %s:","with":[{"translate":"attribute.name.galaxy.katana.flash","color":"dark_aqua"}],"color":"gray","italic":false}'

data modify storage cu:value string.static.input set value '{"translate":"  %s: %s","with":[{"translate":"attribute.name.galaxy.katana.flash.damage","color":"aqua"},{"storage":"galaxy:temp","nbt":"+weapon.katana.lore.input.flash.damage","color":"dark_green"}],"color":"gray","italic":false}'
function cu:value/string/static
data modify storage galaxy:temp +weapon.katana.lore.result append from storage cu:value string.static.result

data modify storage cu:value string.static.input set value '{"translate":"  %s: %sB","with":[{"translate":"attribute.name.galaxy.katana.flash.distance","color":"aqua"},{"storage":"galaxy:temp","nbt":"+weapon.katana.lore.input.flash.distance","color":"dark_green"}],"color":"gray","italic":false}'
function cu:value/string/static
data modify storage galaxy:temp +weapon.katana.lore.result append from storage cu:value string.static.result

data modify storage galaxy:temp +weapon.katana.lore.result append value '{"translate":" %s:","with":[{"translate":"attribute.name.galaxy.katana.stun","color":"dark_aqua"}],"color":"gray","italic":false}'

data modify storage cu:value string.static.input set value '{"translate":"  %s: %s","with":[{"translate":"attribute.name.galaxy.katana.stun.damage","color":"aqua"},{"storage":"galaxy:temp","nbt":"+weapon.katana.lore.input.stun.damage","color":"dark_green"}],"color":"gray","italic":false}'
function cu:value/string/static
data modify storage galaxy:temp +weapon.katana.lore.result append from storage cu:value string.static.result

data modify storage cu:value string.static.input set value '{"translate":"  %s: %st","with":[{"translate":"attribute.name.galaxy.katana.stun.duration","color":"aqua"},{"storage":"galaxy:temp","nbt":"+weapon.katana.lore.input.stun.duration","color":"dark_green"}],"color":"gray","italic":false}'
function cu:value/string/static
data modify storage galaxy:temp +weapon.katana.lore.result append from storage cu:value string.static.result
