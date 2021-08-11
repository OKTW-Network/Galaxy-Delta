scoreboard players set @s wrenchOriAxis -1
execute at @s if predicate minecraft:block_states/axis-x run scoreboard players set @s wrenchOriAxis 0
execute at @s if predicate minecraft:block_states/axis-y run scoreboard players set @s wrenchOriAxis 1
execute at @s if predicate minecraft:block_states/axis-z run scoreboard players set @s wrenchOriAxis 2

scoreboard players set @s wrenchOriFacing -1
execute at @s if predicate minecraft:block_states/facing-south run scoreboard players set @s wrenchOriFacing 0
execute at @s if predicate minecraft:block_states/facing-west run scoreboard players set @s wrenchOriFacing 1
execute at @s if predicate minecraft:block_states/facing-north run scoreboard players set @s wrenchOriFacing 2
execute at @s if predicate minecraft:block_states/facing-east run scoreboard players set @s wrenchOriFacing 3
execute at @s if predicate minecraft:block_states/facing-down run scoreboard players set @s wrenchOriFacing 4
execute at @s if predicate minecraft:block_states/facing-up run scoreboard players set @s wrenchOriFacing 5

execute at @s if score @e[tag=galaxy.customBlock,distance=..0.05,limit=1] statesFacing matches -2147483648..2147483647 run scoreboard players operation @s wrenchOriFacing = @e[tag=galaxy.customBlock,distance=..0.05,limit=1] statesFacing

scoreboard players set @s wrenchOriAttach -1
execute at @s if predicate minecraft:block_states/attachment-floor run scoreboard players set @s wrenchOriAttach 0
execute at @s if predicate minecraft:block_states/attachment-wall run scoreboard players set @s wrenchOriAttach 1
execute at @s if predicate minecraft:block_states/attachment-ceiling run scoreboard players set @s wrenchOriAttach 2

scoreboard players set @s wrenchOriFace -1
execute at @s if predicate minecraft:block_states/face-floor run scoreboard players set @s wrenchOriFace 0
execute at @s if predicate minecraft:block_states/face-wall run scoreboard players set @s wrenchOriFace 1
execute at @s if predicate minecraft:block_states/face-ceiling run scoreboard players set @s wrenchOriFace 2

scoreboard players set @s wrenchOriHalf -1
execute at @s if predicate minecraft:block_states/half-bottom run scoreboard players set @s wrenchOriHalf 0
execute at @s if predicate minecraft:block_states/half-top run scoreboard players set @s wrenchOriHalf 1

scoreboard players set @s wrenchOriType -1
execute at @s if predicate minecraft:block_states/type-bottom run scoreboard players set @s wrenchOriType 0
execute at @s if predicate minecraft:block_states/type-top run scoreboard players set @s wrenchOriType 1
execute at @s if predicate minecraft:block_states/type-double run scoreboard players set @s wrenchOriType 2

tag @s[tag=storeOriginalStates] remove storeOriginalStates
