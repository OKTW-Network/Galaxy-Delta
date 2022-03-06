item replace block ~ ~ ~ container.13 with carrot_on_a_stick{CustomData:{galaxy:{Type:"item",id:"gun",tag:{status:0}}},display:{Name:'{"translate":"item.galaxy.gun","italic":false}'},CustomModelData:100,HideFlags:39,RepairCost:-2147483648,Unbreakable:1b}

function cu:uuid/generate
data modify block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.UUID set from storage cu:uuid generate

data modify block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts set from storage galaxy:temp +block.assembly_table.result.parts

function galaxy:block/assembly_table/blueprint-gun/result/type
function galaxy:block/assembly_table/blueprint-gun/result/projectile_damage
# function galaxy:block/assembly_table/blueprint-gun/result/delay
execute unless data storage galaxy:temp +block.assembly_table.result.parts[{CustomData:{galaxy:{tag:{barrel:{}}}}}].CustomData.galaxy.tag.barrel.Alteration.charge run function galaxy:block/assembly_table/blueprint-gun/result/delay
execute if data storage galaxy:temp +block.assembly_table.result.parts[{CustomData:{galaxy:{tag:{barrel:{}}}}}].CustomData.galaxy.tag.barrel.Alteration.charge run function galaxy:block/assembly_table/blueprint-gun/result/charge
function galaxy:block/assembly_table/blueprint-gun/result/projectile_distance
function galaxy:block/assembly_table/blueprint-gun/result/temperature_min
function galaxy:block/assembly_table/blueprint-gun/result/temperature_max
function galaxy:block/assembly_table/blueprint-gun/result/heat
function galaxy:block/assembly_table/blueprint-gun/result/cooling
function galaxy:block/assembly_table/blueprint-gun/result/cooling_delay
function galaxy:block/assembly_table/blueprint-gun/result/projectile_speed
function galaxy:block/assembly_table/blueprint-gun/result/projectile_offset
function galaxy:block/assembly_table/blueprint-gun/result/projectile_aim_offset
function galaxy:block/assembly_table/blueprint-gun/result/aim_zoom
execute if data storage galaxy:temp +block.assembly_table.result.parts[{CustomData:{galaxy:{tag:{handle_gun:{}}}}}].CustomData.galaxy.tag.handle_gun.Alteration.accelerate run function galaxy:block/assembly_table/blueprint-gun/result/accelerate
execute if data storage galaxy:temp +block.assembly_table.result.parts[{CustomData:{galaxy:{tag:{barrel:{}}}}}].CustomData.galaxy.tag.barrel.Alteration.projectile.penetrate run function galaxy:block/assembly_table/blueprint-gun/result/projectile_penetrate
execute if data storage galaxy:temp +block.assembly_table.result.parts[{CustomData:{galaxy:{tag:{barrel:{}}}}}].CustomData.galaxy.tag.barrel.Alteration.projectile.bounce run function galaxy:block/assembly_table/blueprint-gun/result/projectile_bounce
execute if data storage galaxy:temp +block.assembly_table.result.parts[{CustomData:{galaxy:{tag:{barrel:{}}}}}].CustomData.galaxy.tag.barrel.Alteration.projectile.trace run function galaxy:block/assembly_table/blueprint-gun/result/projectile_trace
execute if data storage galaxy:temp +block.assembly_table.result.parts[{CustomData:{galaxy:{tag:{barrel:{}}}}}].CustomData.galaxy.tag.barrel.Alteration.projectile.extra run function galaxy:block/assembly_table/blueprint-gun/result/extra
execute if data storage galaxy:temp +block.assembly_table.result.parts[{CustomData:{galaxy:{tag:{special:{}}}}}] run function galaxy:block/assembly_table/blueprint-gun/result/special
execute if data storage galaxy:temp +block.assembly_table.result.parts[{CustomData:{galaxy:{tag:{cosmetic:{}}}}}] run function galaxy:block/assembly_table/blueprint-gun/result/cosmetic
execute if data storage galaxy:temp +block.assembly_table.result.parts[{CustomData:{galaxy:{tag:{color_lens:{}}}}}] run function galaxy:block/assembly_table/blueprint-gun/result/projectile_color

execute if data storage galaxy:temp +block.assembly_table.result.parts[{CustomData:{galaxy:{tag:{barrel:{}}}}}].CustomData.galaxy.tag.barrel.Alteration{Type:1} run data modify block ~ ~ ~ Items[{Slot:13b}].tag.CustomModelData set value 210100
execute if data storage galaxy:temp +block.assembly_table.result.parts[{CustomData:{galaxy:{tag:{barrel:{}}}}}].CustomData.galaxy.tag.barrel.Alteration{Type:2} run data modify block ~ ~ ~ Items[{Slot:13b}].tag.CustomModelData set value 220100
execute if data storage galaxy:temp +block.assembly_table.result.parts[{CustomData:{galaxy:{tag:{barrel:{}}}}}].CustomData.galaxy.tag.barrel.Alteration{Type:3} run data modify block ~ ~ ~ Items[{Slot:13b}].tag.CustomModelData set value 230100
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.cosmetic.Model run data modify block ~ ~ ~ Items[{Slot:13b}].tag.CustomModelData set from block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.cosmetic.Model

data modify storage galaxy:temp +block.assembly_table.lore.itemCustomDataTag set from block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag
function galaxy:block/assembly_table/blueprint-gun/lore/main
data modify block ~ ~ ~ Items[{Slot:13b}].tag.display.Lore set from storage galaxy:temp +block.assembly_table.lore.result

execute if data storage galaxy:temp +block.assembly_table.result.parts[{CustomData:{galaxy:{tag:{barrel:{}}}}}].CustomData.galaxy.tag.barrel.Alteration{Type:1} run data modify block ~ ~ ~ Items[{Slot:13b}].tag.display.Name set value '{"translate":"item.galaxy.gun.pistol","italic":false}'
execute if data storage galaxy:temp +block.assembly_table.result.parts[{CustomData:{galaxy:{tag:{barrel:{}}}}}].CustomData.galaxy.tag.barrel.Alteration{Type:2} run data modify block ~ ~ ~ Items[{Slot:13b}].tag.display.Name set value '{"translate":"item.galaxy.gun.sniper","italic":false}'
execute if data storage galaxy:temp +block.assembly_table.result.parts[{CustomData:{galaxy:{tag:{barrel:{}}}}}].CustomData.galaxy.tag.barrel.Alteration{Type:3} run data modify block ~ ~ ~ Items[{Slot:13b}].tag.display.Name set value '{"translate":"item.galaxy.gun.shotgun","italic":false}'
