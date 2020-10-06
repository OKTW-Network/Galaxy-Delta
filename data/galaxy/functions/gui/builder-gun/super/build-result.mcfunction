execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:16b}]} run tag @s add setTemplate
execute if entity @s[tag=setTemplate] run function galaxy:gui/builder-gun/super/build-result_template
tag @s[tag=setTemplate] remove setTemplate

execute store result block ~ ~ ~ Items[{Slot:16b}].tag.gun.type int 1 run scoreboard players get @s optType
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.gun.style int 1 run scoreboard players get @s optStyle
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.gun.firing_mode int 1 run scoreboard players get @s optMode
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.gun.aim_zoom int 1 run scoreboard players get @s optAimZoom
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.gun.projectile.damage int 1 run scoreboard players get @s optPjDamage
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.gun.delay int 1 run scoreboard players get @s optDelay
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.gun.projectile.distance int 1 run scoreboard players get @s optPjDistance
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.gun.temperMax int 1 run scoreboard players get @s optTemperMax
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.gun.heat int 1 run scoreboard players get @s optHeat
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.gun.cooling int 1 run scoreboard players get @s optCooling
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.gun.cooling_delay int 1 run scoreboard players get @s optCoolingDly
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.gun.projectile.speed int 1 run scoreboard players get @s optPjSpeed
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.gun.projectile.offset int 1 run scoreboard players get @s optPjOffset
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.gun.projectile.aim_offset int 1 run scoreboard players get @s optPjAimOffset
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.gun.projectile.penetrate int 1 run scoreboard players get @s optPjPenetrate
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.gun.projectile.trace int 1 run scoreboard players get @s optPjTrace
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.gun.projectile.extra int 1 run scoreboard players get @s optPjExtra
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.gun.projectile.color int 1 run scoreboard players get @s optPjColor

data remove storage galaxy:temp itemTag
data modify storage galaxy:temp itemTag set from block ~ ~ ~ Items[{Slot:16b}].tag
function galaxy:gui/builder-gun/build-lore/main
data modify block ~ ~ ~ Items[{Slot:16b}].tag.display.Lore set from storage galaxy:temp lore
data modify block ~ ~ ~ Items[{Slot:16b}].tag.display.Lore prepend value '[{"translate":"tooltip.super_build","color":"dark_gray","italic":false}]'

execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:16b,tag:{gun:{type:1,style:0}}}]} run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData set value 210100
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:16b,tag:{gun:{type:2,style:0}}}]} run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData set value 220100
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:16b,tag:{gun:{type:3,style:0}}}]} run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData set value 230100

execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:16b,tag:{gun:{type:2,style:1}}}]} run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData set value 220200
