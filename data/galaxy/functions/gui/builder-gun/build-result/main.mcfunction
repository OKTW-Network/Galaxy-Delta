replaceitem block ~ ~ ~ container.13 carrot_on_a_stick{gun:1,type:1,style:1,CustomModelData:1,display:{Name:'{"translate":"item.unknow","italic":false}'},parts:[{casing_gun:1},{barrel:1},{laser_core:1},{cooling_system:1},{handle:1}]}
# execute if data block ~ ~ ~ Items[{Slot:1b}].tag.sight run data modify block ~ ~ ~ Items[{Slot:13b}].tag.parts append value {sight:1}
# execute if data block ~ ~ ~ Items[{Slot:7b}].tag.firing_mode run data modify block ~ ~ ~ Items[{Slot:13b}].tag.parts append value {firing_mode:1}
# execute if data block ~ ~ ~ Items[{Slot:24b}].tag.style run data modify block ~ ~ ~ Items[{Slot:13b}].tag.parts append value {style:1}
# execute if data block ~ ~ ~ Items[{Slot:26b}].tag.projectile_color run data modify block ~ ~ ~ Items[{Slot:13b}].tag.parts append value {projectile_color:1}

function cu:uuid/generate
data modify block ~ ~ ~ Items[{Slot:13b}].tag.UUID set from storage cu:resources UUID

data modify block ~ ~ ~ Items[{Slot:13b}].tag.parts[{barrel:1}] merge from block ~ ~ ~ Items[{Slot:9b}].tag
data modify block ~ ~ ~ Items[{Slot:13b}].tag.parts[{casing_gun:1}] merge from block ~ ~ ~ Items[{Slot:10b}].tag
data modify block ~ ~ ~ Items[{Slot:13b}].tag.parts[{laser_core:1}] merge from block ~ ~ ~ Items[{Slot:11b}].tag
data modify block ~ ~ ~ Items[{Slot:13b}].tag.parts[{cooling_system:1}] merge from block ~ ~ ~ Items[{Slot:19b}].tag
data modify block ~ ~ ~ Items[{Slot:13b}].tag.parts[{handle:1}] merge from block ~ ~ ~ Items[{Slot:20b}].tag
# data modify block ~ ~ ~ Items[{Slot:13b}].tag.parts[{sight:1}] merge from block ~ ~ ~ Items[{Slot:1b}].tag
# data modify block ~ ~ ~ Items[{Slot:13b}].tag.parts[{firing_mode:1}] merge from block ~ ~ ~ Items[{Slot:7b}].tag
# data modify block ~ ~ ~ Items[{Slot:13b}].tag.parts[{style:1}] merge from block ~ ~ ~ Items[{Slot:24b}].tag
# data modify block ~ ~ ~ Items[{Slot:13b}].tag.parts[{projectile_color:1}] merge from block ~ ~ ~ Items[{Slot:26b}].tag

function galaxy:gui/builder-gun/build-result/projectile_damage
function galaxy:gui/builder-gun/build-result/attack_delay
function galaxy:gui/builder-gun/build-result/projectile_distance
function galaxy:gui/builder-gun/build-result/temperature_max
function galaxy:gui/builder-gun/build-result/heat
function galaxy:gui/builder-gun/build-result/cooling
function galaxy:gui/builder-gun/build-result/cooling_delay
function galaxy:gui/builder-gun/build-result/projectile_speed
function galaxy:gui/builder-gun/build-result/projectile_offset
function galaxy:gui/builder-gun/build-result/projectile_penetrate
function galaxy:gui/builder-gun/build-result/projectile_trace

execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:13b,tag:{type:1,style:1}}]} run data modify block ~ ~ ~ Items[{Slot:13b}].tag.display.Name set value '{"translate":"item.galaxy.lasor","italic":false}'
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:13b,tag:{type:1,style:1}}]} run data modify block ~ ~ ~ Items[{Slot:13b}].tag.CustomModelData set value 210100

function galaxy:gui/builder-gun/data_save-parts
function galaxy:gui/builder-gun/data_save-result
