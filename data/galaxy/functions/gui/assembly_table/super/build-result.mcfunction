execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:16b}]} run tag @s add setTemplate
execute if entity @s[tag=setTemplate] run function galaxy:gui/assembly_table/super/build-result_template
tag @s[tag=setTemplate] remove setTemplate

execute store result block ~ ~ ~ Items[{Slot:16b}].tag.gun.type int 1 run scoreboard players get @s optType
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.gun.cosmetic int 1 run scoreboard players get @s optCosmetic
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.gun.projectile.color int 1 run scoreboard players get @s optPjColor
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.gun.addon int 1 run scoreboard players get @s optAddon
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.gun.projectile.damage int 1 run scoreboard players get @s optPjDamage
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.gun.delay int 1 run scoreboard players get @s optDelay
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.gun.projectile.distance int 1 run scoreboard players get @s optPjDistance
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.gun.heat int 1 run scoreboard players get @s optHeat
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.gun.temperMax int 1 run scoreboard players get @s optTemperMax
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.gun.cooling int 1 run scoreboard players get @s optCooling
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.gun.cooling_delay int 1 run scoreboard players get @s optCoolingDly
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.gun.projectile.speed int 1 run scoreboard players get @s optPjSpeed
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.gun.projectile.offset int 1 run scoreboard players get @s optPjOffset
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.gun.projectile.aim_offset int 1 run scoreboard players get @s optPjAimOffset
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.gun.aim_zoom int 1 run scoreboard players get @s optAimZoom
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.gun.accelerate int 1 run scoreboard players get @s optAccelerate
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.gun.projectile.penetrate int 1 run scoreboard players get @s optPjPenetrate
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.gun.projectile.trace int 1 run scoreboard players get @s optPjTrace
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.gun.projectile.extra int 1 run scoreboard players get @s optPjExtra

data remove storage galaxy:temp itemTag
data modify storage galaxy:temp itemTag set from block ~ ~ ~ Items[{Slot:16b}].tag
function galaxy:gui/assembly_table/build-lore/main
data modify block ~ ~ ~ Items[{Slot:16b}].tag.display.Lore set from storage galaxy:temp lore
data modify block ~ ~ ~ Items[{Slot:16b}].tag.display.Lore prepend value '[{"translate":"tooltip.super_build","color":"dark_gray","italic":false}]'

execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:16b,tag:{gun:{type:1,cosmetic:0}}}]} run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData set value 210100
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:16b,tag:{gun:{type:2,cosmetic:0}}}]} run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData set value 220100
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:16b,tag:{gun:{type:3,cosmetic:0}}}]} run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData set value 230100

execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:16b,tag:{gun:{type:2,cosmetic:1}}}]} run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData set value 220200
