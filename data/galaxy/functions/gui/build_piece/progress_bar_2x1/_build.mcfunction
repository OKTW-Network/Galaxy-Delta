data modify storage galaxy:temp +GUI.build_piece.progress_bar_2x1.result set value {id:"minecraft:white_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":""}'},CustomModelData:201000,CustomData:{galaxy:{Type:"gui",id:"piece.progress_bar_2x1"}}}}
execute store result storage galaxy:temp +GUI.build_piece.progress_bar_2x1.result.Slot byte 1 run scoreboard players get #gui.build_piece.progress_bar_2x1.slot galaxy
execute store result storage galaxy:temp +GUI.build_piece.progress_bar_2x1.result.tag.CustomModelData int 1 run scoreboard players add #gui.build_piece.progress_bar_2x1._value galaxy 201000

data modify block ~ ~ ~ Items append from storage galaxy:temp +GUI.build_piece.progress_bar_2x1.result

data remove storage galaxy:temp +GUI.build_piece.progress_bar_2x1.result
