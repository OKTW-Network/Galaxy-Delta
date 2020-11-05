execute store result score #1 calcu_temp run data get entity @s HandItems[0].tag.GUI.result.tag.gun.type

execute if data block ~ ~ ~ Items[{Slot:1b}].tag.component.forType store result score #2 calcu_temp run data get block ~ ~ ~ Items[{Slot:1b}].tag.component.forType
execute if data block ~ ~ ~ Items[{Slot:1b}].tag.component.forType unless score #2 calcu_temp = #1 calcu_temp run data modify storage galaxy:gui drop append from block ~ ~ ~ Items[{Slot:1b}]

execute if data block ~ ~ ~ Items[{Slot:7b}].tag.component.forType store result score #2 calcu_temp run data get block ~ ~ ~ Items[{Slot:7b}].tag.component.forType
execute if data block ~ ~ ~ Items[{Slot:7b}].tag.component.forType unless score #2 calcu_temp = #1 calcu_temp run data modify storage galaxy:gui drop append from block ~ ~ ~ Items[{Slot:7b}]

execute if data block ~ ~ ~ Items[{Slot:9b}].tag.component.forType store result score #2 calcu_temp run data get block ~ ~ ~ Items[{Slot:9b}].tag.component.forType
execute if data block ~ ~ ~ Items[{Slot:9b}].tag.component.forType unless score #2 calcu_temp = #1 calcu_temp run data modify storage galaxy:gui drop append from block ~ ~ ~ Items[{Slot:9b}]

execute if data block ~ ~ ~ Items[{Slot:10b}].tag.component.forType store result score #2 calcu_temp run data get block ~ ~ ~ Items[{Slot:10b}].tag.component.forType
execute if data block ~ ~ ~ Items[{Slot:10b}].tag.component.forType unless score #2 calcu_temp = #1 calcu_temp run data modify storage galaxy:gui drop append from block ~ ~ ~ Items[{Slot:10b}]

execute if data block ~ ~ ~ Items[{Slot:11b}].tag.component.forType store result score #2 calcu_temp run data get block ~ ~ ~ Items[{Slot:11b}].tag.component.forType
execute if data block ~ ~ ~ Items[{Slot:11b}].tag.component.forType unless score #2 calcu_temp = #1 calcu_temp run data modify storage galaxy:gui drop append from block ~ ~ ~ Items[{Slot:11b}]

execute if data block ~ ~ ~ Items[{Slot:19b}].tag.component.forType store result score #2 calcu_temp run data get block ~ ~ ~ Items[{Slot:19b}].tag.component.forType
execute if data block ~ ~ ~ Items[{Slot:19b}].tag.component.forType unless score #2 calcu_temp = #1 calcu_temp run data modify storage galaxy:gui drop append from block ~ ~ ~ Items[{Slot:19b}]

execute if data block ~ ~ ~ Items[{Slot:20b}].tag.component.forType store result score #2 calcu_temp run data get block ~ ~ ~ Items[{Slot:20b}].tag.component.forType
execute if data block ~ ~ ~ Items[{Slot:20b}].tag.component.forType unless score #2 calcu_temp = #1 calcu_temp run data modify storage galaxy:gui drop append from block ~ ~ ~ Items[{Slot:20b}]

execute if data block ~ ~ ~ Items[{Slot:24b}].tag.component.forType store result score #2 calcu_temp run data get block ~ ~ ~ Items[{Slot:24b}].tag.component.forType
execute if data block ~ ~ ~ Items[{Slot:24b}].tag.component.forType unless score #2 calcu_temp = #1 calcu_temp run data modify storage galaxy:gui drop append from block ~ ~ ~ Items[{Slot:24b}]

execute if data block ~ ~ ~ Items[{Slot:26b}].tag.component.forType store result score #2 calcu_temp run data get block ~ ~ ~ Items[{Slot:26b}].tag.component.forType
execute if data block ~ ~ ~ Items[{Slot:26b}].tag.component.forType unless score #2 calcu_temp = #1 calcu_temp run data modify storage galaxy:gui drop append from block ~ ~ ~ Items[{Slot:26b}]

execute if data storage galaxy:gui drop[0] run function galaxy:gui/delete-drop
execute if data storage galaxy:gui drop[0] positioned ~ ~1 ~ run function galaxy:gui/drop_item
