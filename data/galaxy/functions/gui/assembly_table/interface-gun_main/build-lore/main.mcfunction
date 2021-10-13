data modify storage galaxy:temp +gui.assembly_table.build-lore.result set value []

execute if data storage galaxy:temp +gui.assembly_table.build-lore.itemCustomDataTag.cosmetic run function galaxy:gui/assembly_table/interface-gun_main/build-lore/cosmetic

execute if data storage galaxy:temp +gui.assembly_table.build-lore.itemCustomDataTag.special run function galaxy:gui/assembly_table/interface-gun_main/build-lore/special

execute if data storage galaxy:temp +gui.assembly_table.build-lore.itemCustomDataTag.delay run function galaxy:gui/assembly_table/interface-gun_main/build-lore/delay

execute if data storage galaxy:temp +gui.assembly_table.build-lore.itemCustomDataTag.charge run function galaxy:gui/assembly_table/interface-gun_main/build-lore/charge

execute if data storage galaxy:temp +gui.assembly_table.build-lore.itemCustomDataTag.accelerate run function galaxy:gui/assembly_table/interface-gun_main/build-lore/accelerate

function galaxy:gui/assembly_table/interface-gun_main/build-lore/heat

function galaxy:gui/assembly_table/interface-gun_main/build-lore/temperature

function galaxy:gui/assembly_table/interface-gun_main/build-lore/cooling

function galaxy:gui/assembly_table/interface-gun_main/build-lore/aim_zoom

# projectile
data modify storage galaxy:temp +gui.assembly_table.build-lore.result append value '{"translate":"%s:","with":[{"translate":"attribute.projectile","color":"blue"}],"color":"dark_gray","italic":false}'

function galaxy:gui/assembly_table/interface-gun_main/build-lore/projectile_damage

function galaxy:gui/assembly_table/interface-gun_main/build-lore/projectile_speed

function galaxy:gui/assembly_table/interface-gun_main/build-lore/projectile_distance

function galaxy:gui/assembly_table/interface-gun_main/build-lore/projectile_offset

execute if data storage galaxy:temp +gui.assembly_table.build-lore.itemCustomDataTag.projectile.penetrate run function galaxy:gui/assembly_table/interface-gun_main/build-lore/projectile_penetrate

execute if data storage galaxy:temp +gui.assembly_table.build-lore.itemCustomDataTag.projectile.bounce run function galaxy:gui/assembly_table/interface-gun_main/build-lore/projectile_bounce

execute if data storage galaxy:temp +gui.assembly_table.build-lore.itemCustomDataTag.projectile.trace run function galaxy:gui/assembly_table/interface-gun_main/build-lore/projectile_trace

function galaxy:gui/assembly_table/interface-gun_main/build-lore/projectile_color
