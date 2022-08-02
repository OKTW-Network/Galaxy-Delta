data modify storage galaxy:get item set value []
function galaxy:component/get/barrel_bounce
data modify storage galaxy:temp +recipe.super_assembler.attribute.projectile_bounce.icon set from storage galaxy:get item[0]
data modify storage galaxy:temp tag set value {}
execute if data storage galaxy:temp +recipe.super_assembler.attribute.projectile_bounce.icon.tag.CustomModelData run data modify storage galaxy:temp tag.CustomModelData set from storage galaxy:temp +recipe.super_assembler.attribute.projectile_bounce.icon.tag.CustomModelData
data modify storage galaxy:temp +recipe.super_assembler.attribute.projectile_bounce.icon.tag set from storage galaxy:temp tag
data modify storage galaxy:temp +recipe.super_assembler.attribute.projectile_bounce.icon.tag merge value {display:{Name:'{"translate":"attribute.name.galaxy.projectile.bounce","italic":false}'},HideFlags:63,CustomData:{galaxy:{Type:"gui"}}}
data modify storage galaxy:temp +recipe.super_assembler.attribute.projectile_bounce.value.min set value 0
data modify storage galaxy:temp +recipe.super_assembler.attribute.projectile_bounce.value.max set value 100
