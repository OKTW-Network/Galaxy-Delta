execute store result score #percent.base math run data get entity @s HandItems[0].tag.CustomData.galaxy.data.assembly.parts[{tag:{CustomData:{galaxy:{tag:{component:{Type:"laser_core"}}}}}}].tag.CustomData.galaxy.tag.component.Alteration.gun.projectile.damage 1
scoreboard players set #1 calcu_temp 100
execute store result score #2 calcu_temp run data get entity @s HandItems[0].tag.CustomData.galaxy.data.assembly.parts[{tag:{CustomData:{galaxy:{tag:{component:{Type:"gun_barrel"}}}}}}].tag.CustomData.galaxy.tag.component.Alteration.gun.projectile.damage_modifier 1
scoreboard players operation #1 calcu_temp += #2 calcu_temp
execute store result score #2 calcu_temp run data get entity @s HandItems[0].tag.CustomData.galaxy.data.assembly.parts[{tag:{CustomData:{galaxy:{tag:{component:{Type:"gun_casing"}}}}}}].tag.CustomData.galaxy.tag.component.Alteration.gun.projectile.damage_modifier 1
scoreboard players operation #1 calcu_temp += #2 calcu_temp
execute store result score #percent.modifier math run scoreboard players operation #1 calcu_temp > #0 num
function math:percent/main
execute store result block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.projectile.damage int 1 run scoreboard players operation #percent.result math > #1 num