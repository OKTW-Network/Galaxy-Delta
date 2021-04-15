data modify storage galaxy:get item set value []
function galaxy:component/get/barrel_penetrate
data modify storage galaxy:recipe Samb.attributes.projectile_penetrate.icon set from storage galaxy:get item[0]
data modify storage galaxy:temp tag set value {}
execute if data storage galaxy:recipe Samb.attributes.projectile_penetrate.icon.tag.CustomModelData run data modify storage galaxy:temp tag.CustomModelData set from storage galaxy:recipe Samb.attributes.projectile_penetrate.icon.tag.CustomModelData
data modify storage galaxy:recipe Samb.attributes.projectile_penetrate.icon.tag set from storage galaxy:temp tag
data modify storage galaxy:recipe Samb.attributes.projectile_penetrate.icon.tag merge value {display:{Name:'{"translate":"attribute.projectile.penetrate","italic":false}'},HideFlags:63,guiItem:1}
data modify storage galaxy:recipe Samb.attributes.projectile_penetrate.value.min set value 0
data modify storage galaxy:recipe Samb.attributes.projectile_penetrate.value.max set value 100
