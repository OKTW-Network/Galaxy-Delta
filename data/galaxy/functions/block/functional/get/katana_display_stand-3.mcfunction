data modify storage galaxy:get item prepend value {id:"minecraft:item_frame",Count:1b}
data modify storage galaxy:get itemTag set value []
function galaxy:block/functional/get/tag/katana_display_stand-3
data modify storage galaxy:get item[0].tag set from storage galaxy:get itemTag[0]
