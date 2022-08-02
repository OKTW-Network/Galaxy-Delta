data modify storage galaxy:temp +block.assembly_table.lore.result set value []

data modify storage galaxy:temp +block.assembly_table.lore.result append value '{"text":""}'

data modify storage galaxy:temp +block.assembly_table.lore.result append value '{"translate":"item_info.galaxy.modular_item","color":"gray","italic":false}'

execute if data storage galaxy:temp +block.assembly_table.lore.itemCustomDataTag.cosmetic run function galaxy:block/assembly_table/blueprint/gun/lore/cosmetic

execute if data storage galaxy:temp +block.assembly_table.lore.itemCustomDataTag.upgrade run function galaxy:block/assembly_table/blueprint/gun/lore/upgrade

function galaxy:block/assembly_table/blueprint/gun/lore/attack_speed

function galaxy:block/assembly_table/blueprint/gun/lore/heat

function galaxy:block/assembly_table/blueprint/gun/lore/temperature

function galaxy:block/assembly_table/blueprint/gun/lore/cooling

function galaxy:block/assembly_table/blueprint/gun/lore/accuracy

function galaxy:block/assembly_table/blueprint/gun/lore/flexibility

function galaxy:block/assembly_table/blueprint/gun/lore/aim_zoom

# projectile
data modify storage galaxy:temp +block.assembly_table.lore.result append value '{"translate":" %s:","with":[{"translate":"attribute.name.galaxy.projectile","color":"dark_aqua"}],"color":"gray","italic":false}'

function galaxy:block/assembly_table/blueprint/gun/lore/projectile_color

function galaxy:block/assembly_table/blueprint/gun/lore/projectile_damage

function galaxy:block/assembly_table/blueprint/gun/lore/projectile_velocity

function galaxy:block/assembly_table/blueprint/gun/lore/projectile_distance

execute if data storage galaxy:temp +block.assembly_table.lore.itemCustomDataTag.projectile.penetrate run function galaxy:block/assembly_table/blueprint/gun/lore/projectile_penetrate

execute if data storage galaxy:temp +block.assembly_table.lore.itemCustomDataTag.projectile.bounce run function galaxy:block/assembly_table/blueprint/gun/lore/projectile_bounce

execute if data storage galaxy:temp +block.assembly_table.lore.itemCustomDataTag.projectile.trace run function galaxy:block/assembly_table/blueprint/gun/lore/projectile_trace
