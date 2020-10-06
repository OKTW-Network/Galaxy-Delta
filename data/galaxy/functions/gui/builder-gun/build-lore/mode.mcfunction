execute if data storage galaxy:temp itemTag.gun{mode:0} run data modify storage galaxy:temp lore append value '{"translate":"%s: %s","with":[{"translate":"attribute.mode","color":"red"},{"translate":"attribute.mode.normal","color":"gray"}],"color":"dark_gray","italic":false}'
execute if data storage galaxy:temp itemTag.gun{mode:1} run data modify storage galaxy:temp lore append value '{"translate":"%s: %s","with":[{"translate":"attribute.mode","color":"red"},{"translate":"attribute.mode.dual","color":"gray"}],"color":"dark_gray","italic":false}'

# data remove storage cu:string toStatic.input
# data modify storage cu:string toStatic.input set value '{"translate":"%s: %s","with":[{"translate":"attribute.mode","color":"red"},{"storage":"galaxy:temp","nbt":"itemTag.gun.modeName","color":"gray"}],"color":"dark_gray","italic":false}'
# function cu:string/convert_to-static
# data modify storage galaxy:temp lore append from storage cu:string toStatic.result
