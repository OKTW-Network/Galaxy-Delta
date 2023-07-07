data modify storage galaxy:get item append value {id:"minecraft:carrot_on_a_stick",Count:1b}
data modify storage galaxy:get itemTag set value []
function galaxy:weapon/get/tag/_dummy_gun_sniper_rifle
data modify storage galaxy:get item[0].tag set from storage galaxy:get itemTag[0]
