data modify storage galaxy:get item set value []
function galaxy:component/get/barrel_trace
data modify storage galaxy:recipe SbldG.attributes.projectile_trace.icon set from storage galaxy:get item[0]
data modify storage galaxy:temp tag set value {}
execute if data storage galaxy:recipe SbldG.attributes.projectile_trace.icon.tag.CustomModelData run data modify storage galaxy:temp tag.CustomModelData set from storage galaxy:recipe SbldG.attributes.projectile_trace.icon.tag.CustomModelData
data modify storage galaxy:recipe SbldG.attributes.projectile_trace.icon.tag set from storage galaxy:temp tag
data modify storage galaxy:recipe SbldG.attributes.projectile_trace.icon.tag merge value {display:{Name:'{"translate":"attribute.projectile.trace","italic":false}'},HideFlags:63,guiItem:1}
data modify storage galaxy:recipe SbldG.attributes.projectile_trace.value.min set value 0
data modify storage galaxy:recipe SbldG.attributes.projectile_trace.value.max set value 225
