data modify storage galaxy:temp +GUI.build_piece.fuel_bar_1x1.result set value {id:"minecraft:diamond_hoe",Count:1b,tag:{display:{Name:'{"text":""}'},HideFlags:127,CustomModelData:1131000,CustomData:{galaxy:{Type:"gui",id:"piece.fuel_bar_1x1"}}}}
execute store result storage galaxy:temp +GUI.build_piece.fuel_bar_1x1.result.Slot byte 1 run scoreboard players get #gui.build_piece.fuel_bar_1x1.slot galaxy
execute store result storage galaxy:temp +GUI.build_piece.fuel_bar_1x1.result.tag.CustomModelData int 1 run scoreboard players add #gui.build_piece.fuel_bar_1x1._value galaxy 1131000

data modify block ~ ~ ~ Items append from storage galaxy:temp +GUI.build_piece.fuel_bar_1x1.result

data remove storage galaxy:temp +GUI.build_piece.fuel_bar_1x1.result
