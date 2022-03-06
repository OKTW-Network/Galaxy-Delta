data modify storage galaxy:temp +GUI._build.process.1x1.result set value {id:"minecraft:white_stained_glass_pane",Count:1b,tag:{display:{Name:'{"translate":"gui.process.idle","color":"gray","italic":false}'},CustomModelData:100,CustomData:{galaxy:{id:"gui_item"}}}}
execute store result storage galaxy:temp +GUI._build.process.1x1.result.Slot byte 1 run scoreboard players get #build.input.slot galaxy.GUI

execute if score #build.input.workStatus galaxy.GUI matches 1 run data modify storage galaxy:temp +GUI._build.process.1x1.result.tag.display.Name set value '{"translate":"gui.process.working","color":"green","italic":false}'
execute if score #build.input.workStatus galaxy.GUI matches -1 run data modify storage galaxy:temp +GUI._build.process.1x1.result.tag.display.Name set value '{"translate":"gui.process.invalid","color":"red","italic":false}'

data modify block ~ ~ ~ Items append from storage galaxy:temp +GUI._build.process.1x1.result

scoreboard players operation @s galaxy.GUI.temp.workStatus = #build.input.workStatus galaxy.GUI
