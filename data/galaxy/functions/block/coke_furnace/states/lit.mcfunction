scoreboard players operation #temp%block.state.lit galaxy.block = @s galaxy.block.states.lit
scoreboard players set @s galaxy.block.states.lit 0
execute if score @s galaxy.block.work.status.processing matches 1.. run scoreboard players set @s galaxy.block.states.lit 1
execute unless score @s galaxy.block.states.lit = #temp%block.state.lit galaxy.block run tag @s add setStateLit
execute if entity @s[tag=setStateLit] if score @s galaxy.block.states.lit matches 0 positioned ~ ~1 ~ run data merge entity @e[tag=galaxy.customFakeBlock,tag=galaxy.coke_furnace,distance=..0.25,sort=nearest,limit=1] {HasVisualFire:false,ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{CustomModelData:10200}}]}
execute if entity @s[tag=setStateLit] if score @s galaxy.block.states.lit matches 1 positioned ~ ~1 ~ run data merge entity @e[tag=galaxy.customFakeBlock,tag=galaxy.coke_furnace,distance=..0.25,sort=nearest,limit=1] {HasVisualFire:true,ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{CustomModelData:10201}}]}
tag @s[tag=setStateLit] remove setStateLit
