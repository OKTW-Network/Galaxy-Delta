data modify storage galaxy:get item prepend value {id:"minecraft:command_block",Count:1b}
data modify storage galaxy:get itemTag set value []
function galaxy:material/get/tag/coke
data modify storage galaxy:get item[0].tag set from storage galaxy:get itemTag[0]
