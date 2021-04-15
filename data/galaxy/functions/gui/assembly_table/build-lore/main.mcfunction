data modify storage galaxy:temp lore set value []

function galaxy:gui/assembly_table/build-lore/type

execute if data storage galaxy:temp itemTag.CustomData.galaxy.tag.cosmetic.Name run function galaxy:gui/assembly_table/build-lore/cosmetic

execute if data storage galaxy:temp itemTag.CustomData.galaxy.tag.projectile.color run function galaxy:gui/assembly_table/build-lore/projectile_color

execute if data storage galaxy:temp itemTag.CustomData.galaxy.tag.special.Name run function galaxy:gui/assembly_table/build-lore/special

data modify storage cu:string toStatic.input set value '{"translate":"%s: %s","with":[{"translate":"attribute.projectile.damage","color":"aqua"},{"storage":"galaxy:temp","nbt":"itemTag.CustomData.galaxy.tag.projectile.damage","color":"gray"}],"color":"dark_gray","italic":false}'
function cu:string/convert_to-static
data modify storage galaxy:temp lore append from storage cu:string toStatic.result

execute if data storage galaxy:temp itemTag.CustomData.galaxy.tag{type:2} run function galaxy:gui/assembly_table/build-lore/charge

data modify storage cu:string toStatic.input set value '{"translate":"%s: %st","with":[{"translate":"attribute.delay","color":"aqua"},{"storage":"galaxy:temp","nbt":"itemTag.CustomData.galaxy.tag.delay","color":"gray"}],"color":"dark_gray","italic":false}'
function cu:string/convert_to-static
data modify storage galaxy:temp lore append from storage cu:string toStatic.result

data modify storage cu:string toStatic.input set value '{"translate":"%s: %sB","with":[{"translate":"attribute.projectile.distance","color":"aqua"},{"storage":"galaxy:temp","nbt":"itemTag.CustomData.galaxy.tag.projectile.distance","color":"gray"}],"color":"dark_gray","italic":false}'
function cu:string/convert_to-static
data modify storage galaxy:temp lore append from storage cu:string toStatic.result

function galaxy:gui/assembly_table/build-lore/heat

data modify storage cu:string toStatic.input set value '{"translate":"%s: %s℃","with":[{"translate":"attribute.max_temperature","color":"aqua"},{"storage":"galaxy:temp","nbt":"itemTag.CustomData.galaxy.tag.temperMax","color":"gray"}],"color":"dark_gray","italic":false}'
function cu:string/convert_to-static
data modify storage galaxy:temp lore append from storage cu:string toStatic.result

data modify storage cu:string toStatic.input set value '{"translate":"%s: %s℃/t","with":[{"translate":"attribute.cooling","color":"aqua"},{"storage":"galaxy:temp","nbt":"itemTag.CustomData.galaxy.tag.cooling","color":"gray"}],"color":"dark_gray","italic":false}'
function cu:string/convert_to-static
data modify storage galaxy:temp lore append from storage cu:string toStatic.result

data modify storage cu:string toStatic.input set value '{"translate":"%s: %st","with":[{"translate":"attribute.cooling_delay","color":"aqua"},{"storage":"galaxy:temp","nbt":"itemTag.CustomData.galaxy.tag.cooling_delay","color":"gray"}],"color":"dark_gray","italic":false}'
function cu:string/convert_to-static
data modify storage galaxy:temp lore append from storage cu:string toStatic.result

function galaxy:gui/assembly_table/build-lore/projectile_speed

function galaxy:gui/assembly_table/build-lore/projectile_offset

data modify storage cu:string toStatic.input set value '{"translate":"%s: %s","with":[{"translate":"attribute.aim_zoom","color":"aqua"},{"storage":"galaxy:temp","nbt":"itemTag.CustomData.galaxy.tag.aim_zoom","color":"gray"}],"color":"dark_gray","italic":false}'
function cu:string/convert_to-static
data modify storage galaxy:temp lore append from storage cu:string toStatic.result

execute if data storage galaxy:temp itemTag.CustomData.galaxy.tag.accelerate run function galaxy:gui/assembly_table/build-lore/accelerate

execute if data storage galaxy:temp itemTag.CustomData.galaxy.tag.projectile.penetrate run function galaxy:gui/assembly_table/build-lore/projectile_penetrate

execute if data storage galaxy:temp itemTag.CustomData.galaxy.tag.projectile.bounce run function galaxy:gui/assembly_table/build-lore/projectile_bounce

execute if data storage galaxy:temp itemTag.CustomData.galaxy.tag.projectile.trace run function galaxy:gui/assembly_table/build-lore/projectile_trace

execute if data storage galaxy:temp itemTag.CustomData.galaxy.tag.projectile.extra run function galaxy:gui/assembly_table/build-lore/projectile_extra
