execute unless data storage galaxy:temp itemTag.CustomData.galaxy.tag.projectile.extra run data modify storage cu:string toStatic.input set value '{"translate":"%s: %s","with":[{"translate":"attribute.projectile.damage","color":"aqua"},{"storage":"galaxy:temp","nbt":"itemTag.CustomData.galaxy.tag.projectile.damage","color":"gray"}],"color":"dark_gray","italic":false}'
execute if data storage galaxy:temp itemTag.CustomData.galaxy.tag.projectile.extra store result score #1 calcu_temp run data get storage galaxy:temp itemTag.CustomData.galaxy.tag.projectile.extra
execute if data storage galaxy:temp itemTag.CustomData.galaxy.tag.projectile.extra run scoreboard players add #1 calcu_temp 1
execute if data storage galaxy:temp itemTag.CustomData.galaxy.tag.projectile.extra run data modify storage cu:string toStatic.input set value '{"translate":"%s: %s*%s","with":[{"translate":"attribute.projectile.damage","color":"aqua"},{"storage":"galaxy:temp","nbt":"itemTag.CustomData.galaxy.tag.projectile.damage","color":"gray"},{"score":{"name":"#1","objective":"calcu_temp"},"color":"gray"}],"color":"dark_gray","italic":false}'
function cu:string/convert_to-static
data modify storage galaxy:temp lore append from storage cu:string toStatic.result
