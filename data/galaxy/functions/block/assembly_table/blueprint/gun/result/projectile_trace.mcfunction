execute store result score #1 calcu_temp run data get storage galaxy:temp +block.assembly_table.get.parts.gun_barrel.tag.CustomData.galaxy.tag.component.Alteration.gun.projectile.trace 1
scoreboard players set #2 calcu_temp 80
execute store result block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.projectile.trace int 1 run scoreboard players operation #1 calcu_temp < #2 calcu_temp