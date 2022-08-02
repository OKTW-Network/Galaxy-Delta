data modify storage galaxy:temp +weapon.katana.build-lore.result set value []

data modify storage galaxy:temp +weapon.katana.build-lore.result append value '{"translate":"%s:","with":[{"translate":"attribute.name.galaxy.katana.flash","color":"blue"}],"color":"dark_gray","italic":false}'

data modify storage cu:string toStatic.input set value '{"translate":" %s: %s","with":[{"translate":"attribute.name.galaxy.katana.flash.damage","color":"aqua"},{"storage":"galaxy:temp","nbt":"+weapon.katana.build-lore.itemCustomDataTag.flash.damage","color":"gray"}],"color":"dark_gray","italic":false}'
function cu:string/convert_to-static
data modify storage galaxy:temp +weapon.katana.build-lore.result append from storage cu:string toStatic.result

data modify storage cu:string toStatic.input set value '{"translate":" %s: %sB","with":[{"translate":"attribute.name.galaxy.katana.flash.distance","color":"aqua"},{"storage":"galaxy:temp","nbt":"+weapon.katana.build-lore.itemCustomDataTag.flash.distance","color":"gray"}],"color":"dark_gray","italic":false}'
function cu:string/convert_to-static
data modify storage galaxy:temp +weapon.katana.build-lore.result append from storage cu:string toStatic.result
