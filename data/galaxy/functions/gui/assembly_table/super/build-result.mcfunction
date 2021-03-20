execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:16b}]} run tag @s add setTemplate
execute if entity @s[tag=setTemplate] run function galaxy:gui/assembly_table/super/build-result_template
tag @s[tag=setTemplate] remove setTemplate

execute store result block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.type int 1 run scoreboard players get @s optType
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.cosmetic int 1 run scoreboard players get @s optCosmetic
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.projectile.color int 1 run scoreboard players get @s optPjColor
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.addon int 1 run scoreboard players get @s optAddon
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.projectile.damage int 1 run scoreboard players get @s optPjDamage
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.delay int 1 run scoreboard players get @s optDelay
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.projectile.distance int 1 run scoreboard players get @s optPjDistance
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.heat int 1 run scoreboard players get @s optHeat
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.temperMax int 1 run scoreboard players get @s optTemperMax
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.cooling int 1 run scoreboard players get @s optCooling
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.cooling_delay int 1 run scoreboard players get @s optCoolingDly
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.projectile.speed int 1 run scoreboard players get @s optPjSpeed
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.projectile.offset int 1 run scoreboard players get @s optPjOffset
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.projectile.aim_offset int 1 run scoreboard players get @s optPjAimOffset
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.aim_zoom int 1 run scoreboard players get @s optAimZoom
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.accelerate int 1 run scoreboard players get @s optAccelerate
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.projectile.penetrate int 1 run scoreboard players get @s optPjPenetrate
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.projectile.trace int 1 run scoreboard players get @s optPjTrace
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag.projectile.extra int 1 run scoreboard players get @s optPjExtra

data remove storage galaxy:temp itemTag
data modify storage galaxy:temp itemTag set from block ~ ~ ~ Items[{Slot:16b}].tag
function galaxy:gui/assembly_table/build-lore/main
data modify block ~ ~ ~ Items[{Slot:16b}].tag.display.Lore set from storage galaxy:temp lore
data modify block ~ ~ ~ Items[{Slot:16b}].tag.display.Lore prepend value '[{"translate":"tooltip.super_build","color":"dark_gray","italic":false}]'

execute if data block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag{type:1,cosmetic:0} run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData set value 210100
execute if data block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag{type:2,cosmetic:0} run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData set value 220100
execute if data block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag{type:3,cosmetic:0} run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData set value 230100

execute if data block ~ ~ ~ Items[{Slot:16b}].tag.CustomData.galaxy.tag{type:2,cosmetic:1} run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData set value 220200
