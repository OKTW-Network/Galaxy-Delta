execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:16b}]} run tag @s add setTemplate
execute if entity @s[tag=setTemplate] run function galaxy:gui/super_assembler/interface-main/build-result/_template
tag @s[tag=setTemplate] remove setTemplate

data remove block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.cosmetic
data remove block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.projectile.color
data remove block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.upgrade
data remove block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.projectile.penetrate
data remove block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.projectile.bounce
data remove block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.projectile.trace

data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.type set from entity @s HandItems[0].tag.CustomData.galaxy.data.generateOption.type
data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.projectile.damage set from entity @s HandItems[0].tag.CustomData.galaxy.data.generateOption.projectileDamage
data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.interval set from entity @s HandItems[0].tag.CustomData.galaxy.data.generateOption.interval
data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.projectile.distance set from entity @s HandItems[0].tag.CustomData.galaxy.data.generateOption.projectileDistance
data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.heat set from entity @s HandItems[0].tag.CustomData.galaxy.data.generateOption.heat
data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.temperature_min set from entity @s HandItems[0].tag.CustomData.galaxy.data.generateOption.temperatureMin
data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.temperature_max set from entity @s HandItems[0].tag.CustomData.galaxy.data.generateOption.temperatureMax
data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.cooling set from entity @s HandItems[0].tag.CustomData.galaxy.data.generateOption.cooling
data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.cooling_delay set from entity @s HandItems[0].tag.CustomData.galaxy.data.generateOption.coolingDelay
data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.instability set from entity @s HandItems[0].tag.CustomData.galaxy.data.generateOption.instability
data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.aim_zoom set from entity @s HandItems[0].tag.CustomData.galaxy.data.generateOption.aimZoom
data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.projectile.velocity set from entity @s HandItems[0].tag.CustomData.galaxy.data.generateOption.projectileVelocity
execute unless data entity @s HandItems[0].tag.CustomData.galaxy.data.generateOption{projectilePenetrate:0} run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.projectile.penetrate set from entity @s HandItems[0].tag.CustomData.galaxy.data.generateOption.projectilePenetrate
execute unless data entity @s HandItems[0].tag.CustomData.galaxy.data.generateOption{projectileBounce:0} run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.projectile.bounce set from entity @s HandItems[0].tag.CustomData.galaxy.data.generateOption.projectileBounce
execute unless data entity @s HandItems[0].tag.CustomData.galaxy.data.generateOption{projectileTrace:0} run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.projectile.trace set from entity @s HandItems[0].tag.CustomData.galaxy.data.generateOption.projectileTrace
data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.projectile.extra set from entity @s HandItems[0].tag.CustomData.galaxy.data.generateOption.projectileExtra

function galaxy:recipe/super_assembler/convert/main
execute if data storage galaxy:temp +recipe.super_assembler.convert.cosmetic run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.cosmetic set from storage galaxy:temp +recipe.super_assembler.convert.cosmetic
execute if data storage galaxy:temp +recipe.super_assembler.convert.projectile_color run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.projectile.color set from storage galaxy:temp +recipe.super_assembler.convert.projectile_color
execute if data storage galaxy:temp +recipe.super_assembler.convert.upgrade run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.upgrade set from storage galaxy:temp +recipe.super_assembler.convert.upgrade

execute if data entity @s HandItems[0].tag.CustomData.galaxy.data.generateOption{type:1} run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData set value 210100
execute if data entity @s HandItems[0].tag.CustomData.galaxy.data.generateOption{type:2} run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData set value 220100
execute if data storage galaxy:temp +recipe.super_assembler.convert.cosmetic run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData set from block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.cosmetic.Model

data modify storage galaxy:temp +block.assembly_table.lore.itemCustomDataTag set from block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag
function galaxy:block/assembly_table/blueprint/gun/lore/main
data modify block ~ ~ ~ Items[{Slot:16b}].tag.display.Lore set from storage galaxy:temp +block.assembly_table.lore.result
data modify block ~ ~ ~ Items[{Slot:16b}].tag.display.Lore prepend value '[{"translate":"item_info.galaxy.modular_item.super_build","color":"dark_gray","italic":false}]'

execute if data entity @s HandItems[0].tag.CustomData.galaxy.data.generateOption{type:1} run data modify block ~ ~ ~ Items[{Slot:16b}].tag.display.Name set value '{"translate":"item.galaxy.gun.pistol","italic":false}'
execute if data entity @s HandItems[0].tag.CustomData.galaxy.data.generateOption{type:2} run data modify block ~ ~ ~ Items[{Slot:16b}].tag.display.Name set value '{"translate":"item.galaxy.gun.sniper_rifle","italic":false}'
