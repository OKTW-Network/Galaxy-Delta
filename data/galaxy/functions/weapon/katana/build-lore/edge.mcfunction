data modify storage galaxy:temp +weapon.katana.build-lore.result set value []

data modify storage cu:string toStatic.input set value '{"translate":"%s: %s","with":[{"translate":"attribute.flash.damage","color":"aqua"},{"storage":"galaxy:temp","nbt":"katana.build-lore.itemCustomDataTag.flash.damage","color":"gray"}],"color":"dark_gray","italic":false}'
function cu:string/convert_to-static
data modify storage galaxy:temp +weapon.katana.build-lore.result append from storage cu:string toStatic.result

data modify storage cu:string toStatic.input set value '{"translate":"%s: %sB","with":[{"translate":"attribute.flash.distance","color":"aqua"},{"storage":"galaxy:temp","nbt":"katana.build-lore.itemCustomDataTag.flash.distance","color":"gray"}],"color":"dark_gray","italic":false}'
function cu:string/convert_to-static
data modify storage galaxy:temp +weapon.katana.build-lore.result append from storage cu:string toStatic.result

data modify storage cu:string toStatic.input set value '{"translate":"%s: %s/t","with":[{"translate":"attribute.flash.charge","color":"aqua"},{"storage":"galaxy:temp","nbt":"katana.build-lore.itemCustomDataTag.flash.charge","color":"gray"}],"color":"dark_gray","italic":false}'
function cu:string/convert_to-static
data modify storage galaxy:temp +weapon.katana.build-lore.result append from storage cu:string toStatic.result
