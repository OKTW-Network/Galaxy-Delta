data remove storage galaxy:recipe Samb
data modify storage galaxy:recipe Samb.attribute set value []
data modify storage galaxy:recipe Samb.attributes set value {}

function galaxy:recipe/super_assembler/build-attribute/type
data modify storage galaxy:recipe Samb.attribute append from storage galaxy:recipe Samb.attributes.type

function galaxy:recipe/super_assembler/build-attribute/cosmetic
data modify storage galaxy:recipe Samb.attribute append from storage galaxy:recipe Samb.attributes.cosmetic

function galaxy:recipe/super_assembler/build-attribute/projectile_color
data modify storage galaxy:recipe Samb.attribute append from storage galaxy:recipe Samb.attributes.projectile_color

function galaxy:recipe/super_assembler/build-attribute/special
data modify storage galaxy:recipe Samb.attribute append from storage galaxy:recipe Samb.attributes.special

function galaxy:recipe/super_assembler/build-attribute/projectile_damage
data modify storage galaxy:recipe Samb.attribute append from storage galaxy:recipe Samb.attributes.projectile_damage

function galaxy:recipe/super_assembler/build-attribute/delay
data modify storage galaxy:recipe Samb.attribute append from storage galaxy:recipe Samb.attributes.delay

function galaxy:recipe/super_assembler/build-attribute/projectile_distance
data modify storage galaxy:recipe Samb.attribute append from storage galaxy:recipe Samb.attributes.projectile_distance

function galaxy:recipe/super_assembler/build-attribute/heat
data modify storage galaxy:recipe Samb.attribute append from storage galaxy:recipe Samb.attributes.heat

function galaxy:recipe/super_assembler/build-attribute/temperature_max
data modify storage galaxy:recipe Samb.attribute append from storage galaxy:recipe Samb.attributes.temperature_max

function galaxy:recipe/super_assembler/build-attribute/cooling
data modify storage galaxy:recipe Samb.attribute append from storage galaxy:recipe Samb.attributes.cooling

function galaxy:recipe/super_assembler/build-attribute/cooling_delay
data modify storage galaxy:recipe Samb.attribute append from storage galaxy:recipe Samb.attributes.cooling_delay

function galaxy:recipe/super_assembler/build-attribute/projectile_speed
data modify storage galaxy:recipe Samb.attribute append from storage galaxy:recipe Samb.attributes.projectile_speed

function galaxy:recipe/super_assembler/build-attribute/projectile_offset
data modify storage galaxy:recipe Samb.attribute append from storage galaxy:recipe Samb.attributes.projectile_offset

function galaxy:recipe/super_assembler/build-attribute/projectile_aim_offset
data modify storage galaxy:recipe Samb.attribute append from storage galaxy:recipe Samb.attributes.projectile_aim_offset

function galaxy:recipe/super_assembler/build-attribute/aim_zoom
data modify storage galaxy:recipe Samb.attribute append from storage galaxy:recipe Samb.attributes.aim_zoom

function galaxy:recipe/super_assembler/build-attribute/accelerate
data modify storage galaxy:recipe Samb.attribute append from storage galaxy:recipe Samb.attributes.accelerate

function galaxy:recipe/super_assembler/build-attribute/projectile_penetrate
data modify storage galaxy:recipe Samb.attribute append from storage galaxy:recipe Samb.attributes.projectile_penetrate

function galaxy:recipe/super_assembler/build-attribute/projectile_bounce
data modify storage galaxy:recipe Samb.attribute append from storage galaxy:recipe Samb.attributes.projectile_bounce

function galaxy:recipe/super_assembler/build-attribute/projectile_trace
data modify storage galaxy:recipe Samb.attribute append from storage galaxy:recipe Samb.attributes.projectile_trace

function galaxy:recipe/super_assembler/build-attribute/projectile_extra
data modify storage galaxy:recipe Samb.attribute append from storage galaxy:recipe Samb.attributes.projectile_extra

execute store result score #global sbldGAtbMax run data get storage galaxy:recipe Samb.attribute
