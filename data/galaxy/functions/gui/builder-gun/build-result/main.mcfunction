replaceitem block ~ ~ ~ container.13 carrot_on_a_stick{gun:1,mode:0,type:0,style:0,CustomModelData:1,display:{Name:'{"translate":"item.galaxy.lasor","italic":false}'},parts:[{casing_gun:1},{barrel:1},{laser_core:1},{cooling_system:1},{handle:1}]}
execute if data block ~ ~ ~ Items[{Slot:1b}].tag.sight run data modify block ~ ~ ~ Items[{Slot:13b}].tag.parts append value {sight:1}
execute if data block ~ ~ ~ Items[{Slot:7b}].tag.firing_mode run data modify block ~ ~ ~ Items[{Slot:13b}].tag.parts append value {firing_mode:1}
execute if data block ~ ~ ~ Items[{Slot:24b}].tag.cosmetic run data modify block ~ ~ ~ Items[{Slot:13b}].tag.parts append value {cosmetic:1}
execute if data block ~ ~ ~ Items[{Slot:26b}].tag.color_lens run data modify block ~ ~ ~ Items[{Slot:13b}].tag.parts append value {color_lens:1}

function cu:uuid/generate
data modify block ~ ~ ~ Items[{Slot:13b}].tag.UUID set from storage cu:resources UUID

data modify block ~ ~ ~ Items[{Slot:13b}].tag.parts[{barrel:1}] merge from block ~ ~ ~ Items[{Slot:9b}].tag
data modify block ~ ~ ~ Items[{Slot:13b}].tag.parts[{casing_gun:1}] merge from block ~ ~ ~ Items[{Slot:10b}].tag
data modify block ~ ~ ~ Items[{Slot:13b}].tag.parts[{laser_core:1}] merge from block ~ ~ ~ Items[{Slot:11b}].tag
data modify block ~ ~ ~ Items[{Slot:13b}].tag.parts[{cooling_system:1}] merge from block ~ ~ ~ Items[{Slot:19b}].tag
data modify block ~ ~ ~ Items[{Slot:13b}].tag.parts[{handle:1}] merge from block ~ ~ ~ Items[{Slot:20b}].tag
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.parts[{sight:1}] run data modify block ~ ~ ~ Items[{Slot:13b}].tag.parts[{sight:1}] merge from block ~ ~ ~ Items[{Slot:1b}].tag
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.parts[{firing_mode:1}] run data modify block ~ ~ ~ Items[{Slot:13b}].tag.parts[{firing_mode:1}] merge from block ~ ~ ~ Items[{Slot:7b}].tag
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.parts[{cosmetic:1}] run data modify block ~ ~ ~ Items[{Slot:13b}].tag.parts[{cosmetic:1}] merge from block ~ ~ ~ Items[{Slot:24b}].tag
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.parts[{color_lens:1}] run data modify block ~ ~ ~ Items[{Slot:13b}].tag.parts[{color_lens:1}] merge from block ~ ~ ~ Items[{Slot:26b}].tag

function galaxy:gui/builder-gun/build-result/type
function galaxy:gui/builder-gun/build-result/projectile_damage
function galaxy:gui/builder-gun/build-result/attack_delay
function galaxy:gui/builder-gun/build-result/projectile_distance
function galaxy:gui/builder-gun/build-result/temperature_max
function galaxy:gui/builder-gun/build-result/heat
function galaxy:gui/builder-gun/build-result/cooling
function galaxy:gui/builder-gun/build-result/cooling_delay
function galaxy:gui/builder-gun/build-result/projectile_speed
function galaxy:gui/builder-gun/build-result/projectile_offset
function galaxy:gui/builder-gun/build-result/projectile_aim_offset
function galaxy:gui/builder-gun/build-result/aim_zoom
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.parts[{barrel:1}].alteration.projectile.penetrate run function galaxy:gui/builder-gun/build-result/projectile_penetrate
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.parts[{barrel:1}].alteration.projectile.trace run function galaxy:gui/builder-gun/build-result/projectile_trace
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.parts[{barrel:1}] run function galaxy:gui/builder-gun/build-result/extra
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.parts[{firing_mode:1}] run function galaxy:gui/builder-gun/build-result/firing_mode
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.parts[{cosmetic:1}] run function galaxy:gui/builder-gun/build-result/cosmetic
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.parts[{color_lens:1}] run function galaxy:gui/builder-gun/build-result/color_lens

execute if data block ~ ~ ~ Items[{Slot:13b,tag:{type:1}}] run data modify block ~ ~ ~ Items[{Slot:13b}].tag.display.Lore set value '[{"translate":"attribute.type","color":"green","italic":false},{"text":": ","color":"dark_gray","italic":false},{"translate":"type.pistol","color":"gray","italic":false}]'
execute if data block ~ ~ ~ Items[{Slot:13b,tag:{type:2}}] run data modify block ~ ~ ~ Items[{Slot:13b}].tag.display.Lore set value '[{"translate":"attribute.type","color":"green","italic":false},{"text":": ","color":"dark_gray","italic":false},{"translate":"type.sniper","color":"gray","italic":false}]'
execute if data block ~ ~ ~ Items[{Slot:13b,tag:{type:3}}] run data modify block ~ ~ ~ Items[{Slot:13b}].tag.display.Lore set value '[{"translate":"attribute.type","color":"green","italic":false},{"text":": ","color":"dark_gray","italic":false},{"translate":"type.shotgun","color":"gray","italic":false}]'
execute if data block ~ ~ ~ Items[{Slot:13b,tag:{type:1,style:0}}] run data modify block ~ ~ ~ Items[{Slot:13b}].tag.CustomModelData set value 210100
execute if data block ~ ~ ~ Items[{Slot:13b,tag:{type:2,style:0}}] run data modify block ~ ~ ~ Items[{Slot:13b}].tag.CustomModelData set value 210100
execute if data block ~ ~ ~ Items[{Slot:13b,tag:{type:3,style:0}}] run data modify block ~ ~ ~ Items[{Slot:13b}].tag.CustomModelData set value 210100

function galaxy:gui/builder-gun/data_save-parts
function galaxy:gui/builder-gun/data_save-result
