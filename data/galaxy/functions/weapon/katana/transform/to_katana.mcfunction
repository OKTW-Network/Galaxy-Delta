data modify storage galaxy:get item set value []
function galaxy:weapon/get/_dummy_katana
data modify storage galaxy:temp +weapon.katana.transform.result.katana set from storage galaxy:get item[0]
data modify storage galaxy:temp +weapon.katana.transform.result.katana.tag.display.Name set from storage galaxy:temp +weapon.katana.transform.input.tag.display.Name
data modify storage galaxy:temp +weapon.katana.transform.result.katana.tag.CustomData.galaxy.tag set from storage galaxy:temp +weapon.katana.transform.input.tag.CustomData.galaxy.tag
data modify storage galaxy:get item set value []
data modify storage galaxy:temp +component.get.tag.alterationTarget set value "galaxy.katana"
function galaxy:component/get/katana_scabbard
data modify storage galaxy:get item[-1].Slot set from storage galaxy:recipe assembly_table.blueprint[{id:"galaxy.katana"}].parts[{galaxyAssembly:{acceptTypes:["katana_scabbard"]}}].Slot
data modify storage galaxy:temp +weapon.katana.transform.result.katana.tag.CustomData.galaxy.tag.assemblyInfo.parts append from storage galaxy:get item[-1]
scoreboard players set #1 temp 100010
scoreboard players set #2 temp 1000
execute store result score #3 temp run data get storage galaxy:temp +weapon.katana.transform.input.tag.CustomModelData
scoreboard players remove #3 temp 100000
scoreboard players operation #3 temp /= #1000 num
scoreboard players operation #2 temp *= #3 temp
execute store result storage galaxy:temp +weapon.katana.transform.result.katana.tag.CustomModelData int 1 run scoreboard players operation #1 temp += #2 temp
data modify storage galaxy:temp +weapon.katana.lore.input set from storage galaxy:temp +weapon.katana.transform.input.tag.CustomData.galaxy.tag
scoreboard players set #weapon.katana.lore.itemType galaxy 0
function galaxy:weapon/katana/lore/main
data modify storage galaxy:temp +weapon.katana.transform.result.katana.tag.display.Lore set from storage galaxy:temp +weapon.katana.lore.result
