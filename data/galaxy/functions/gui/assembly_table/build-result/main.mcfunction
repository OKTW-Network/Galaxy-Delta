replaceitem block ~ ~ ~ container.13 carrot_on_a_stick{gun:{type:0,cosmetic:0,cosmeticName:"none",cosmeticModel:100,addon:0,addonName:"none",status:0,projectile:{penetrate:0,trace:0,extra:0,color:0,colorName:"none"},parts:[{component:{casing_gun:1}},{component:{barrel:1}},{component:{laser_core:1}},{component:{cooling_system:1}},{component:{handle:1}}]},display:{Name:'{"translate":"item.galaxy.lasor","italic":false}'},CustomModelData:100}
execute if data block ~ ~ ~ Items[{Slot:1b}].tag.component.sight run data modify block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts append value {component:{sight:1}}
execute if data block ~ ~ ~ Items[{Slot:7b}].tag.component.addon run data modify block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts append value {component:{addon:1}}
execute if data block ~ ~ ~ Items[{Slot:24b}].tag.component.cosmetic run data modify block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts append value {component:{cosmetic:1}}
execute if data block ~ ~ ~ Items[{Slot:26b}].tag.component.color_lens run data modify block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts append value {component:{color_lens:1}}

function cu:uuid/generate
data modify block ~ ~ ~ Items[{Slot:13b}].tag.gun.UUID set from storage cu:uuid generate

data modify block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{barrel:1}}] set from block ~ ~ ~ Items[{Slot:9b}].tag
data modify block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{casing_gun:1}}] set from block ~ ~ ~ Items[{Slot:10b}].tag
data modify block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{laser_core:1}}] set from block ~ ~ ~ Items[{Slot:11b}].tag
data modify block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{cooling_system:1}}] set from block ~ ~ ~ Items[{Slot:19b}].tag
data modify block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{handle:1}}] set from block ~ ~ ~ Items[{Slot:20b}].tag
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{sight:1}}] run data modify block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{sight:1}}] set from block ~ ~ ~ Items[{Slot:1b}].tag
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{addon:1}}] run data modify block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{addon:1}}] set from block ~ ~ ~ Items[{Slot:7b}].tag
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{cosmetic:1}}] run data modify block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{cosmetic:1}}] set from block ~ ~ ~ Items[{Slot:24b}].tag
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{color_lens:1}}] run data modify block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{color_lens:1}}] set from block ~ ~ ~ Items[{Slot:26b}].tag

function galaxy:gui/assembly_table/build-result/type
function galaxy:gui/assembly_table/build-result/projectile_damage
function galaxy:gui/assembly_table/build-result/delay
function galaxy:gui/assembly_table/build-result/projectile_distance
function galaxy:gui/assembly_table/build-result/temperature_max
function galaxy:gui/assembly_table/build-result/heat
function galaxy:gui/assembly_table/build-result/cooling
function galaxy:gui/assembly_table/build-result/cooling_delay
function galaxy:gui/assembly_table/build-result/projectile_speed
function galaxy:gui/assembly_table/build-result/projectile_offset
function galaxy:gui/assembly_table/build-result/projectile_aim_offset
function galaxy:gui/assembly_table/build-result/aim_zoom
function galaxy:gui/assembly_table/build-result/accelerate
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{barrel:1}}].component.alteration.projectile.penetrate run function galaxy:gui/assembly_table/build-result/projectile_penetrate
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{barrel:1}}].component.alteration.projectile.trace run function galaxy:gui/assembly_table/build-result/projectile_trace
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{barrel:1}}].component.alteration.projectile.extra run function galaxy:gui/assembly_table/build-result/extra
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{addon:1}}] run function galaxy:gui/assembly_table/build-result/addon
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{cosmetic:1}}] run function galaxy:gui/assembly_table/build-result/cosmetic
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{color_lens:1}}] run function galaxy:gui/assembly_table/build-result/projectile_color

data remove storage galaxy:temp itemTag
data modify storage galaxy:temp itemTag set from block ~ ~ ~ Items[{Slot:13b}].tag
function galaxy:gui/assembly_table/build-lore/main
data modify block ~ ~ ~ Items[{Slot:13b}].tag.display.Lore set from storage galaxy:temp lore

execute if data block ~ ~ ~ Items[{Slot:13b}].tag.gun{type:1,cosmetic:0} run data modify block ~ ~ ~ Items[{Slot:13b}].tag.CustomModelData set value 210100
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.gun{type:2,cosmetic:0} run data modify block ~ ~ ~ Items[{Slot:13b}].tag.CustomModelData set value 220100
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.gun{type:3,cosmetic:0} run data modify block ~ ~ ~ Items[{Slot:13b}].tag.CustomModelData set value 230100

execute unless data block ~ ~ ~ Items[{Slot:13b}].tag.gun{cosmetic:0} run data modify block ~ ~ ~ Items[{Slot:13b}].tag.CustomModelData set from block ~ ~ ~ Items[{Slot:13b}].tag.gun.cosmeticModel

function galaxy:gui/assembly_table/data_save-parts
function galaxy:gui/assembly_table/data_save-result
