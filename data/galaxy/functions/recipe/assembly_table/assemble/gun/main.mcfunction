data modify storage galaxy:temp +weapon.remove_uuid_data.UUID set from entity @s data.galaxy.assembly_table.result.tag.CustomData.galaxy.tag.assemblyInfo.UUID
function galaxy:weapon/gun/remove_uuid_data

data modify storage galaxy:temp +recipe.assembly_table.assemble._customAttribute.type set from entity @s data.galaxy.assembly_table.parts[{tag:{CustomData:{galaxy:{tag:{component:{Type:"gun_barrel"}}}}}}].tag.CustomData.galaxy.tag.component.Alteration.gun.type
function galaxy:recipe/assembly_table/assemble/gun/interval
function galaxy:recipe/assembly_table/assemble/gun/temperature_min
function galaxy:recipe/assembly_table/assemble/gun/temperature_max
function galaxy:recipe/assembly_table/assemble/gun/heat
function galaxy:recipe/assembly_table/assemble/gun/cooling
function galaxy:recipe/assembly_table/assemble/gun/cooling_delay
function galaxy:recipe/assembly_table/assemble/gun/projectile_damage
function galaxy:recipe/assembly_table/assemble/gun/projectile_velocity
function galaxy:recipe/assembly_table/assemble/gun/projectile_distance
function galaxy:recipe/assembly_table/assemble/gun/instability
function galaxy:recipe/assembly_table/assemble/gun/flexibility
function galaxy:recipe/assembly_table/assemble/gun/aim_zoom
function galaxy:recipe/assembly_table/assemble/gun/projectile_penetrate
function galaxy:recipe/assembly_table/assemble/gun/projectile_bounce
function galaxy:recipe/assembly_table/assemble/gun/projectile_trace
data modify storage galaxy:temp +recipe.assembly_table.assemble._customAttribute.upgrade set from entity @s data.galaxy.assembly_table.parts[{tag:{CustomData:{galaxy:{tag:{component:{Type:"upgrade"}}}}}}].tag.CustomData.galaxy.tag.component.Alteration.gun.upgrade
data modify storage galaxy:temp +recipe.assembly_table.assemble._customAttribute.cosmetic set from entity @s data.galaxy.assembly_table.parts[{tag:{CustomData:{galaxy:{tag:{component:{Type:"cosmetic"}}}}}}].tag.CustomData.galaxy.tag.component.Alteration.gun.cosmetic
data modify storage galaxy:temp +recipe.assembly_table.assemble._customAttribute.projectile.color set from entity @s data.galaxy.assembly_table.parts[{tag:{CustomData:{galaxy:{tag:{component:{Type:"color_lens"}}}}}}].tag.CustomData.galaxy.tag.component.Alteration.gun.projectile.color

data modify storage galaxy:get item set value []
execute if data storage galaxy:temp +recipe.assembly_table.assemble._customAttribute{type:1b} run function galaxy:weapon/get/_dummy_gun_pistol
execute if data storage galaxy:temp +recipe.assembly_table.assemble._customAttribute{type:2b} run function galaxy:weapon/get/_dummy_gun_sniper_rifle
data modify storage galaxy:temp +recipe.assembly_table.assemble.result set from storage galaxy:get item[0]
data modify storage galaxy:temp +recipe.assembly_table.assemble.result.tag.CustomData.galaxy.tag merge from storage galaxy:temp +recipe.assembly_table.assemble._customAttribute
execute if data storage galaxy:temp +recipe.assembly_table.assemble._customAttribute.cosmetic run data modify storage galaxy:temp +recipe.assembly_table.assemble.result.tag.CustomModelData set from storage galaxy:temp +recipe.assembly_table.assemble._customAttribute.cosmetic.Model
function galaxy:recipe/assembly_table/assemble/gun/lore/main
data modify storage galaxy:temp +recipe.assembly_table.assemble.result.tag.display.Lore set from storage galaxy:temp +recipe.assembly_table.assemble._lore
function cu:uuid/generate
data modify storage galaxy:temp +recipe.assembly_table.assemble.result.tag.CustomData.galaxy.tag.assemblyInfo.UUID set from storage cu:uuid generate.result
data modify storage galaxy:temp +recipe.assembly_table.assemble.result.tag.CustomData.galaxy.tag.assemblyInfo.parts set from entity @s data.galaxy.assembly_table.parts

data remove storage galaxy:temp +recipe.assembly_table.assemble._customAttribute
data remove storage galaxy:temp +recipe.assembly_table.assemble._lore
