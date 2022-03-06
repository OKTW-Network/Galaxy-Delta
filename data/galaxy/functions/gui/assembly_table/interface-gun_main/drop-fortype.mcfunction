data modify storage galaxy:temp +GUI.item set value []

execute store result score #1 calcu_temp run data get entity @s HandItems[0].tag.CustomData.galaxy.data.result.tag.CustomData.galaxy.tag.type

execute if data block ~ ~ ~ Items[{Slot:1b}].tag.CustomData.galaxy.tag.TypeLimited store result score #2 calcu_temp run data get block ~ ~ ~ Items[{Slot:1b}].tag.CustomData.galaxy.tag.TypeLimited
execute if data block ~ ~ ~ Items[{Slot:1b}].tag.CustomData.galaxy.tag.TypeLimited unless score #2 calcu_temp = #1 calcu_temp run data modify storage galaxy:temp +GUI.item append from block ~ ~ ~ Items[{Slot:1b}]

execute if data block ~ ~ ~ Items[{Slot:7b}].tag.CustomData.galaxy.tag.TypeLimited store result score #2 calcu_temp run data get block ~ ~ ~ Items[{Slot:7b}].tag.CustomData.galaxy.tag.TypeLimited
execute if data block ~ ~ ~ Items[{Slot:7b}].tag.CustomData.galaxy.tag.TypeLimited unless score #2 calcu_temp = #1 calcu_temp run data modify storage galaxy:temp +GUI.item append from block ~ ~ ~ Items[{Slot:7b}]

execute if data block ~ ~ ~ Items[{Slot:9b}].tag.CustomData.galaxy.tag.TypeLimited store result score #2 calcu_temp run data get block ~ ~ ~ Items[{Slot:9b}].tag.CustomData.galaxy.tag.TypeLimited
execute if data block ~ ~ ~ Items[{Slot:9b}].tag.CustomData.galaxy.tag.TypeLimited unless score #2 calcu_temp = #1 calcu_temp run data modify storage galaxy:temp +GUI.item append from block ~ ~ ~ Items[{Slot:9b}]

execute if data block ~ ~ ~ Items[{Slot:10b}].tag.CustomData.galaxy.tag.TypeLimited store result score #2 calcu_temp run data get block ~ ~ ~ Items[{Slot:10b}].tag.CustomData.galaxy.tag.TypeLimited
execute if data block ~ ~ ~ Items[{Slot:10b}].tag.CustomData.galaxy.tag.TypeLimited unless score #2 calcu_temp = #1 calcu_temp run data modify storage galaxy:temp +GUI.item append from block ~ ~ ~ Items[{Slot:10b}]

execute if data block ~ ~ ~ Items[{Slot:11b}].tag.CustomData.galaxy.tag.TypeLimited store result score #2 calcu_temp run data get block ~ ~ ~ Items[{Slot:11b}].tag.CustomData.galaxy.tag.TypeLimited
execute if data block ~ ~ ~ Items[{Slot:11b}].tag.CustomData.galaxy.tag.TypeLimited unless score #2 calcu_temp = #1 calcu_temp run data modify storage galaxy:temp +GUI.item append from block ~ ~ ~ Items[{Slot:11b}]

execute if data block ~ ~ ~ Items[{Slot:19b}].tag.CustomData.galaxy.tag.TypeLimited store result score #2 calcu_temp run data get block ~ ~ ~ Items[{Slot:19b}].tag.CustomData.galaxy.tag.TypeLimited
execute if data block ~ ~ ~ Items[{Slot:19b}].tag.CustomData.galaxy.tag.TypeLimited unless score #2 calcu_temp = #1 calcu_temp run data modify storage galaxy:temp +GUI.item append from block ~ ~ ~ Items[{Slot:19b}]

execute if data block ~ ~ ~ Items[{Slot:20b}].tag.CustomData.galaxy.tag.TypeLimited store result score #2 calcu_temp run data get block ~ ~ ~ Items[{Slot:20b}].tag.CustomData.galaxy.tag.TypeLimited
execute if data block ~ ~ ~ Items[{Slot:20b}].tag.CustomData.galaxy.tag.TypeLimited unless score #2 calcu_temp = #1 calcu_temp run data modify storage galaxy:temp +GUI.item append from block ~ ~ ~ Items[{Slot:20b}]

execute if data block ~ ~ ~ Items[{Slot:24b}].tag.CustomData.galaxy.tag.TypeLimited store result score #2 calcu_temp run data get block ~ ~ ~ Items[{Slot:24b}].tag.CustomData.galaxy.tag.TypeLimited
execute if data block ~ ~ ~ Items[{Slot:24b}].tag.CustomData.galaxy.tag.TypeLimited unless score #2 calcu_temp = #1 calcu_temp run data modify storage galaxy:temp +GUI.item append from block ~ ~ ~ Items[{Slot:24b}]

execute if data block ~ ~ ~ Items[{Slot:26b}].tag.CustomData.galaxy.tag.TypeLimited store result score #2 calcu_temp run data get block ~ ~ ~ Items[{Slot:26b}].tag.CustomData.galaxy.tag.TypeLimited
execute if data block ~ ~ ~ Items[{Slot:26b}].tag.CustomData.galaxy.tag.TypeLimited unless score #2 calcu_temp = #1 calcu_temp run data modify storage galaxy:temp +GUI.item append from block ~ ~ ~ Items[{Slot:26b}]

execute if data storage galaxy:temp +GUI.item[0] run function galaxy:gui/delete-slot
execute if data storage galaxy:temp +GUI.item[0] run playsound minecraft:entity.item.pickup block @a ~ ~1 ~ 1 0.6
execute if data storage galaxy:temp +GUI.item[0] run data modify storage cu:item input set from storage galaxy:temp +GUI.item
execute if data storage galaxy:temp +GUI.item[0] run data modify storage cu:item pickupDelay set value 0s
execute if data storage galaxy:temp +GUI.item[0] positioned ~ ~1 ~ run function cu:item/summon
