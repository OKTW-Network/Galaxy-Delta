data modify storage galaxy:temp +block.assembly_table.lore.result set value []

execute if data storage galaxy:temp +block.assembly_table.lore.itemCustomDataTag.cosmetic run function galaxy:block/assembly_table/blueprint-gun/lore/cosmetic

execute if data storage galaxy:temp +block.assembly_table.lore.itemCustomDataTag.special run function galaxy:block/assembly_table/blueprint-gun/lore/special

execute if data storage galaxy:temp +block.assembly_table.lore.itemCustomDataTag.delay run function galaxy:block/assembly_table/blueprint-gun/lore/delay

execute if data storage galaxy:temp +block.assembly_table.lore.itemCustomDataTag.charge run function galaxy:block/assembly_table/blueprint-gun/lore/charge

execute if data storage galaxy:temp +block.assembly_table.lore.itemCustomDataTag.accelerate run function galaxy:block/assembly_table/blueprint-gun/lore/accelerate

function galaxy:block/assembly_table/blueprint-gun/lore/heat

function galaxy:block/assembly_table/blueprint-gun/lore/temperature

function galaxy:block/assembly_table/blueprint-gun/lore/cooling

function galaxy:block/assembly_table/blueprint-gun/lore/aim_zoom

# projectile
data modify storage galaxy:temp +block.assembly_table.lore.result append value '{"translate":"%s:","with":[{"translate":"attribute.projectile","color":"blue"}],"color":"dark_gray","italic":false}'

function galaxy:block/assembly_table/blueprint-gun/lore/projectile_damage

function galaxy:block/assembly_table/blueprint-gun/lore/projectile_speed

function galaxy:block/assembly_table/blueprint-gun/lore/projectile_distance

function galaxy:block/assembly_table/blueprint-gun/lore/projectile_offset

execute if data storage galaxy:temp +block.assembly_table.lore.itemCustomDataTag.projectile.penetrate run function galaxy:block/assembly_table/blueprint-gun/lore/projectile_penetrate

execute if data storage galaxy:temp +block.assembly_table.lore.itemCustomDataTag.projectile.bounce run function galaxy:block/assembly_table/blueprint-gun/lore/projectile_bounce

execute if data storage galaxy:temp +block.assembly_table.lore.itemCustomDataTag.projectile.trace run function galaxy:block/assembly_table/blueprint-gun/lore/projectile_trace

function galaxy:block/assembly_table/blueprint-gun/lore/projectile_color
