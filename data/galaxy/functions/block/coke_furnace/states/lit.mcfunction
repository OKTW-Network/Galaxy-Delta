execute if score @s galaxy.block.states.lit matches 0 positioned ~ ~0.5 ~ run data merge entity @e[tag=galaxy.block_mask.coke_furnace,distance=..0.05,sort=nearest,limit=1] {HasVisualFire:false,ArmorItems:[{},{},{},{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:102000}}]}
execute if score @s galaxy.block.states.lit matches 1 positioned ~ ~0.5 ~ run data merge entity @e[tag=galaxy.block_mask.coke_furnace,distance=..0.05,sort=nearest,limit=1] {HasVisualFire:true,ArmorItems:[{},{},{},{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:102001}}]}
