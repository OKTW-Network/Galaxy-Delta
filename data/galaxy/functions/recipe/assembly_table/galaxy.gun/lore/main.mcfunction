data modify storage galaxy:temp +block.assembly_table.lore.result set value []

data modify storage galaxy:temp +block.assembly_table.lore.result append value '{"text":""}'

data modify storage galaxy:temp +block.assembly_table.lore.result append value '{"translate":"%s:","with":[{"translate":"item.galaxy.gun"}],"color":"gray","italic":false}'

execute if data storage galaxy:temp +block.assembly_table.lore.itemCustomDataTag.cosmetic run function galaxy:recipe/assembly_table/galaxy.gun/lore/cosmetic

execute if data storage galaxy:temp +block.assembly_table.lore.itemCustomDataTag.upgrade run function galaxy:recipe/assembly_table/galaxy.gun/lore/upgrade

function galaxy:recipe/assembly_table/galaxy.gun/lore/attack_speed

function galaxy:recipe/assembly_table/galaxy.gun/lore/heat

function galaxy:recipe/assembly_table/galaxy.gun/lore/temperature

function galaxy:recipe/assembly_table/galaxy.gun/lore/cooling

function galaxy:recipe/assembly_table/galaxy.gun/lore/accuracy

function galaxy:recipe/assembly_table/galaxy.gun/lore/flexibility

function galaxy:recipe/assembly_table/galaxy.gun/lore/aim_zoom

# projectile
data modify storage galaxy:temp +block.assembly_table.lore.result append value '{"translate":" %s:","with":[{"translate":"attribute.name.galaxy.projectile","color":"dark_aqua"}],"color":"gray","italic":false}'

function galaxy:recipe/assembly_table/galaxy.gun/lore/projectile_color

function galaxy:recipe/assembly_table/galaxy.gun/lore/projectile_damage

function galaxy:recipe/assembly_table/galaxy.gun/lore/projectile_velocity

function galaxy:recipe/assembly_table/galaxy.gun/lore/projectile_distance

execute if data storage galaxy:temp +block.assembly_table.lore.itemCustomDataTag.projectile.penetrate run function galaxy:recipe/assembly_table/galaxy.gun/lore/projectile_penetrate

execute if data storage galaxy:temp +block.assembly_table.lore.itemCustomDataTag.projectile.bounce run function galaxy:recipe/assembly_table/galaxy.gun/lore/projectile_bounce

execute if data storage galaxy:temp +block.assembly_table.lore.itemCustomDataTag.projectile.trace run function galaxy:recipe/assembly_table/galaxy.gun/lore/projectile_trace
