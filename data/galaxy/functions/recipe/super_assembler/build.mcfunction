data remove storage galaxy:recipe super_assembler
data modify storage galaxy:recipe super_assembler.attribute set value []
data modify storage galaxy:temp +recipe.super_assembler.attribute set value {}

function galaxy:recipe/super_assembler/build-attribute/type
data modify storage galaxy:recipe super_assembler.attribute append from storage galaxy:temp +recipe.super_assembler.attribute.type

function galaxy:recipe/super_assembler/build-attribute/cosmetic
data modify storage galaxy:recipe super_assembler.attribute append from storage galaxy:temp +recipe.super_assembler.attribute.cosmetic

function galaxy:recipe/super_assembler/build-attribute/projectile_color
data modify storage galaxy:recipe super_assembler.attribute append from storage galaxy:temp +recipe.super_assembler.attribute.projectile_color

function galaxy:recipe/super_assembler/build-attribute/upgrade
data modify storage galaxy:recipe super_assembler.attribute append from storage galaxy:temp +recipe.super_assembler.attribute.upgrade

function galaxy:recipe/super_assembler/build-attribute/projectile_damage
data modify storage galaxy:recipe super_assembler.attribute append from storage galaxy:temp +recipe.super_assembler.attribute.projectile_damage

function galaxy:recipe/super_assembler/build-attribute/interval
data modify storage galaxy:recipe super_assembler.attribute append from storage galaxy:temp +recipe.super_assembler.attribute.interval

function galaxy:recipe/super_assembler/build-attribute/projectile_distance
data modify storage galaxy:recipe super_assembler.attribute append from storage galaxy:temp +recipe.super_assembler.attribute.projectile_distance

function galaxy:recipe/super_assembler/build-attribute/heat
data modify storage galaxy:recipe super_assembler.attribute append from storage galaxy:temp +recipe.super_assembler.attribute.heat

function galaxy:recipe/super_assembler/build-attribute/temperature_min
data modify storage galaxy:recipe super_assembler.attribute append from storage galaxy:temp +recipe.super_assembler.attribute.temperature_min

function galaxy:recipe/super_assembler/build-attribute/temperature_max
data modify storage galaxy:recipe super_assembler.attribute append from storage galaxy:temp +recipe.super_assembler.attribute.temperature_max

function galaxy:recipe/super_assembler/build-attribute/cooling
data modify storage galaxy:recipe super_assembler.attribute append from storage galaxy:temp +recipe.super_assembler.attribute.cooling

function galaxy:recipe/super_assembler/build-attribute/cooling_delay
data modify storage galaxy:recipe super_assembler.attribute append from storage galaxy:temp +recipe.super_assembler.attribute.cooling_delay

function galaxy:recipe/super_assembler/build-attribute/instability
data modify storage galaxy:recipe super_assembler.attribute append from storage galaxy:temp +recipe.super_assembler.attribute.instability

function galaxy:recipe/super_assembler/build-attribute/aim_zoom
data modify storage galaxy:recipe super_assembler.attribute append from storage galaxy:temp +recipe.super_assembler.attribute.aim_zoom

function galaxy:recipe/super_assembler/build-attribute/projectile_velocity
data modify storage galaxy:recipe super_assembler.attribute append from storage galaxy:temp +recipe.super_assembler.attribute.projectile_velocity

function galaxy:recipe/super_assembler/build-attribute/projectile_penetrate
data modify storage galaxy:recipe super_assembler.attribute append from storage galaxy:temp +recipe.super_assembler.attribute.projectile_penetrate

function galaxy:recipe/super_assembler/build-attribute/projectile_bounce
data modify storage galaxy:recipe super_assembler.attribute append from storage galaxy:temp +recipe.super_assembler.attribute.projectile_bounce

function galaxy:recipe/super_assembler/build-attribute/projectile_trace
data modify storage galaxy:recipe super_assembler.attribute append from storage galaxy:temp +recipe.super_assembler.attribute.projectile_trace

function galaxy:recipe/super_assembler/build-attribute/projectile_extra
data modify storage galaxy:recipe super_assembler.attribute append from storage galaxy:temp +recipe.super_assembler.attribute.projectile_extra

execute store result score #global galaxy.GUI.attribute.typeMax run data get storage galaxy:recipe super_assembler.attribute
