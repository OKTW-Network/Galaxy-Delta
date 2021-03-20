data modify storage galaxy:get item prepend value {id:"minecraft:stone_sword",Count:1b}
data modify storage galaxy:get itemTag set value []
function galaxy:component/get/tag/cosmetic_gun_type2_railgun
data modify storage galaxy:get item[0].tag set from storage galaxy:get itemTag[0]