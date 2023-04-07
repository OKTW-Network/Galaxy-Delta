data modify storage galaxy:temp +weapon.remove_uuid_data.UUID set from entity @s data.galaxy.assembly_table.result.tag.CustomData.galaxy.tag.assemblyInfo.UUID
function galaxy:weapon/gun/remove_uuid_data

item replace block ~ ~ ~ container.13 with carrot_on_a_stick{CustomData:{galaxy:{Type:"item",id:"gun",tag:{status:0,assemblyInfo:{blueprintID:"galaxy.gun"}}}},display:{Name:'{"translate":"item.galaxy.gun","italic":false}'},CustomModelData:100,HideFlags:127,RepairCost:-2147483648,Unbreakable:1b}

function cu:uuid/generate
data modify block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.assemblyInfo.UUID set from storage cu:uuid generate.result

data modify block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.assemblyInfo.parts set from entity @s data.galaxy.assembly_table.parts

scoreboard players set #percent.round math 0
function galaxy:recipe/assembly_table/galaxy.gun/result/type
function galaxy:recipe/assembly_table/galaxy.gun/result/interval
function galaxy:recipe/assembly_table/galaxy.gun/result/temperature_min
function galaxy:recipe/assembly_table/galaxy.gun/result/temperature_max
function galaxy:recipe/assembly_table/galaxy.gun/result/heat
function galaxy:recipe/assembly_table/galaxy.gun/result/cooling
function galaxy:recipe/assembly_table/galaxy.gun/result/cooling_delay
function galaxy:recipe/assembly_table/galaxy.gun/result/projectile_damage
function galaxy:recipe/assembly_table/galaxy.gun/result/projectile_velocity
function galaxy:recipe/assembly_table/galaxy.gun/result/projectile_distance
function galaxy:recipe/assembly_table/galaxy.gun/result/instability
function galaxy:recipe/assembly_table/galaxy.gun/result/flexibility
function galaxy:recipe/assembly_table/galaxy.gun/result/aim_zoom
execute if data entity @s data.galaxy.assembly_table.parts[{tag:{CustomData:{galaxy:{tag:{component:{Type:"gun_barrel"}}}}}}].tag.CustomData.galaxy.tag.component.Alteration.gun.projectile.penetrate run function galaxy:recipe/assembly_table/galaxy.gun/result/projectile_penetrate
execute if data entity @s data.galaxy.assembly_table.parts[{tag:{CustomData:{galaxy:{tag:{component:{Type:"gun_barrel"}}}}}}].tag.CustomData.galaxy.tag.component.Alteration.gun.projectile.bounce run function galaxy:recipe/assembly_table/galaxy.gun/result/projectile_bounce
execute if data entity @s data.galaxy.assembly_table.parts[{tag:{CustomData:{galaxy:{tag:{component:{Type:"gun_barrel"}}}}}}].tag.CustomData.galaxy.tag.component.Alteration.gun.projectile.trace run function galaxy:recipe/assembly_table/galaxy.gun/result/projectile_trace
# execute if data entity @s data.galaxy.assembly_table.parts[{tag:{CustomData:{galaxy:{tag:{component:{Type:"gun_barrel"}}}}}}].tag.CustomData.galaxy.tag.component.Alteration.gun.projectile.extra run function galaxy:recipe/assembly_table/galaxy.gun/result/extra
execute if data entity @s data.galaxy.assembly_table.parts[{tag:{CustomData:{galaxy:{tag:{component:{Type:"upgrade"}}}}}}] run function galaxy:recipe/assembly_table/galaxy.gun/result/upgrade
execute if data entity @s data.galaxy.assembly_table.parts[{tag:{CustomData:{galaxy:{tag:{component:{Type:"cosmetic"}}}}}}] run function galaxy:recipe/assembly_table/galaxy.gun/result/cosmetic
execute if data entity @s data.galaxy.assembly_table.parts[{tag:{CustomData:{galaxy:{tag:{component:{Type:"color_lens"}}}}}}] run function galaxy:recipe/assembly_table/galaxy.gun/result/projectile_color

execute if data block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag{type:1b} run data modify block ~ ~ ~ Items[{Slot:13b}].tag.CustomModelData set value 201000
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag{type:2b} run data modify block ~ ~ ~ Items[{Slot:13b}].tag.CustomModelData set value 202000
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.cosmetic.Model run data modify block ~ ~ ~ Items[{Slot:13b}].tag.CustomModelData set from block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.cosmetic.Model

data modify storage galaxy:temp +block.assembly_table.lore.itemCustomDataTag set from block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag
function galaxy:recipe/assembly_table/galaxy.gun/lore/main
data modify block ~ ~ ~ Items[{Slot:13b}].tag.display.Lore set from storage galaxy:temp +block.assembly_table.lore.result

execute if data block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag{type:1b} run data modify block ~ ~ ~ Items[{Slot:13b}].tag.display.Name set value '{"translate":"item.galaxy.gun.pistol","italic":false}'
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag{type:2b} run data modify block ~ ~ ~ Items[{Slot:13b}].tag.display.Name set value '{"translate":"item.galaxy.gun.sniper_rifle","italic":false}'
