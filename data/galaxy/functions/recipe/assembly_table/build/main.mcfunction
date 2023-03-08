function galaxy:recipe/assembly_table/build/gui_element

data modify storage galaxy:recipe assembly_table.blueprint set value []

data modify storage galaxy:recipe assembly_table.blueprint append value {}
data modify storage galaxy:recipe assembly_table.blueprint[-1].id set value "galaxy.gun"
data modify storage galaxy:recipe assembly_table.blueprint[-1].icon set value {id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"translate":"item.galaxy.gun","italic":false}'},HideFlags:127,CustomModelData:201000}}
data modify storage galaxy:recipe assembly_table.blueprint[-1].parts set value [{Slot:1b,id:"minecraft:gray_stained_glass_pane",tag:{CustomModelData:301009,display:{Name:'{"translate":"item.galaxy.gun_sight","italic":false}'}},galaxyAssembly:{required:0b,acceptTypes:["sight"]}},{Slot:7b,id:"minecraft:gray_stained_glass_pane",tag:{CustomModelData:301001,display:{Name:'{"translate":"item.galaxy.upgrade","italic":false}'}},galaxyAssembly:{required:0b,acceptTypes:["upgrade"]}},{Slot:9b,id:"minecraft:gray_stained_glass_pane",tag:{CustomModelData:301008,display:{Name:'{"translate":"item.galaxy.gun_barrel","italic":false}'}},galaxyAssembly:{required:1b,acceptTypes:["gun_barrel"]}},{Slot:10b,id:"minecraft:gray_stained_glass_pane",tag:{CustomModelData:301007,display:{Name:'{"translate":"item.galaxy.gun_casing","italic":false}'}},galaxyAssembly:{required:1b,acceptTypes:["gun_casing"]}},{Slot:11b,id:"minecraft:gray_stained_glass_pane",tag:{CustomModelData:301004,display:{Name:'{"translate":"item.galaxy.laser_core","italic":false}'}},galaxyAssembly:{required:1b,acceptTypes:["laser_core"]}},{Slot:19b,id:"minecraft:gray_stained_glass_pane",tag:{CustomModelData:301005,display:{Name:'{"translate":"item.galaxy.cooling_system","italic":false}'}},galaxyAssembly:{required:1b,acceptTypes:["cooling_system"]}},{Slot:20b,id:"minecraft:gray_stained_glass_pane",tag:{CustomModelData:301006,display:{Name:'{"translate":"item.galaxy.handle","italic":false}'}},galaxyAssembly:{required:1b,acceptTypes:["handle"]}},{Slot:24b,id:"minecraft:gray_stained_glass_pane",tag:{CustomModelData:301002,display:{Name:'{"translate":"item.galaxy.cosmetic","italic":false}'}},galaxyAssembly:{required:0b,acceptTypes:["cosmetic"]}},{Slot:26b,id:"minecraft:gray_stained_glass_pane",tag:{CustomModelData:301003,display:{Name:'{"translate":"item.galaxy.color_lens","italic":false}'}},galaxyAssembly:{required:0b,acceptTypes:["color_lens"]}}]

function #galaxy:recipe/assembly_table/build_external

function galaxy:recipe/assembly_table/build/modify/main

execute store result score #1 calcu_temp store result score #2 calcu_temp store result score #recipe.assembly_table.blueprintMax galaxy run data get storage galaxy:recipe assembly_table.blueprint
scoreboard players operation #1 calcu_temp /= #6 num
scoreboard players operation #2 calcu_temp %= #6 num
execute if score #2 calcu_temp matches 1.. run scoreboard players add #1 calcu_temp 1
execute store result score #recipe.assembly_table.blueprintPageMax galaxy run scoreboard players get #1 calcu_temp
