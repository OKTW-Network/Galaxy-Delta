execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:16b}]} run tag @s add setTemplate
execute if entity @s[tag=setTemplate] run function galaxy:gui/super_builder-gun/build-result_template
tag @s[tag=setTemplate] remove setTemplate

execute store result block ~ ~ ~ Items[{Slot:16b}].tag.type int 1 run scoreboard players get @s optType
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.style int 1 run scoreboard players get @s optStyle
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.firing_mode int 1 run scoreboard players get @s optMode
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.projectile.damage int 1 run scoreboard players get @s optPjDamage
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.delay int 1 run scoreboard players get @s optDelay
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.projectile.distance int 1 run scoreboard players get @s optPjDistance
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.aim_zoom int 1 run scoreboard players get @s optAimZoom
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.temperMax int 1 run scoreboard players get @s optTemperMax
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.heat int 1 run scoreboard players get @s optHeat
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.cooling int 1 run scoreboard players get @s optCooling
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.coolingDelay int 1 run scoreboard players get @s optCoolingDly
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.projectile.speed int 1 run scoreboard players get @s optPjSpeed
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.projectile.offset int 1 run scoreboard players get @s optPjOffset
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.projectile.aim_offset int 1 run scoreboard players get @s optPjAimOffset
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.projectile.penetrate int 1 run scoreboard players get @s optPjPenetrate
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.projectile.trace int 1 run scoreboard players get @s optPjTrace
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.projectile.extra int 1 run scoreboard players get @s optPjExtra
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.projectile.color int 1 run scoreboard players get @s optPjColor

execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:16b,tag:{type:1,style:0}}]} run data modify block ~ ~ ~ Items[{Slot:16b}].tag.display.Name set value '{"translate":"item.galaxy.lasor","italic":false}'
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:16b,tag:{type:1,style:0}}]} run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData set value 210100

# function galaxy:gui/build-tooltip-gun
