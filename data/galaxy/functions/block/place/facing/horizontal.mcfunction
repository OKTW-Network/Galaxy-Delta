execute store result score #1 calcu_temp run data get entity @a[tag=galaxy._tag.ThisPlaceBlock,limit=1] Rotation[0] 1000
scoreboard players add #1 calcu_temp 45000
execute if score #1 calcu_temp matches ..-1 run scoreboard players add #1 calcu_temp 360000
scoreboard players set #2 calcu_temp 90000
scoreboard players operation #1 calcu_temp /= #2 calcu_temp
execute if score #1 calcu_temp matches 4.. run scoreboard players remove #1 calcu_temp 4
scoreboard players operation #block.set_block.block_states.facing galaxy = #1 calcu_temp
