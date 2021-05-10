data modify storage galaxy:temp +GUI._build.progress.1x2.result set value {id:"minecraft:white_stained_glass_pane",Count:1b,tag:{display:{Name:'{"translate":"gui.blank","italic":false}'},CustomModelData:20400,guiItem:1}}
execute store result storage galaxy:temp +GUI._build.progress.1x2.result.Slot byte 1 run scoreboard players get #slot buildGUI

scoreboard players set #modelData buildGUI 20400
execute store result storage galaxy:temp +GUI._build.progress.1x2.result.tag.CustomModelData int 1 run scoreboard players operation #modelData buildGUI += #progressValue buildGUI
execute if score #progressValue buildGUI matches -1 run data modify storage galaxy:temp +GUI._build.progress.1x2.result.tag.CustomModelData set value 20423

data modify block ~ ~ ~ Items append from storage galaxy:temp +GUI._build.progress.1x2.result

scoreboard players operation @s guiProgValue = #progressValue buildGUI
