execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:16b}]} run tag @s add setTemplate
execute if entity @s[tag=setTemplate] run function galaxy:gui/assembly_table/super/interface-main/build-result_template
tag @s[tag=setTemplate] remove setTemplate

data remove block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.charge
data remove block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.cosmetic
data remove block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.projectile.color
data remove block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.special
data remove block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.accelerate
data remove block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.projectile.penetrate
data remove block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.projectile.bounce
data remove block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.projectile.trace

data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.type set from entity @s HandItems[0].tag.CustomData.galaxy.data.generateOption.type
data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.projectile.damage set from entity @s HandItems[0].tag.CustomData.galaxy.data.generateOption.projectileDamage
data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.delay set from entity @s HandItems[0].tag.CustomData.galaxy.data.generateOption.delay
execute unless data entity @s HandItems[0].tag.CustomData.galaxy.data.generateOption{charge:0} run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.charge set from entity @s HandItems[0].tag.CustomData.galaxy.data.generateOption.charge
data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.projectile.distance set from entity @s HandItems[0].tag.CustomData.galaxy.data.generateOption.projectileDistance
data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.heat set from entity @s HandItems[0].tag.CustomData.galaxy.data.generateOption.heat
data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.temperature_min set from entity @s HandItems[0].tag.CustomData.galaxy.data.generateOption.temperatureMin
data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.temperature_max set from entity @s HandItems[0].tag.CustomData.galaxy.data.generateOption.temperatureMax
data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.cooling set from entity @s HandItems[0].tag.CustomData.galaxy.data.generateOption.cooling
data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.cooling_delay set from entity @s HandItems[0].tag.CustomData.galaxy.data.generateOption.coolingDelay
data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.projectile.speed set from entity @s HandItems[0].tag.CustomData.galaxy.data.generateOption.projectileSpeed
data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.projectile.offset set from entity @s HandItems[0].tag.CustomData.galaxy.data.generateOption.projectileOffset
data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.projectile.aim_offset set from entity @s HandItems[0].tag.CustomData.galaxy.data.generateOption.projectileAimOffset
data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.aim_zoom set from entity @s HandItems[0].tag.CustomData.galaxy.data.generateOption.aimZoom
execute unless data entity @s HandItems[0].tag.CustomData.galaxy.data.generateOption{accelerate:0} run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.accelerate set from entity @s HandItems[0].tag.CustomData.galaxy.data.generateOption.accelerate
execute unless data entity @s HandItems[0].tag.CustomData.galaxy.data.generateOption{projectilePenetrate:0} run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.projectile.penetrate set from entity @s HandItems[0].tag.CustomData.galaxy.data.generateOption.projectilePenetrate
execute unless data entity @s HandItems[0].tag.CustomData.galaxy.data.generateOption{projectileBounce:0} run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.projectile.bounce set from entity @s HandItems[0].tag.CustomData.galaxy.data.generateOption.projectileBounce
execute unless data entity @s HandItems[0].tag.CustomData.galaxy.data.generateOption{projectileTrace:0} run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.projectile.trace set from entity @s HandItems[0].tag.CustomData.galaxy.data.generateOption.projectileTrace
data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.projectile.extra set from entity @s HandItems[0].tag.CustomData.galaxy.data.generateOption.projectileExtra

function galaxy:recipe/super_assembler/convert/main
execute if data storage galaxy:temp +recipe.super_assembler.convert.cosmetic run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.cosmetic set from storage galaxy:temp +recipe.super_assembler.convert.cosmetic
execute if data storage galaxy:temp +recipe.super_assembler.convert.projectile_color run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.projectile.color set from storage galaxy:temp +recipe.super_assembler.convert.projectile_color
execute if data storage galaxy:temp +recipe.super_assembler.convert.special run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.special set from storage galaxy:temp +recipe.super_assembler.convert.special

execute if data entity @s HandItems[0].tag.CustomData.galaxy.data.generateOption{type:1} run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData set value 210100
execute if data entity @s HandItems[0].tag.CustomData.galaxy.data.generateOption{type:2} run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData set value 220100
execute if data entity @s HandItems[0].tag.CustomData.galaxy.data.generateOption{type:3} run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData set value 230100
execute unless score @s optCosmetic matches 0 run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData set from block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.cosmetic.Model

data modify storage galaxy:temp +block.assembly_table.lore.itemCustomDataTag set from block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag
function galaxy:block/assembly_table/blueprint-gun/lore/main
data modify block ~ ~ ~ Items[{Slot:16b}].tag.display.Lore set from storage galaxy:temp +block.assembly_table.lore.result
data modify block ~ ~ ~ Items[{Slot:16b}].tag.display.Lore prepend value '[{"translate":"tooltip.super_build","color":"dark_gray","italic":false}]'

execute if data entity @s HandItems[0].tag.CustomData.galaxy.data.generateOption{type:1} run data modify block ~ ~ ~ Items[{Slot:16b}].tag.display.Name set value '{"translate":"item.galaxy.gun.pistol","italic":false}'
execute if data entity @s HandItems[0].tag.CustomData.galaxy.data.generateOption{type:2} run data modify block ~ ~ ~ Items[{Slot:16b}].tag.display.Name set value '{"translate":"item.galaxy.gun.sniper","italic":false}'
execute if data entity @s HandItems[0].tag.CustomData.galaxy.data.generateOption{type:3} run data modify block ~ ~ ~ Items[{Slot:16b}].tag.display.Name set value '{"translate":"item.galaxy.gun.shotgun","italic":false}'
