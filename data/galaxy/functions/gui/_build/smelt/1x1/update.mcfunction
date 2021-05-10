data modify storage galaxy:temp +GUI._build.smelt.1x1.result set value {id:"minecraft:white_stained_glass_pane",Count:1b,tag:{display:{Name:'{"translate":"gui.blank","italic":false}'},CustomModelData:20500,guiItem:1}}
execute store result storage galaxy:temp +GUI._build.smelt.1x1.result.Slot byte 1 run scoreboard players get #slot buildGUI

scoreboard players set #modelData buildGUI 20500
execute store result storage galaxy:temp +GUI._build.smelt.1x1.result.tag.CustomModelData int 1 run scoreboard players operation #modelData buildGUI += #smeltValue buildGUI

data modify block ~ ~ ~ Items append from storage galaxy:temp +GUI._build.smelt.1x1.result

scoreboard players operation @s guiSmltValue = #smeltValue buildGUI
