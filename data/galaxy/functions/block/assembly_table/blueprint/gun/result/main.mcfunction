data modify storage galaxy:temp +weapon.remove_uuid_data.UUID set from entity @s HandItems[0].tag.CustomData.galaxy.data.result.tag.CustomData.galaxy.UUID
function galaxy:weapon/gun/remove_uuid_data

item replace block ~ ~ ~ container.13 with carrot_on_a_stick{CustomData:{galaxy:{Type:"item",id:"gun",tag:{status:0}}},display:{Name:'{"translate":"item.galaxy.gun","italic":false}'},CustomModelData:100,HideFlags:39,RepairCost:-2147483648,Unbreakable:1b}

function cu:uuid/generate
data modify block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.UUID set from storage cu:uuid generate

function galaxy:block/assembly_table/blueprint/gun/get/parts
data modify block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts set from storage galaxy:temp +block.assembly_table.get.parts

scoreboard players set #percent.round math 0
function galaxy:block/assembly_table/blueprint/gun/result/type
function galaxy:block/assembly_table/blueprint/gun/result/interval
function galaxy:block/assembly_table/blueprint/gun/result/temperature_min
function galaxy:block/assembly_table/blueprint/gun/result/temperature_max
function galaxy:block/assembly_table/blueprint/gun/result/heat
function galaxy:block/assembly_table/blueprint/gun/result/cooling
function galaxy:block/assembly_table/blueprint/gun/result/cooling_delay
function galaxy:block/assembly_table/blueprint/gun/result/projectile_damage
function galaxy:block/assembly_table/blueprint/gun/result/projectile_velocity
function galaxy:block/assembly_table/blueprint/gun/result/projectile_distance
function galaxy:block/assembly_table/blueprint/gun/result/instability
function galaxy:block/assembly_table/blueprint/gun/result/flexibility
function galaxy:block/assembly_table/blueprint/gun/result/aim_zoom
execute if data storage galaxy:temp +block.assembly_table.get.parts.gun_barrel.tag.CustomData.galaxy.tag.component.Alteration.gun.projectile.penetrate run function galaxy:block/assembly_table/blueprint/gun/result/projectile_penetrate
execute if data storage galaxy:temp +block.assembly_table.get.parts.gun_barrel.tag.CustomData.galaxy.tag.component.Alteration.gun.projectile.bounce run function galaxy:block/assembly_table/blueprint/gun/result/projectile_bounce
execute if data storage galaxy:temp +block.assembly_table.get.parts.gun_barrel.tag.CustomData.galaxy.tag.component.Alteration.gun.projectile.trace run function galaxy:block/assembly_table/blueprint/gun/result/projectile_trace
# execute if data storage galaxy:temp +block.assembly_table.get.parts.gun_barrel.tag.CustomData.galaxy.tag.component.Alteration.gun.projectile.extra run function galaxy:block/assembly_table/blueprint/gun/result/extra
execute if data storage galaxy:temp +block.assembly_table.get.parts.upgrade run function galaxy:block/assembly_table/blueprint/gun/result/upgrade
execute if data storage galaxy:temp +block.assembly_table.get.parts.cosmetic run function galaxy:block/assembly_table/blueprint/gun/result/cosmetic
execute if data storage galaxy:temp +block.assembly_table.get.parts.color_lens run function galaxy:block/assembly_table/blueprint/gun/result/projectile_color

execute if data block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag{type:1b} run data modify block ~ ~ ~ Items[{Slot:13b}].tag.CustomModelData set value 210100
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag{type:2b} run data modify block ~ ~ ~ Items[{Slot:13b}].tag.CustomModelData set value 220100
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.cosmetic.Model run data modify block ~ ~ ~ Items[{Slot:13b}].tag.CustomModelData set from block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.cosmetic.Model

data modify storage galaxy:temp +block.assembly_table.lore.itemCustomDataTag set from block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag
function galaxy:block/assembly_table/blueprint/gun/lore/main
data modify block ~ ~ ~ Items[{Slot:13b}].tag.display.Lore set from storage galaxy:temp +block.assembly_table.lore.result

execute if data block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag{type:1b} run data modify block ~ ~ ~ Items[{Slot:13b}].tag.display.Name set value '{"translate":"item.galaxy.gun.pistol","italic":false}'
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag{type:2b} run data modify block ~ ~ ~ Items[{Slot:13b}].tag.display.Name set value '{"translate":"item.galaxy.gun.sniper_rifle","italic":false}'

function galaxy:block/assembly_table/blueprint/gun/save
