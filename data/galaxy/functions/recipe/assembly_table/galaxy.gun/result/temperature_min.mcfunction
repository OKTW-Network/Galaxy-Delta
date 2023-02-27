execute store result score #percent.base math run data get entity @s HandItems[0].tag.CustomData.galaxy.data.assembly.parts[{tag:{CustomData:{galaxy:{tag:{component:{Type:"laser_core"}}}}}}].tag.CustomData.galaxy.tag.component.Alteration.gun.temperature_min 1
scoreboard players set #1 calcu_temp 100
execute store result score #2 calcu_temp run data get entity @s HandItems[0].tag.CustomData.galaxy.data.assembly.parts[{tag:{CustomData:{galaxy:{tag:{component:{Type:"gun_casing"}}}}}}].tag.CustomData.galaxy.tag.component.Alteration.gun.temperature_min_modifier 1
scoreboard players operation #1 calcu_temp += #2 calcu_temp
execute store result score #2 calcu_temp run data get entity @s HandItems[0].tag.CustomData.galaxy.data.assembly.parts[{tag:{CustomData:{galaxy:{tag:{component:{Type:"cooling_system"}}}}}}].tag.CustomData.galaxy.tag.component.Alteration.gun.temperature_min_modifier 1
scoreboard players operation #1 calcu_temp += #2 calcu_temp
execute store result score #percent.modifier math run scoreboard players operation #1 calcu_temp > #0 num
function math:percent/main
execute store result block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.temperature_min int 1 run scoreboard players get #percent.result math
