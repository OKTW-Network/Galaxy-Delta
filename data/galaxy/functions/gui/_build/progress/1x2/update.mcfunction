data modify storage galaxy:temp +GUI._build.progress.1x2.result set value {id:"minecraft:white_stained_glass_pane",Count:1b,tag:{display:{Name:'{"translate":"gui.blank","italic":false}'},CustomModelData:20400,CustomData:{galaxy:{id:"gui_item"}}}}
execute store result storage galaxy:temp +GUI._build.progress.1x2.result.Slot byte 1 run scoreboard players get #build.input.slot galaxy.GUI

scoreboard players set #modelData galaxy.GUI 20400
execute store result storage galaxy:temp +GUI._build.progress.1x2.result.tag.CustomModelData int 1 run scoreboard players operation #modelData galaxy.GUI += #progressValue galaxy.GUI
execute if score #progressValue galaxy.GUI matches -1 run data modify storage galaxy:temp +GUI._build.progress.1x2.result.tag.CustomModelData set value 20423

data modify block ~ ~ ~ Items append from storage galaxy:temp +GUI._build.progress.1x2.result

scoreboard players operation @s galaxy.GUI.temp.progressValue = #progressValue galaxy.GUI
