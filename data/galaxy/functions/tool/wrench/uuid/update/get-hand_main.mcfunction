execute store result score @s galaxy.tool.wrench.UUID.mainHand0 run data get entity @s SelectedItem.tag.CustomData.galaxy.UUID[0]
execute store result score @s galaxy.tool.wrench.UUID.mainHand1 run data get entity @s SelectedItem.tag.CustomData.galaxy.UUID[1]
execute store result score @s galaxy.tool.wrench.UUID.mainHand2 run data get entity @s SelectedItem.tag.CustomData.galaxy.UUID[2]
execute store result score @s galaxy.tool.wrench.UUID.mainHand3 run data get entity @s SelectedItem.tag.CustomData.galaxy.UUID[3]

tag @s add galaxy._tag.holdWrenchMainHand
