function galaxy:weapon/get/tag/_dummy_katana_scabbard
data modify storage galaxy:get itemTag[0] merge value {display:{Name:'{"translate":"item.galaxy.katana.steel","italic":false,"color":"white"}'},CustomModelData:101012,CustomData:{galaxy:{tag:{type:"steel"}}}}
data modify storage galaxy:get customAttribute set value []
function galaxy:weapon/get/custom_attribute/steel
data modify storage galaxy:get itemTag[0].CustomData.galaxy.tag merge from storage galaxy:get customAttribute[0]
data modify storage galaxy:temp +weapon.katana.lore.input set from storage galaxy:get customAttribute[0]
scoreboard players set #weapon.katana.lore.class galaxy 2
function galaxy:weapon/katana/lore/main
data modify storage galaxy:get itemTag[0].display.Lore set from storage galaxy:temp +weapon.katana.lore.result
