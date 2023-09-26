data modify storage galaxy:get item append value {id:"minecraft:carrot_on_a_stick",Count:1b}
data modify storage galaxy:get itemTag set value []
function galaxy:weapon/get/tag/_dummy_katana
data modify storage galaxy:get item[-1].tag set from storage galaxy:get itemTag[-1]
data modify storage galaxy:get item[-1].tag merge value {display:{Name:'{"translate":"item.galaxy.katana","italic":false,"color":"white"}'},CustomModelData:101010}
