data modify storage galaxy:get item append value {id:"minecraft:netherite_sword",Count:1b}
data modify storage galaxy:get itemTag set value []
function galaxy:weapon/get/tag/_dummy_katana_blade
data modify storage galaxy:get item[0].tag set from storage galaxy:get itemTag[0]
