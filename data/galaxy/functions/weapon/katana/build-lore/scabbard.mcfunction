data modify storage galaxy:temp +weapon.katana.build-lore.result set value []

data modify storage galaxy:temp +weapon.katana.build-lore.result append value '{"translate":"%s:","with":[{"translate":"attribute.galaxy.katana.stun","color":"blue"}],"color":"dark_gray","italic":false}'

data modify storage cu:string toStatic.input set value '{"translate":" %s: %s","with":[{"translate":"attribute.galaxy.katana.stun.damage","color":"aqua"},{"storage":"galaxy:temp","nbt":"+weapon.katana.build-lore.itemCustomDataTag.stun.damage","color":"gray"}],"color":"dark_gray","italic":false}'
function cu:string/convert_to-static
data modify storage galaxy:temp +weapon.katana.build-lore.result append from storage cu:string toStatic.result

data modify storage cu:string toStatic.input set value '{"translate":" %s: %st","with":[{"translate":"attribute.galaxy.katana.stun.duration","color":"aqua"},{"storage":"galaxy:temp","nbt":"+weapon.katana.build-lore.itemCustomDataTag.stun.duration","color":"gray"}],"color":"dark_gray","italic":false}'
function cu:string/convert_to-static
data modify storage galaxy:temp +weapon.katana.build-lore.result append from storage cu:string toStatic.result
