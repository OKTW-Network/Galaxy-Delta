function galaxy:weapon/get/tag/_dummy_energy_saber
data modify storage galaxy:get itemTag[0] merge value {display:{Name:'{"translate":"item.galaxy.energy_saber.ranbo","italic":false,"color":"light_purple"}'},CustomModelData:302010,CustomData:{galaxy:{tag:{type:"ranbo"}}}}
data modify storage galaxy:get attributeModifier set value []
function galaxy:weapon/get/attribute_modifier/ranbo_active
data modify storage galaxy:get itemTag[0].CustomData.galaxy.tag.activeAttributeModifier set from storage galaxy:get attributeModifier[0]
