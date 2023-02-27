data modify storage galaxy:get item set value []
function galaxy:weapon/get/_dummy_katana
data modify storage galaxy:temp +weapon.katana.transform.result.katana set from storage galaxy:get item[0]
data modify storage galaxy:temp +weapon.katana.transform.result.katana.tag.display.Name set from storage galaxy:temp +weapon.katana.transform.input.tag.display.Name
data modify storage galaxy:temp +weapon.katana.transform.result.katana.tag.CustomData.galaxy.tag set from storage galaxy:temp +weapon.katana.transform.input.tag.CustomData.galaxy.tag
scoreboard players set #1 calcu_temp 100200
scoreboard players set #2 calcu_temp 10000
execute store result score #3 calcu_temp run data get storage galaxy:temp +weapon.katana.transform.input.tag.CustomModelData
scoreboard players remove #3 calcu_temp 100000
scoreboard players operation #3 calcu_temp /= #10000 num
scoreboard players operation #2 calcu_temp *= #3 calcu_temp
execute store result storage galaxy:temp +weapon.katana.transform.result.katana.tag.CustomModelData int 1 run scoreboard players operation #1 calcu_temp += #2 calcu_temp
data modify storage galaxy:temp +weapon.katana.lore.input set from storage galaxy:temp +weapon.katana.transform.input.tag.CustomData.galaxy.tag
function galaxy:weapon/katana/lore/katana
data modify storage galaxy:temp +weapon.katana.transform.result.katana.tag.display.Lore set from storage galaxy:temp +weapon.katana.lore.result
