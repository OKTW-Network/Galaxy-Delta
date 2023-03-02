data modify storage galaxy:temp +weapon.energy_saber.transform.result set from storage galaxy:temp +weapon.energy_saber.transform.input
data modify storage galaxy:temp +weapon.energy_saber.transform.result.tag.AttributeModifiers set from storage galaxy:temp +weapon.energy_saber.transform.input.tag.CustomData.galaxy.tag.activeAttributeModifier
data modify storage galaxy:temp +weapon.energy_saber.transform.result.tag.CustomData.galaxy.tag.active set value 1b
execute store result score #1 calcu_temp store result score #2 calcu_temp run data get storage galaxy:temp +weapon.energy_saber.transform.input.tag.CustomModelData
scoreboard players operation #2 calcu_temp %= #10 num
scoreboard players operation #1 calcu_temp -= #2 calcu_temp
execute store result storage galaxy:temp +weapon.energy_saber.transform.result.tag.CustomModelData int 1 run scoreboard players add #1 calcu_temp 1
# data modify storage galaxy:temp +weapon.energy_saber.lore.input set from storage galaxy:temp +weapon.energy_saber.transform.input.tag.CustomData.galaxy.tag
# function galaxy:weapon/energy_saber/lore
# data modify storage galaxy:temp +weapon.energy_saber.transform.result.tag.display.Lore set from storage galaxy:temp +weapon.energy_saber.lore.result
