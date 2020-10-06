data remove storage galaxy:recipe SbldG
data modify storage galaxy:recipe SbldG.attribute set value []
data modify storage galaxy:recipe SbldG.attributes set value {}

function galaxy:recipe/super_builder-gun/build-attribute/type
data modify storage galaxy:recipe SbldG.attribute append from storage galaxy:recipe SbldG.attributes.type

function galaxy:recipe/super_builder-gun/build-attribute/style
data modify storage galaxy:recipe SbldG.attribute append from storage galaxy:recipe SbldG.attributes.style

function galaxy:recipe/super_builder-gun/build-attribute/mode
data modify storage galaxy:recipe SbldG.attribute append from storage galaxy:recipe SbldG.attributes.mode

function galaxy:recipe/super_builder-gun/build-attribute/aim_zoom
data modify storage galaxy:recipe SbldG.attribute append from storage galaxy:recipe SbldG.attributes.aim_zoom

function galaxy:recipe/super_builder-gun/build-attribute/projectile_damage
data modify storage galaxy:recipe SbldG.attribute append from storage galaxy:recipe SbldG.attributes.projectile_damage

function galaxy:recipe/super_builder-gun/build-attribute/delay
data modify storage galaxy:recipe SbldG.attribute append from storage galaxy:recipe SbldG.attributes.delay

function galaxy:recipe/super_builder-gun/build-attribute/projectile_distance
data modify storage galaxy:recipe SbldG.attribute append from storage galaxy:recipe SbldG.attributes.projectile_distance

function galaxy:recipe/super_builder-gun/build-attribute/temperature_max
data modify storage galaxy:recipe SbldG.attribute append from storage galaxy:recipe SbldG.attributes.temperature_max

function galaxy:recipe/super_builder-gun/build-attribute/heat
data modify storage galaxy:recipe SbldG.attribute append from storage galaxy:recipe SbldG.attributes.heat

function galaxy:recipe/super_builder-gun/build-attribute/cooling
data modify storage galaxy:recipe SbldG.attribute append from storage galaxy:recipe SbldG.attributes.cooling

function galaxy:recipe/super_builder-gun/build-attribute/cooling_delay
data modify storage galaxy:recipe SbldG.attribute append from storage galaxy:recipe SbldG.attributes.cooling_delay

function galaxy:recipe/super_builder-gun/build-attribute/projectile_speed
data modify storage galaxy:recipe SbldG.attribute append from storage galaxy:recipe SbldG.attributes.projectile_speed

function galaxy:recipe/super_builder-gun/build-attribute/projectile_offset
data modify storage galaxy:recipe SbldG.attribute append from storage galaxy:recipe SbldG.attributes.projectile_offset

function galaxy:recipe/super_builder-gun/build-attribute/projectile_aim_offset
data modify storage galaxy:recipe SbldG.attribute append from storage galaxy:recipe SbldG.attributes.projectile_aim_offset

function galaxy:recipe/super_builder-gun/build-attribute/projectile_penetrate
data modify storage galaxy:recipe SbldG.attribute append from storage galaxy:recipe SbldG.attributes.projectile_penetrate

function galaxy:recipe/super_builder-gun/build-attribute/projectile_trace
data modify storage galaxy:recipe SbldG.attribute append from storage galaxy:recipe SbldG.attributes.projectile_trace

function galaxy:recipe/super_builder-gun/build-attribute/projectile_extra
data modify storage galaxy:recipe SbldG.attribute append from storage galaxy:recipe SbldG.attributes.projectile_extra

function galaxy:recipe/super_builder-gun/build-attribute/projectile_color
data modify storage galaxy:recipe SbldG.attribute append from storage galaxy:recipe SbldG.attributes.projectile_color

execute store result score #global sbldGAtbMax run data get storage galaxy:recipe SbldG.attribute
