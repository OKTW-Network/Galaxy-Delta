function galaxy:weapon/get/tag/_dummy_energy_saber
data modify storage galaxy:get itemTag[0] merge value {display:{Name:'{"translate":"item.galaxy.energy_saber.plasum","italic":false}'},CustomModelData:3010100,CustomData:{galaxy:{tag:{type:"plasum"}}}}
data modify storage galaxy:get attributeModifier set value []
function galaxy:weapon/get/attribute_modifier/plasum_active
data modify storage galaxy:get itemTag[0].CustomData.galaxy.tag.activeAttributeModifier set from storage galaxy:get attributeModifier[0]
