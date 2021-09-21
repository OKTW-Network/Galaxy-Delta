execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:16b}]} run tag @s add setTemplate
execute if entity @s[tag=setTemplate] run function galaxy:gui/assembly_table/super/interface-main/build-result_template
tag @s[tag=setTemplate] remove setTemplate

data remove block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.cosmetic
data remove block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.projectile.color
data remove block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.special
data remove block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.accelerate
data remove block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.projectile.penetrate
data remove block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.projectile.bounce
data remove block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.projectile.trace

execute store result block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.type int 1 run scoreboard players get @s optType
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.projectile.damage int 1 run scoreboard players get @s optPjDamage
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.delay int 1 run scoreboard players get @s optDelay
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.projectile.distance int 1 run scoreboard players get @s optPjDistance
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.heat int 1 run scoreboard players get @s optHeat
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.temperature_min int 1 run scoreboard players get @s optTemperMin
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.temperature_max int 1 run scoreboard players get @s optTemperMax
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.cooling int 1 run scoreboard players get @s optCooling
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.cooling_delay int 1 run scoreboard players get @s optCoolingDly
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.projectile.speed int 1 run scoreboard players get @s optPjSpeed
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.projectile.offset int 1 run scoreboard players get @s optPjOffset
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.projectile.aim_offset int 1 run scoreboard players get @s optPjAimOffset
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.aim_zoom int 1 run scoreboard players get @s optAimZoom
execute unless score @s optAccelerate matches 0 store result block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.accelerate int 1 run scoreboard players get @s optAccelerate
execute unless score @s optPjPenetrate matches 0 store result block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.projectile.penetrate int 1 run scoreboard players get @s optPjPenetrate
execute unless score @s optPjBounce matches 0 store result block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.projectile.bounce int 1 run scoreboard players get @s optPjBounce
execute unless score @s optPjTrace matches 0 store result block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.projectile.trace int 1 run scoreboard players get @s optPjTrace
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.projectile.extra int 1 run scoreboard players get @s optPjExtra

function galaxy:recipe/super_assembler/convert/main
execute if data storage galaxy:temp +recipe.super_assembler.convert.cosmetic run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.cosmetic set from storage galaxy:temp +recipe.super_assembler.convert.cosmetic
execute if data storage galaxy:temp +recipe.super_assembler.convert.projectile_color run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.projectile.color set from storage galaxy:temp +recipe.super_assembler.convert.projectile_color
execute if data storage galaxy:temp +recipe.super_assembler.convert.special run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.special set from storage galaxy:temp +recipe.super_assembler.convert.special

execute if score @s optType matches 1 run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData set value 210100
execute if score @s optType matches 2 run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData set value 220100
execute if score @s optType matches 3 run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData set value 230100
execute unless score @s optCosmetic matches 0 run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData set from block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.cosmetic.Model

data modify storage galaxy:temp +gui.assembly_table.build-lore.itemCustomDataTag set from block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag
function galaxy:gui/assembly_table/interface-gun_main/build-lore/main
data modify block ~ ~ ~ Items[{Slot:16b}].tag.display.Lore set from storage galaxy:temp +gui.assembly_table.build-lore.result
data modify block ~ ~ ~ Items[{Slot:16b}].tag.display.Lore prepend value '[{"translate":"tooltip.super_build","color":"dark_gray","italic":false}]'

execute if score @s optType matches 1 run data modify block ~ ~ ~ Items[{Slot:16b}].tag.display.Name set value '{"translate":"item.galaxy.gun.pistol","italic":false}'
execute if score @s optType matches 2 run data modify block ~ ~ ~ Items[{Slot:16b}].tag.display.Name set value '{"translate":"item.galaxy.gun.sniper","italic":false}'
execute if score @s optType matches 3 run data modify block ~ ~ ~ Items[{Slot:16b}].tag.display.Name set value '{"translate":"item.galaxy.gun.shotgun","italic":false}'
