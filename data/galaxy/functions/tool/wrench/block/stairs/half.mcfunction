execute if predicate minecraft:block_states/half-bottom store result score #2 temp run scoreboard players set #1 temp 0
execute if predicate minecraft:block_states/half-top store result score #2 temp run scoreboard players set #1 temp 1

scoreboard players operation #3 temp = @e[tag=galaxy._tag.ThisWrenchAnchor] galaxy.tool.wrench.rotateSuccess
scoreboard players add #3 temp 1
scoreboard players operation #3 temp %= #4 num

execute if score #3 temp matches 0 run scoreboard players add #2 temp 1
execute if score #2 temp matches 2.. run scoreboard players set #2 temp 0

scoreboard players operation #tool.wrench.set_block.state.half galaxy = #2 temp
