data modify storage galaxy:get item prepend value {id:"minecraft:item_frame",Count:1b}
data modify storage galaxy:get itemTag set value []
function galaxy:tool/get/tag/wrench-uuid_less
data modify storage galaxy:get item[0].tag set from storage galaxy:get itemTag[0]
data modify storage galaxy:get item[0].tag.wrench.UUID set from storage galaxy:with UUID
data modify storage galaxy:get item[0].tag.EntityTag.Item.tag.customUUID set from storage galaxy:with UUID
