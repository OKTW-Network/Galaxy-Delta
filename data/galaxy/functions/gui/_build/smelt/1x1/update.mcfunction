data modify storage galaxy:temp +GUI._build.smelt.1x1.result set value {id:"minecraft:white_stained_glass_pane",Count:1b,tag:{display:{Name:'{"translate":"gui.blank","italic":false}'},CustomModelData:20500,CustomData:{galaxy:{id:"gui_item"}}}}
execute store result storage galaxy:temp +GUI._build.smelt.1x1.result.Slot byte 1 run scoreboard players get #build.input.slot galaxy.GUI

scoreboard players set #modelData galaxy.GUI 20500
execute store result storage galaxy:temp +GUI._build.smelt.1x1.result.tag.CustomModelData int 1 run scoreboard players operation #modelData galaxy.GUI += #smeltValue galaxy.GUI

data modify block ~ ~ ~ Items append from storage galaxy:temp +GUI._build.smelt.1x1.result

scoreboard players operation @s galaxy.GUI._temp.smeltValue = #smeltValue galaxy.GUI
