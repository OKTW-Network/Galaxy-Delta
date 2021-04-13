data modify storage cu:string toStatic.input set value '{"translate":"%s: %s/t","with":[{"translate":"attribute.charge","color":"aqua"},{"storage":"galaxy:temp","nbt":"itemTag.CustomData.galaxy.tag.charge","color":"gray"}],"color":"dark_gray","italic":false}'
function cu:string/convert_to-static
data modify storage galaxy:temp lore append from storage cu:string toStatic.result
