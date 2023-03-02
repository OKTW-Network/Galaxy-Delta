data modify storage cu:value digit.rotation_vector.input set from entity @a[tag=galaxy._tag.ThisPlaceBlock,limit=1] Rotation
function cu:value/digit/rotation_vector
execute store result score #1 calcu_temp store result score #2 calcu_temp run data get storage cu:value digit.rotation_vector.result[0] 1000
execute store result score #3 calcu_temp store result score #4 calcu_temp run data get storage cu:value digit.rotation_vector.result[2] 1000
execute if score #1 calcu_temp matches ..-1 run scoreboard players operation #1 calcu_temp *= #-1 num
execute if score #3 calcu_temp matches ..-1 run scoreboard players operation #3 calcu_temp *= #-1 num
execute if score #1 calcu_temp <= #3 calcu_temp if score #4 calcu_temp matches ..-1 run scoreboard players set #block.set_block.block_states.facing galaxy 2
execute if score #1 calcu_temp >= #3 calcu_temp if score #2 calcu_temp matches 1.. run scoreboard players set #block.set_block.block_states.facing galaxy 3
execute if score #1 calcu_temp <= #3 calcu_temp if score #4 calcu_temp matches 1.. run scoreboard players set #block.set_block.block_states.facing galaxy 0
execute if score #1 calcu_temp >= #3 calcu_temp if score #2 calcu_temp matches ..-1 run scoreboard players set #block.set_block.block_states.facing galaxy 1
