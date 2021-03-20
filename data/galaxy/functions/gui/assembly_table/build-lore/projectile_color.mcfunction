execute if data storage galaxy:temp itemTag.CustomData.galaxy.tag.projectile{color:1} run data modify storage galaxy:temp lore append value '{"translate":"%s: %s","with":[{"translate":"attribute.projectile.color","color":"light_purple"},{"translate":"color.minecraft.red","color":"gray"}],"color":"dark_gray","italic":false}'
execute if data storage galaxy:temp itemTag.CustomData.galaxy.tag.projectile{color:2} run data modify storage galaxy:temp lore append value '{"translate":"%s: %s","with":[{"translate":"attribute.projectile.color","color":"light_purple"},{"translate":"color.minecraft.orange","color":"gray"}],"color":"dark_gray","italic":false}'
execute if data storage galaxy:temp itemTag.CustomData.galaxy.tag.projectile{color:3} run data modify storage galaxy:temp lore append value '{"translate":"%s: %s","with":[{"translate":"attribute.projectile.color","color":"light_purple"},{"translate":"color.minecraft.yellow","color":"gray"}],"color":"dark_gray","italic":false}'
execute if data storage galaxy:temp itemTag.CustomData.galaxy.tag.projectile{color:4} run data modify storage galaxy:temp lore append value '{"translate":"%s: %s","with":[{"translate":"attribute.projectile.color","color":"light_purple"},{"translate":"color.minecraft.lime","color":"gray"}],"color":"dark_gray","italic":false}'
execute if data storage galaxy:temp itemTag.CustomData.galaxy.tag.projectile{color:5} run data modify storage galaxy:temp lore append value '{"translate":"%s: %s","with":[{"translate":"attribute.projectile.color","color":"light_purple"},{"translate":"color.minecraft.light_blue","color":"gray"}],"color":"dark_gray","italic":false}'
execute if data storage galaxy:temp itemTag.CustomData.galaxy.tag.projectile{color:6} run data modify storage galaxy:temp lore append value '{"translate":"%s: %s","with":[{"translate":"attribute.projectile.color","color":"light_purple"},{"translate":"color.minecraft.blue","color":"gray"}],"color":"dark_gray","italic":false}'
execute if data storage galaxy:temp itemTag.CustomData.galaxy.tag.projectile{color:7} run data modify storage galaxy:temp lore append value '{"translate":"%s: %s","with":[{"translate":"attribute.projectile.color","color":"light_purple"},{"translate":"color.minecraft.purple","color":"gray"}],"color":"dark_gray","italic":false}'

execute if data storage galaxy:temp itemTag.CustomData.galaxy.tag.projectile{color:8} run data modify storage galaxy:temp lore append value '{"translate":"%s: %s","with":[{"translate":"attribute.projectile.color","color":"light_purple"},{"translate":"color.minecraft.black","color":"gray"}],"color":"dark_gray","italic":false}'
execute if data storage galaxy:temp itemTag.CustomData.galaxy.tag.projectile{color:9} run data modify storage galaxy:temp lore append value '{"translate":"%s: %s","with":[{"translate":"attribute.projectile.color","color":"light_purple"},{"translate":"color.minecraft.brown","color":"gray"}],"color":"dark_gray","italic":false}'
execute if data storage galaxy:temp itemTag.CustomData.galaxy.tag.projectile{color:10} run data modify storage galaxy:temp lore append value '{"translate":"%s: %s","with":[{"translate":"attribute.projectile.color","color":"light_purple"},{"translate":"color.minecraft.cyan","color":"gray"}],"color":"dark_gray","italic":false}'
execute if data storage galaxy:temp itemTag.CustomData.galaxy.tag.projectile{color:11} run data modify storage galaxy:temp lore append value '{"translate":"%s: %s","with":[{"translate":"attribute.projectile.color","color":"light_purple"},{"translate":"color.minecraft.gray","color":"gray"}],"color":"dark_gray","italic":false}'
execute if data storage galaxy:temp itemTag.CustomData.galaxy.tag.projectile{color:12} run data modify storage galaxy:temp lore append value '{"translate":"%s: %s","with":[{"translate":"attribute.projectile.color","color":"light_purple"},{"translate":"color.minecraft.green","color":"gray"}],"color":"dark_gray","italic":false}'
execute if data storage galaxy:temp itemTag.CustomData.galaxy.tag.projectile{color:13} run data modify storage galaxy:temp lore append value '{"translate":"%s: %s","with":[{"translate":"attribute.projectile.color","color":"light_purple"},{"translate":"color.minecraft.light_gray","color":"gray"}],"color":"dark_gray","italic":false}'
execute if data storage galaxy:temp itemTag.CustomData.galaxy.tag.projectile{color:14} run data modify storage galaxy:temp lore append value '{"translate":"%s: %s","with":[{"translate":"attribute.projectile.color","color":"light_purple"},{"translate":"color.minecraft.magenta","color":"gray"}],"color":"dark_gray","italic":false}'
execute if data storage galaxy:temp itemTag.CustomData.galaxy.tag.projectile{color:15} run data modify storage galaxy:temp lore append value '{"translate":"%s: %s","with":[{"translate":"attribute.projectile.color","color":"light_purple"},{"translate":"color.minecraft.pink","color":"gray"}],"color":"dark_gray","italic":false}'
execute if data storage galaxy:temp itemTag.CustomData.galaxy.tag.projectile{color:16} run data modify storage galaxy:temp lore append value '{"translate":"%s: %s","with":[{"translate":"attribute.projectile.color","color":"light_purple"},{"translate":"color.minecraft.white","color":"gray"}],"color":"dark_gray","italic":false}'

execute if data storage galaxy:temp itemTag.CustomData.galaxy.tag.projectile{color:17} run data modify storage galaxy:temp lore append value '{"translate":"%s: %s","with":[{"translate":"attribute.projectile.color","color":"light_purple"},{"translate":"color.galaxy.rainbow","color":"gray"}],"color":"dark_gray","italic":false}'

# data modify storage cu:string toStatic.input set value '{"translate":"%s: %s","with":[{"translate":"attribute.projectile.color","color":"light_purple"},{"storage":"galaxy:temp","nbt":"itemTag.CustomData.galaxy.tag.projectile.colorName","color":"gray"}],"color":"dark_gray","italic":false}'
# function cu:string/convert_to-static
# data modify storage galaxy:temp lore append from storage cu:string toStatic.result
