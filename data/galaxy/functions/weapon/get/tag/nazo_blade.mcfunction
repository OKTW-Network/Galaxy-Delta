function galaxy:weapon/get/tag/_dummy_katana_blade
data modify storage galaxy:get itemTag[0] merge value {display:{Name:'{"translate":"item.galaxy.katana.nazo","italic":false,"color":"yellow"}'},CustomModelData:102011,CustomData:{galaxy:{tag:{type:"nazo"}}}}
data modify storage galaxy:get attributeModifier set value []
function galaxy:weapon/get/attribute_modifier/nazo_blade
data modify storage galaxy:get itemTag[0].CustomData.galaxy.tag.bladeAttributeModifier set from storage galaxy:get attributeModifier[0]
data modify storage galaxy:get itemTag[0].AttributeModifiers set from storage galaxy:get attributeModifier[0]
data modify storage galaxy:get customAttribute set value []
function galaxy:weapon/get/custom_attribute/nazo
data modify storage galaxy:get itemTag[0].CustomData.galaxy.tag merge from storage galaxy:get customAttribute[0]
data modify storage galaxy:temp +weapon.katana.lore.input set from storage galaxy:get customAttribute[0]
function galaxy:weapon/katana/lore/blade
data modify storage galaxy:get itemTag[0].display.Lore set from storage galaxy:temp +weapon.katana.lore.result
