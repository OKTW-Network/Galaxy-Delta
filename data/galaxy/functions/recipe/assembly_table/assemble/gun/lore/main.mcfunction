data modify storage galaxy:temp +recipe.assembly_table.assemble._lore set value []

data modify storage galaxy:temp +recipe.assembly_table.assemble._lore append value '{"text":""}'

data modify storage galaxy:temp +recipe.assembly_table.assemble._lore append value '{"translate":"%s:","with":[{"translate":"item.galaxy.gun"}],"color":"gray","italic":false}'

execute if data storage galaxy:temp +recipe.assembly_table.assemble._customAttribute.cosmetic run function galaxy:recipe/assembly_table/assemble/gun/lore/cosmetic

execute if data storage galaxy:temp +recipe.assembly_table.assemble._customAttribute.upgrade run function galaxy:recipe/assembly_table/assemble/gun/lore/upgrade

function galaxy:recipe/assembly_table/assemble/gun/lore/attack_speed

function galaxy:recipe/assembly_table/assemble/gun/lore/heat

function galaxy:recipe/assembly_table/assemble/gun/lore/temperature

function galaxy:recipe/assembly_table/assemble/gun/lore/cooling

function galaxy:recipe/assembly_table/assemble/gun/lore/accuracy

function galaxy:recipe/assembly_table/assemble/gun/lore/flexibility

function galaxy:recipe/assembly_table/assemble/gun/lore/aim_zoom

# projectile
data modify storage galaxy:temp +recipe.assembly_table.assemble._lore append value '{"translate":" %s:","with":[{"translate":"attribute.name.galaxy.projectile","color":"dark_aqua"}],"color":"gray","italic":false}'

function galaxy:recipe/assembly_table/assemble/gun/lore/projectile_color

function galaxy:recipe/assembly_table/assemble/gun/lore/projectile_damage

function galaxy:recipe/assembly_table/assemble/gun/lore/projectile_velocity

function galaxy:recipe/assembly_table/assemble/gun/lore/projectile_distance

execute unless data storage galaxy:temp +recipe.assembly_table.assemble._customAttribute.projectile{penetrate:0} run function galaxy:recipe/assembly_table/assemble/gun/lore/projectile_penetrate

execute unless data storage galaxy:temp +recipe.assembly_table.assemble._customAttribute.projectile{bounce:0} run function galaxy:recipe/assembly_table/assemble/gun/lore/projectile_bounce

execute unless data storage galaxy:temp +recipe.assembly_table.assemble._customAttribute.projectile{trace:0} run function galaxy:recipe/assembly_table/assemble/gun/lore/projectile_trace
