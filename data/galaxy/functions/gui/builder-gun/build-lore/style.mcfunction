execute if data storage galaxy:temp itemTag.gun{type:2,style:1} run data modify storage galaxy:temp lore append value '{"translate":"%s: %s","with":[{"translate":"attribute.style","color":"light_purple"},{"translate":"style.galaxy.railgun","color":"gray","italic":false}],"color":"dark_gray","italic":false}'
# data remove storage cu:string toStatic.input
# data modify storage cu:string toStatic.input set value '{"translate":"%s: %s","with":[{"translate":"attribute.style","color":"light_purple"},{"storage":"galaxy:temp","nbt":"itemTag.gun.styleName","color":"gray"}],"color":"dark_gray","italic":false}'
# function cu:string/convert_to-static
# data modify storage galaxy:temp lore append from storage cu:string toStatic.result
