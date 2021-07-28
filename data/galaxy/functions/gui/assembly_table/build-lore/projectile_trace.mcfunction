data modify storage cu:string toStatic.input set value '{"translate":"%s: %s","with":[{"translate":"attribute.projectile.trace","color":"yellow"},{"storage":"galaxy:temp","nbt":"itemTag.CustomData.galaxy.tag.projectile.trace","color":"gray"}],"color":"dark_gray","italic":false}'
function cu:string/convert_to-static
data modify storage galaxy:temp lore append from storage cu:string toStatic.result
