data modify storage galaxy:get item set value []
function galaxy:weapon/get/_dummy_energy_saber
data modify storage galaxy:temp +weapon.energy_saber.transform.result set from storage galaxy:get item[0]
data modify storage galaxy:temp +weapon.energy_saber.transform.result.tag.display.Name set from storage galaxy:temp +weapon.energy_saber.transform.input.tag.display.Name
data modify storage galaxy:temp +weapon.energy_saber.transform.result.tag.CustomData.galaxy.tag set from storage galaxy:temp +weapon.energy_saber.transform.input.tag.CustomData.galaxy.tag
data modify storage galaxy:temp +weapon.energy_saber.transform.result.tag.CustomData.galaxy.tag.active set value 0b
scoreboard players set #1 temp 300010
scoreboard players set #2 temp 1000
execute store result score #3 temp run data get storage galaxy:temp +weapon.energy_saber.transform.input.tag.CustomModelData
scoreboard players remove #3 temp 300000
scoreboard players operation #3 temp /= #1000 num
scoreboard players operation #2 temp *= #3 temp
execute store result storage galaxy:temp +weapon.energy_saber.transform.result.tag.CustomModelData int 1 run scoreboard players operation #1 temp += #2 temp
# data modify storage galaxy:temp +weapon.energy_saber.lore.input set from storage galaxy:temp +weapon.energy_saber.transform.input.tag.CustomData.galaxy.tag
# function galaxy:weapon/energy_saber/lore
# data modify storage galaxy:temp +weapon.energy_saber.transform.result.tag.display.Lore set from storage galaxy:temp +weapon.energy_saber.lore.result
