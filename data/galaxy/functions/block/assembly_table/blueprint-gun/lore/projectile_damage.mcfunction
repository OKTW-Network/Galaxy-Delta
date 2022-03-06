execute store result score #1 calcu_temp run data get storage galaxy:temp +block.assembly_table.lore.itemCustomDataTag.projectile.extra
scoreboard players add #1 calcu_temp 1
execute unless score #1 calcu_temp matches 2.. run data modify storage cu:string toStatic.input set value '{"translate":" %s: %s","with":[{"translate":"attribute.projectile.damage","color":"aqua"},{"storage":"galaxy:temp","nbt":"+block.assembly_table.lore.itemCustomDataTag.projectile.damage","color":"gray"}],"color":"dark_gray","italic":false}'
execute if score #1 calcu_temp matches 2.. run data modify storage cu:string toStatic.input set value '{"translate":" %s: %s*%s","with":[{"translate":"attribute.projectile.damage","color":"aqua"},{"storage":"galaxy:temp","nbt":"+block.assembly_table.lore.itemCustomDataTag.projectile.damage","color":"gray"},{"score":{"name":"#1","objective":"calcu_temp"},"color":"gray"}],"color":"dark_gray","italic":false}'
function cu:string/convert_to-static
data modify storage galaxy:temp +block.assembly_table.lore.result append from storage cu:string toStatic.result
