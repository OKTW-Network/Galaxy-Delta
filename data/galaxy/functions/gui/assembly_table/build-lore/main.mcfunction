data modify storage galaxy:temp lore set value []

function galaxy:gui/assembly_table/build-lore/type

execute unless data storage galaxy:temp itemTag.gun{cosmetic:0} run function galaxy:gui/assembly_table/build-lore/cosmetic

execute unless data storage galaxy:temp itemTag.gun.projectile{color:0} run function galaxy:gui/assembly_table/build-lore/projectile_color

execute unless data storage galaxy:temp itemTag.gun{addon:0} run function galaxy:gui/assembly_table/build-lore/addon

data modify storage cu:string toStatic.input set value '{"translate":"%s: %s","with":[{"translate":"attribute.projectile.damage","color":"aqua"},{"storage":"galaxy:temp","nbt":"itemTag.gun.projectile.damage","color":"gray"}],"color":"dark_gray","italic":false}'
function cu:string/convert_to-static
data modify storage galaxy:temp lore append from storage cu:string toStatic.result

data modify storage cu:string toStatic.input set value '{"translate":"%s: %st","with":[{"translate":"attribute.delay","color":"aqua"},{"storage":"galaxy:temp","nbt":"itemTag.gun.delay","color":"gray"}],"color":"dark_gray","italic":false}'
function cu:string/convert_to-static
data modify storage galaxy:temp lore append from storage cu:string toStatic.result

data modify storage cu:string toStatic.input set value '{"translate":"%s: %sB","with":[{"translate":"attribute.projectile.distance","color":"aqua"},{"storage":"galaxy:temp","nbt":"itemTag.gun.projectile.distance","color":"gray"}],"color":"dark_gray","italic":false}'
function cu:string/convert_to-static
data modify storage galaxy:temp lore append from storage cu:string toStatic.result

data modify storage cu:string toStatic.input set value '{"translate":"%s: %s℃/shot","with":[{"translate":"attribute.heat","color":"aqua"},{"storage":"galaxy:temp","nbt":"itemTag.gun.heat","color":"gray"}],"color":"dark_gray","italic":false}'
function cu:string/convert_to-static
data modify storage galaxy:temp lore append from storage cu:string toStatic.result

data modify storage cu:string toStatic.input set value '{"translate":"%s: %s℃","with":[{"translate":"attribute.max_temperature","color":"aqua"},{"storage":"galaxy:temp","nbt":"itemTag.gun.temperMax","color":"gray"}],"color":"dark_gray","italic":false}'
function cu:string/convert_to-static
data modify storage galaxy:temp lore append from storage cu:string toStatic.result

data modify storage cu:string toStatic.input set value '{"translate":"%s: %s℃/t","with":[{"translate":"attribute.cooling","color":"aqua"},{"storage":"galaxy:temp","nbt":"itemTag.gun.cooling","color":"gray"}],"color":"dark_gray","italic":false}'
function cu:string/convert_to-static
data modify storage galaxy:temp lore append from storage cu:string toStatic.result

data modify storage cu:string toStatic.input set value '{"translate":"%s: %st","with":[{"translate":"attribute.cooling_delay","color":"aqua"},{"storage":"galaxy:temp","nbt":"itemTag.gun.cooling_delay","color":"gray"}],"color":"dark_gray","italic":false}'
function cu:string/convert_to-static
data modify storage galaxy:temp lore append from storage cu:string toStatic.result

function galaxy:gui/assembly_table/build-lore/projectile_speed

function galaxy:gui/assembly_table/build-lore/projectile_offset

data modify storage cu:string toStatic.input set value '{"translate":"%s: %s","with":[{"translate":"attribute.aim_zoom","color":"aqua"},{"storage":"galaxy:temp","nbt":"itemTag.gun.aim_zoom","color":"gray"}],"color":"dark_gray","italic":false}'
function cu:string/convert_to-static
data modify storage galaxy:temp lore append from storage cu:string toStatic.result

execute unless data storage galaxy:temp itemTag.gun{accelerate:0} run function galaxy:gui/assembly_table/build-lore/accelerate

execute unless data storage galaxy:temp itemTag.gun.projectile{penetrate:0} run function galaxy:gui/assembly_table/build-lore/projectile_penetrate

execute unless data storage galaxy:temp itemTag.gun.projectile{trace:0} run function galaxy:gui/assembly_table/build-lore/projectile_trace

execute unless data storage galaxy:temp itemTag.gun.projectile{extra:0} run function galaxy:gui/assembly_table/build-lore/projectile_extra
