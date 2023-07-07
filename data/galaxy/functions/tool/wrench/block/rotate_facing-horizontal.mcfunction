execute if predicate minecraft:block_states/facing-north store result score #3 temp run scoreboard players set #1 temp 0
execute if predicate minecraft:block_states/facing-east store result score #3 temp run scoreboard players set #1 temp 1
execute if predicate minecraft:block_states/facing-south store result score #3 temp run scoreboard players set #1 temp 2
execute if predicate minecraft:block_states/facing-west store result score #3 temp run scoreboard players set #1 temp 3

scoreboard players add #3 temp 1
execute if score #3 temp matches 4.. run scoreboard players remove #3 temp 4

scoreboard players add @e[tag=galaxy._tag.ThisWrenchAnchor] galaxy.tool.wrench.rotateSuccess 1

scoreboard players operation #tool.wrench.set_block.state.facing galaxy = #3 temp
