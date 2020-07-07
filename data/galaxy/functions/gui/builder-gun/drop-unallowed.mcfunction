# execute unless data block ~ ~ ~ Items[{Slot:1b,tag:{component:1,sight:1}}] run data modify storage galaxy:temporary GUI.drop append from block ~ ~ ~ Items[{Slot:1b}]
# execute unless data block ~ ~ ~ Items[{Slot:7b,tag:{component:1,firing_mode:1}}] run data modify storage galaxy:temporary GUI.drop append from block ~ ~ ~ Items[{Slot:7b}]
execute unless data block ~ ~ ~ Items[{Slot:9b,tag:{component:1,barrel:1}}] run data modify storage galaxy:temporary GUI.drop append from block ~ ~ ~ Items[{Slot:9b}]
execute unless data block ~ ~ ~ Items[{Slot:10b,tag:{component:1,casing_gun:1}}] run data modify storage galaxy:temporary GUI.drop append from block ~ ~ ~ Items[{Slot:10b}]
execute unless data block ~ ~ ~ Items[{Slot:11b,tag:{component:1,laser_core:1}}] run data modify storage galaxy:temporary GUI.drop append from block ~ ~ ~ Items[{Slot:11b}]
execute unless data block ~ ~ ~ Items[{Slot:19b,tag:{component:1,cooling_system:1}}] run data modify storage galaxy:temporary GUI.drop append from block ~ ~ ~ Items[{Slot:19b}]
execute unless data block ~ ~ ~ Items[{Slot:20b,tag:{component:1,handle:1}}] run data modify storage galaxy:temporary GUI.drop append from block ~ ~ ~ Items[{Slot:20b}]
# execute unless data block ~ ~ ~ Items[{Slot:24b,tag:{component:1,cosmetic:1}}] run data modify storage galaxy:temporary GUI.drop append from block ~ ~ ~ Items[{Slot:24b}]
# execute unless data block ~ ~ ~ Items[{Slot:26b,tag:{component:1,projectile_color:1}}] run data modify storage galaxy:temporary GUI.drop append from block ~ ~ ~ Items[{Slot:26b}]

execute unless data block ~ ~ ~ Items[{Slot:13b,tag:{gun:1}}] run data modify storage galaxy:temporary GUI.drop append from block ~ ~ ~ Items[{Slot:13b}]
execute if data block ~ ~ ~ Items[{Slot:13b,tag:{gun:1,sbldGResult:1}}] run data modify storage galaxy:temporary GUI.drop append from block ~ ~ ~ Items[{Slot:13b}]

execute if data storage galaxy:temporary GUI.drop[0] positioned ~ ~1 ~ run function galaxy:gui/drop_item

function galaxy:gui/builder-gun/delete-parts_unallowed
execute unless data block ~ ~ ~ Items[{Slot:13b,tag:{gun:1}}] run replaceitem block ~ ~ ~ container.13 minecraft:air
execute if data block ~ ~ ~ Items[{Slot:13b,tag:{gun:1,sbldGResult:1}}] run replaceitem block ~ ~ ~ container.13 minecraft:air
