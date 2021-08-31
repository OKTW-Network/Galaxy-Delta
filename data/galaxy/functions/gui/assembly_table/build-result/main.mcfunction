item replace block ~ ~ ~ container.13 with carrot_on_a_stick{CustomData:{galaxy:{Type:"item",id:"gun",tag:{status:0}}},display:{Name:'{"translate":"item.galaxy.gun","italic":false}'},CustomModelData:100,HideFlags:39,RepairCost:-2147483648,Unbreakable:1b}

function cu:uuid/generate
data modify block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.UUID set from storage cu:uuid generate

data modify block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts append from block ~ ~ ~ Items[{Slot:9b}].tag
data modify block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts append from block ~ ~ ~ Items[{Slot:10b}].tag
data modify block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts append from block ~ ~ ~ Items[{Slot:11b}].tag
data modify block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts append from block ~ ~ ~ Items[{Slot:19b}].tag
data modify block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts append from block ~ ~ ~ Items[{Slot:20b}].tag
execute if data block ~ ~ ~ Items[{Slot:1b}].tag.CustomData.galaxy.tag.sight run data modify block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts append from block ~ ~ ~ Items[{Slot:1b}].tag
execute if data block ~ ~ ~ Items[{Slot:7b}].tag.CustomData.galaxy.tag.special run data modify block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts append from block ~ ~ ~ Items[{Slot:7b}].tag
execute if data block ~ ~ ~ Items[{Slot:24b}].tag.CustomData.galaxy.tag.cosmetic run data modify block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts append from block ~ ~ ~ Items[{Slot:24b}].tag
execute if data block ~ ~ ~ Items[{Slot:26b}].tag.CustomData.galaxy.tag.color_lens run data modify block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts append from block ~ ~ ~ Items[{Slot:26b}].tag

function galaxy:gui/assembly_table/build-result/type
function galaxy:gui/assembly_table/build-result/projectile_damage
function galaxy:gui/assembly_table/build-result/delay
function galaxy:gui/assembly_table/build-result/projectile_distance
function galaxy:gui/assembly_table/build-result/temperature_max
function galaxy:gui/assembly_table/build-result/heat
function galaxy:gui/assembly_table/build-result/cooling
function galaxy:gui/assembly_table/build-result/cooling_delay
function galaxy:gui/assembly_table/build-result/projectile_speed
function galaxy:gui/assembly_table/build-result/projectile_offset
function galaxy:gui/assembly_table/build-result/projectile_aim_offset
function galaxy:gui/assembly_table/build-result/aim_zoom
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts[{CustomData:{galaxy:{tag:{handle_gun:{}}}}}].CustomData.galaxy.tag.handle_gun.Alteration.accelerate run function galaxy:gui/assembly_table/build-result/accelerate
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts[{CustomData:{galaxy:{tag:{barrel:{}}}}}].CustomData.galaxy.tag.barrel.Alteration.charge run function galaxy:gui/assembly_table/build-result/charge
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts[{CustomData:{galaxy:{tag:{barrel:{}}}}}].CustomData.galaxy.tag.barrel.Alteration.charge_heat run function galaxy:gui/assembly_table/build-result/charge_heat
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts[{CustomData:{galaxy:{tag:{barrel:{}}}}}].CustomData.galaxy.tag.barrel.Alteration.projectile.penetrate run function galaxy:gui/assembly_table/build-result/projectile_penetrate
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts[{CustomData:{galaxy:{tag:{barrel:{}}}}}].CustomData.galaxy.tag.barrel.Alteration.projectile.bounce run function galaxy:gui/assembly_table/build-result/projectile_bounce
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts[{CustomData:{galaxy:{tag:{barrel:{}}}}}].CustomData.galaxy.tag.barrel.Alteration.projectile.trace run function galaxy:gui/assembly_table/build-result/projectile_trace
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts[{CustomData:{galaxy:{tag:{barrel:{}}}}}].CustomData.galaxy.tag.barrel.Alteration.projectile.extra run function galaxy:gui/assembly_table/build-result/extra
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts[{CustomData:{galaxy:{tag:{special:{}}}}}] run function galaxy:gui/assembly_table/build-result/special
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts[{CustomData:{galaxy:{tag:{cosmetic:{}}}}}] run function galaxy:gui/assembly_table/build-result/cosmetic
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts[{CustomData:{galaxy:{tag:{color_lens:{}}}}}] run function galaxy:gui/assembly_table/build-result/projectile_color

execute if data block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag{type:1} run data modify block ~ ~ ~ Items[{Slot:13b}].tag.CustomModelData set value 210100
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag{type:2} run data modify block ~ ~ ~ Items[{Slot:13b}].tag.CustomModelData set value 220100
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag{type:3} run data modify block ~ ~ ~ Items[{Slot:13b}].tag.CustomModelData set value 230100
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.cosmetic.Model run data modify block ~ ~ ~ Items[{Slot:13b}].tag.CustomModelData set from block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.cosmetic.Model

data modify storage galaxy:temp +gui.assembly_table.build-lore.itemCustomDataTag set from block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag
function galaxy:gui/assembly_table/build-lore/main
data modify block ~ ~ ~ Items[{Slot:13b}].tag.display.Lore set from storage galaxy:temp +gui.assembly_table.build-lore.result

execute if data block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag{type:1} run data modify block ~ ~ ~ Items[{Slot:13b}].tag.display.Name set value '{"translate":"item.galaxy.gun.pistol","italic":false}'
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag{type:2} run data modify block ~ ~ ~ Items[{Slot:13b}].tag.display.Name set value '{"translate":"item.galaxy.gun.sniper","italic":false}'
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag{type:3} run data modify block ~ ~ ~ Items[{Slot:13b}].tag.display.Name set value '{"translate":"item.galaxy.gun.shotgun","italic":false}'

function galaxy:gui/assembly_table/data_save-parts
function galaxy:gui/assembly_table/data_save-result
