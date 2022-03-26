execute store result score @s galaxy.tool.wrench.UUID.offHand0 run data get entity @s Inventory[{Slot:-106b}].tag.CustomData.galaxy.UUID[0]
execute store result score @s galaxy.tool.wrench.UUID.offHand1 run data get entity @s Inventory[{Slot:-106b}].tag.CustomData.galaxy.UUID[1]
execute store result score @s galaxy.tool.wrench.UUID.offHand2 run data get entity @s Inventory[{Slot:-106b}].tag.CustomData.galaxy.UUID[2]
execute store result score @s galaxy.tool.wrench.UUID.offHand3 run data get entity @s Inventory[{Slot:-106b}].tag.CustomData.galaxy.UUID[3]

tag @s add galaxy._tag.holdWrenchOffHand
