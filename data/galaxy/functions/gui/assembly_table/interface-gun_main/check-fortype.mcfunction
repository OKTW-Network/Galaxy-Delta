# execute if data block ~ ~ ~ Items[].tag.CustomData.galaxy.tag.component.Limitation.item if data block ~ ~ ~ Items[].tag.CustomData.galaxy.tag.component.Limitation{item:2b}

execute store result score #1 calcu_temp run data get entity @s HandItems[0].tag.CustomData.galaxy.data.result.tag.CustomData.galaxy.tag.type 1

execute if data block ~ ~ ~ Items[].tag.CustomData.galaxy.tag.component.Limitation.type if score #1 calcu_temp matches 1 if data block ~ ~ ~ Items[].tag.CustomData.galaxy.tag.component.Limitation{type:2b} run tag @s add galaxy._task.assembly_table.dropLimited
execute if data block ~ ~ ~ Items[].tag.CustomData.galaxy.tag.component.Limitation.type if score #1 calcu_temp matches 2 if data block ~ ~ ~ Items[].tag.CustomData.galaxy.tag.component.Limitation{type:1b} run tag @s add galaxy._task.assembly_table.dropLimited
