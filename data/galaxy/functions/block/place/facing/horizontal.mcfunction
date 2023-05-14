execute store result score #1 temp run data get entity @a[tag=galaxy._tag.ThisPlaceBlock,limit=1] Rotation[0] 1000
scoreboard players add #1 temp 45000
execute if score #1 temp matches ..-1 run scoreboard players add #1 temp 360000
scoreboard players set #2 temp 90000
scoreboard players operation #1 temp /= #2 temp
execute if score #1 temp matches 4.. run scoreboard players remove #1 temp 4
scoreboard players operation #block.set_block.block_states.facing galaxy = #1 temp
