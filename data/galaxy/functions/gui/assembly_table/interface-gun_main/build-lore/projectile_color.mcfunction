execute unless data storage galaxy:temp +gui.assembly_table.build-lore.itemCustomDataTag.projectile.color run data modify storage cu:string toStatic.input set value '{"translate":" %s: %s","with":[{"translate":"attribute.projectile.color","color":"light_purple"},{"translate":"color.galaxy.default","color":"gray"}],"color":"dark_gray","italic":false}'
execute if data storage galaxy:temp +gui.assembly_table.build-lore.itemCustomDataTag.projectile.color run data modify storage cu:string toStatic.input set value '{"translate":" %s: %s","with":[{"translate":"attribute.projectile.color","color":"light_purple"},{"storage":"galaxy:temp","nbt":"+gui.assembly_table.build-lore.itemCustomDataTag.projectile.color.Name","color":"gray","interpret":true}],"color":"dark_gray","italic":false}'
function cu:string/convert_to-static
data modify storage galaxy:temp +gui.assembly_table.build-lore.result append from storage cu:string toStatic.result

