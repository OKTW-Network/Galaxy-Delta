execute if data storage galaxy:temp itemTag.gun{addon:1} run data modify storage galaxy:temp lore append value '{"translate":"%s: %s","with":[{"translate":"attribute.addon","color":"red"},{"translate":"attribute.addon.dual","color":"gray"}],"color":"dark_gray","italic":false}'

# data modify storage cu:string toStatic.input set value '{"storage":"galaxy:temp","nbt":"itemTag.gun.addonName","color":"gray","interpret":true}'
# function cu:string/convert_to-static
# data modify storage galaxy:temp string set from storage cu:string toStatic.result
# tellraw @a {"storage":"galaxy:temp","nbt":"itemTag.gun.addonName","color":"gray","interpret":true}
# tellraw @a {"storage":"galaxy:temp","nbt":"string","color":"gray","interpret":false}

# data modify storage galaxy:temp lore append value '{"translate":"%s: %s","with":[{"translate":"attribute.addon","color":"red"},{"storage":"galaxy:temp","nbt":"string","color":"gray","interpret":true}],"color":"dark_gray","italic":false}'
