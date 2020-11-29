execute store result score @s wrenchBlkX run data get entity @e[tag=ThisWrenchTarget,limit=1] Pos[0]
execute store result score @s wrenchBlkY run data get entity @e[tag=ThisWrenchTarget,limit=1] Pos[1]
execute store result score @s wrenchBlkZ run data get entity @e[tag=ThisWrenchTarget,limit=1] Pos[2]

scoreboard players set @s wrenchBlkAxis -1
execute at @e[tag=ThisWrenchTarget] if predicate minecraft:block_states/axis-x run scoreboard players set @s wrenchBlkAxis 0
execute at @e[tag=ThisWrenchTarget] if predicate minecraft:block_states/axis-y run scoreboard players set @s wrenchBlkAxis 1
execute at @e[tag=ThisWrenchTarget] if predicate minecraft:block_states/axis-z run scoreboard players set @s wrenchBlkAxis 2

scoreboard players set @s wrenchBlkFacing -1
execute at @e[tag=ThisWrenchTarget] if predicate minecraft:block_states/facing-south run scoreboard players set @s wrenchBlkFacing 0
execute at @e[tag=ThisWrenchTarget] if predicate minecraft:block_states/facing-west run scoreboard players set @s wrenchBlkFacing 1
execute at @e[tag=ThisWrenchTarget] if predicate minecraft:block_states/facing-north run scoreboard players set @s wrenchBlkFacing 2
execute at @e[tag=ThisWrenchTarget] if predicate minecraft:block_states/facing-east run scoreboard players set @s wrenchBlkFacing 3
execute at @e[tag=ThisWrenchTarget] if predicate minecraft:block_states/facing-down run scoreboard players set @s wrenchBlkFacing 4
execute at @e[tag=ThisWrenchTarget] if predicate minecraft:block_states/facing-up run scoreboard players set @s wrenchBlkFacing 5

scoreboard players set @s wrenchBlkAttach -1
execute at @e[tag=ThisWrenchTarget] if predicate minecraft:block_states/attachment-floor run scoreboard players set @s wrenchBlkAttach 0
execute at @e[tag=ThisWrenchTarget] if predicate minecraft:block_states/attachment-wall run scoreboard players set @s wrenchBlkAttach 1
execute at @e[tag=ThisWrenchTarget] if predicate minecraft:block_states/attachment-ceiling run scoreboard players set @s wrenchBlkAttach 2

scoreboard players set @s wrenchBlkFace -1
execute at @e[tag=ThisWrenchTarget] if predicate minecraft:block_states/face-floor run scoreboard players set @s wrenchBlkFace 0
execute at @e[tag=ThisWrenchTarget] if predicate minecraft:block_states/face-wall run scoreboard players set @s wrenchBlkFace 1
execute at @e[tag=ThisWrenchTarget] if predicate minecraft:block_states/face-ceiling run scoreboard players set @s wrenchBlkFace 2

scoreboard players set @s wrenchBlkHalf -1
execute at @e[tag=ThisWrenchTarget] if predicate minecraft:block_states/half-bottom run scoreboard players set @s wrenchBlkHalf 0
execute at @e[tag=ThisWrenchTarget] if predicate minecraft:block_states/half-top run scoreboard players set @s wrenchBlkHalf 1

scoreboard players set @s wrenchBlkType -1
execute at @e[tag=ThisWrenchTarget] if predicate minecraft:block_states/type-bottom run scoreboard players set @s wrenchBlkType 0
execute at @e[tag=ThisWrenchTarget] if predicate minecraft:block_states/type-top run scoreboard players set @s wrenchBlkType 1
execute at @e[tag=ThisWrenchTarget] if predicate minecraft:block_states/type-double run scoreboard players set @s wrenchBlkType 2
