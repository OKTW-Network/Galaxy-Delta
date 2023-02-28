data modify storage galaxy:get item set value []
function galaxy:weapon/get/_dummy_katana_blade
data modify storage galaxy:temp +weapon.katana.transform.result.blade set from storage galaxy:get item[0]
data modify storage galaxy:temp +weapon.katana.transform.result.blade.tag.display.Name set from storage galaxy:temp +weapon.katana.transform.input.tag.display.Name
data modify storage galaxy:temp +weapon.katana.transform.result.blade.tag.AttributeModifiers set from storage galaxy:temp +weapon.katana.transform.input.tag.CustomData.galaxy.tag.bladeAttributeModifier
data modify storage galaxy:temp +weapon.katana.transform.result.blade.tag.CustomData.galaxy.tag set from storage galaxy:temp +weapon.katana.transform.input.tag.CustomData.galaxy.tag
scoreboard players set #1 calcu_temp 100011
scoreboard players set #2 calcu_temp 1000
execute store result score #3 calcu_temp run data get storage galaxy:temp +weapon.katana.transform.input.tag.CustomModelData
scoreboard players remove #3 calcu_temp 100000
scoreboard players operation #3 calcu_temp /= #1000 num
scoreboard players operation #2 calcu_temp *= #3 calcu_temp
scoreboard players operation #weapon.katana.transform.custom_model_data_value galaxy = #2 calcu_temp
execute store result storage galaxy:temp +weapon.katana.transform.result.blade.tag.CustomModelData int 1 run scoreboard players operation #1 calcu_temp += #2 calcu_temp
data modify storage galaxy:temp +weapon.katana.lore.input set from storage galaxy:temp +weapon.katana.transform.input.tag.CustomData.galaxy.tag
function galaxy:weapon/katana/lore/blade
data modify storage galaxy:temp +weapon.katana.transform.result.blade.tag.display.Lore set from storage galaxy:temp +weapon.katana.lore.result

data modify storage galaxy:get item set value []
function galaxy:weapon/get/_dummy_katana_scabbard
data modify storage galaxy:temp +weapon.katana.transform.result.scabbard set from storage galaxy:get item[0]
data modify storage galaxy:temp +weapon.katana.transform.result.scabbard.tag.display.Name set from storage galaxy:temp +weapon.katana.transform.input.tag.display.Name
data modify storage galaxy:temp +weapon.katana.transform.result.scabbard.tag.CustomData.galaxy.tag set from storage galaxy:temp +weapon.katana.transform.input.tag.CustomData.galaxy.tag
data remove storage galaxy:temp +weapon.katana.transform.result.scabbard.tag.CustomData.galaxy.tag.bladeAttributeModifier
scoreboard players set #1 calcu_temp 100012
scoreboard players operation #2 calcu_temp = #weapon.katana.transform.custom_model_data_value galaxy
execute store result storage galaxy:temp +weapon.katana.transform.result.scabbard.tag.CustomModelData int 1 run scoreboard players operation #1 calcu_temp += #2 calcu_temp
data modify storage galaxy:temp +weapon.katana.lore.input set from storage galaxy:temp +weapon.katana.transform.input.tag.CustomData.galaxy.tag
function galaxy:weapon/katana/lore/scabbard
data modify storage galaxy:temp +weapon.katana.transform.result.scabbard.tag.display.Lore set from storage galaxy:temp +weapon.katana.lore.result
