replaceitem block ~ ~ ~ container.13 carrot_on_a_stick{gun:{type:0,style:0,mode:0,status:0,parts:[{component:{casing_gun:1}},{component:{barrel:1}},{component:{laser_core:1}},{component:{cooling_system:1}},{component:{handle:1}}]},display:{Name:'{"translate":"item.galaxy.lasor","italic":false}'}}
execute if data block ~ ~ ~ Items[{Slot:1b}].tag.component.sight run data modify block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts append value {component:{sight:1}}
execute if data block ~ ~ ~ Items[{Slot:7b}].tag.component.trigger run data modify block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts append value {component:{trigger:1}}
execute if data block ~ ~ ~ Items[{Slot:24b}].tag.component.cosmetic run data modify block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts append value {component:{cosmetic:1}}
execute if data block ~ ~ ~ Items[{Slot:26b}].tag.component.color_lens run data modify block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts append value {component:{color_lens:1}}

function cu:uuid/generate
data modify block ~ ~ ~ Items[{Slot:13b}].tag.gun.UUID set from storage cu:resources UUID

data modify block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{barrel:1}}] set from block ~ ~ ~ Items[{Slot:9b}].tag
data modify block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{casing_gun:1}}] set from block ~ ~ ~ Items[{Slot:10b}].tag
data modify block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{laser_core:1}}] set from block ~ ~ ~ Items[{Slot:11b}].tag
data modify block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{cooling_system:1}}] set from block ~ ~ ~ Items[{Slot:19b}].tag
data modify block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{handle:1}}] set from block ~ ~ ~ Items[{Slot:20b}].tag
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{sight:1}}] run data modify block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{sight:1}}] set from block ~ ~ ~ Items[{Slot:1b}].tag
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{trigger:1}}] run data modify block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{trigger:1}}] set from block ~ ~ ~ Items[{Slot:7b}].tag
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{cosmetic:1}}] run data modify block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{cosmetic:1}}] set from block ~ ~ ~ Items[{Slot:24b}].tag
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{color_lens:1}}] run data modify block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{color_lens:1}}] set from block ~ ~ ~ Items[{Slot:26b}].tag

function galaxy:gui/builder-gun/build-result/type
function galaxy:gui/builder-gun/build-result/projectile_damage
function galaxy:gui/builder-gun/build-result/delay
function galaxy:gui/builder-gun/build-result/projectile_distance
function galaxy:gui/builder-gun/build-result/temperature_max
function galaxy:gui/builder-gun/build-result/heat
function galaxy:gui/builder-gun/build-result/cooling
function galaxy:gui/builder-gun/build-result/cooling_delay
function galaxy:gui/builder-gun/build-result/projectile_speed
function galaxy:gui/builder-gun/build-result/projectile_offset
function galaxy:gui/builder-gun/build-result/projectile_aim_offset
function galaxy:gui/builder-gun/build-result/aim_zoom
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{barrel:1}}].component.alteration.projectile.penetrate run function galaxy:gui/builder-gun/build-result/projectile_penetrate
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{barrel:1}}].component.alteration.projectile.trace run function galaxy:gui/builder-gun/build-result/projectile_trace
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{barrel:1}}] run function galaxy:gui/builder-gun/build-result/extra
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{trigger:1}}] run function galaxy:gui/builder-gun/build-result/mode
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{cosmetic:1}}] run function galaxy:gui/builder-gun/build-result/style
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{color_lens:1}}] run function galaxy:gui/builder-gun/build-result/projectile_color

execute if data block ~ ~ ~ Items[{Slot:13b}].tag.gun{type:1} run data modify block ~ ~ ~ Items[{Slot:13b}].tag.display.Lore prepend value '[{"translate":"attribute.type","color":"green","italic":false},{"text":": ","color":"dark_gray","italic":false},{"translate":"type.pistol","color":"gray","italic":false}]'
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.gun{type:2} run data modify block ~ ~ ~ Items[{Slot:13b}].tag.display.Lore prepend value '[{"translate":"attribute.type","color":"green","italic":false},{"text":": ","color":"dark_gray","italic":false},{"translate":"type.sniper","color":"gray","italic":false}]'
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.gun{type:3} run data modify block ~ ~ ~ Items[{Slot:13b}].tag.display.Lore prepend value '[{"translate":"attribute.type","color":"green","italic":false},{"text":": ","color":"dark_gray","italic":false},{"translate":"type.shotgun","color":"gray","italic":false}]'

execute if data block ~ ~ ~ Items[{Slot:13b}].tag.gun{type:1,style:0} run data modify block ~ ~ ~ Items[{Slot:13b}].tag.CustomModelData set value 210100
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.gun{type:2,style:0} run data modify block ~ ~ ~ Items[{Slot:13b}].tag.CustomModelData set value 220100
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.gun{type:2,style:1} run data modify block ~ ~ ~ Items[{Slot:13b}].tag.CustomModelData set value 220200
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.gun{type:3,style:0} run data modify block ~ ~ ~ Items[{Slot:13b}].tag.CustomModelData set value 230100

function galaxy:gui/builder-gun/data_save-parts
function galaxy:gui/builder-gun/data_save-result
