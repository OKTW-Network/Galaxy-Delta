function galaxy:block/coke_furnace/states/lit/check
execute if entity @s[tag=setStateLit] if score @s statesLit matches 0 positioned ~ ~1 ~ run tag @e[tag=customFakeBlock,tag=galaxy.coke_furnace,distance=..0.25,sort=nearest,limit=1] remove illuminate
execute if entity @s[tag=setStateLit] if score @s statesLit matches 0 positioned ~ ~1 ~ run data merge entity @e[tag=customFakeBlock,tag=galaxy.coke_furnace,distance=..0.25,sort=nearest,limit=1] {Fire:-1s,ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{CustomModelData:10200}}]}
execute if entity @s[tag=setStateLit] if score @s statesLit matches 1 positioned ~ ~1 ~ run tag @e[tag=customFakeBlock,tag=galaxy.coke_furnace,distance=..0.25,sort=nearest,limit=1] add illuminate
execute if entity @s[tag=setStateLit] if score @s statesLit matches 1 positioned ~ ~1 ~ run data merge entity @e[tag=customFakeBlock,tag=galaxy.coke_furnace,distance=..0.25,sort=nearest,limit=1] {Fire:32767s,ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{CustomModelData:10201}}]}
tag @s[tag=setStateLit] remove setStateLit
