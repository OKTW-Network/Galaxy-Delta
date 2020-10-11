execute if data storage galaxy:temp itemTag.gun{addon:1} run data modify storage galaxy:temp lore append value '{"translate":"%s: %s","with":[{"translate":"attribute.addon","color":"red"},{"translate":"attribute.addon.dual","color":"gray"}],"color":"dark_gray","italic":false}'

# data remove storage cu:string toStatic.input
# data modify storage cu:string toStatic.input set value '{"translate":"%s: %s","with":[{"translate":"attribute.addon","color":"red"},{"storage":"galaxy:temp","nbt":"itemTag.gun.addonName","color":"gray"}],"color":"dark_gray","italic":false}'
# function cu:string/convert_to-static
# data modify storage galaxy:temp lore append from storage cu:string toStatic.result
