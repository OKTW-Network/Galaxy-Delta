data modify storage galaxy:get item set value []
function galaxy:material/get/steel_ingot
data modify storage galaxy:temp tag.CustomModelData set from storage galaxy:get item[0].tag.CustomModelData
data modify storage galaxy:temp tag.display set from storage galaxy:get item[0].tag.display
data modify storage galaxy:get item[0].tag set from storage galaxy:temp tag
data modify storage galaxy:get item[0].tag merge value {HideFlags:63}
data modify storage galaxy:get item[0] merge value {Count:6}

data modify storage galaxy:recipe HTct.requirement prepend from storage galaxy:get item
