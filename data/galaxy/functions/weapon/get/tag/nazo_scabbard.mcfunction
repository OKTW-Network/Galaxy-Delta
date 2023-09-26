function galaxy:weapon/get/tag/_dummy_katana_scabbard
data modify storage galaxy:get itemTag[0] merge value {display:{Name:'{"translate":"item.galaxy.katana.nazo","italic":false,"color":"yellow"}'},CustomModelData:102012,CustomData:{galaxy:{tag:{type:"nazo"}}}}
data modify storage galaxy:get customAttribute set value []
function galaxy:weapon/get/custom_attribute/nazo
data modify storage galaxy:get itemTag[0].CustomData.galaxy.tag merge from storage galaxy:get customAttribute[0]
scoreboard players set #weapon.katana.lore.itemType galaxy 2
function galaxy:weapon/katana/lore/main
data modify storage galaxy:get itemTag[0].display.Lore set from storage galaxy:temp +weapon.katana.lore.result
