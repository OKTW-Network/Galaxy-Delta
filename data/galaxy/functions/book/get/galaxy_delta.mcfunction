data modify storage galaxy:get item prepend value {id:"minecraft:written_book",Count:1b}
data modify storage galaxy:get itemTag set value []
function galaxy:book/get/tag/galaxy_delta
data modify storage galaxy:get item[0].tag set from storage galaxy:get itemTag[0]
