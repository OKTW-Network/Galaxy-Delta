execute if score @s galaxy.block.states.facing matches 0 run data merge entity @s {Rotation:[180f,0f]}
execute if score @s galaxy.block.states.facing matches 1 run data merge entity @s {Rotation:[-90f,0f]}
execute if score @s galaxy.block.states.facing matches 2 run data merge entity @s {Rotation:[0f,0f]}
execute if score @s galaxy.block.states.facing matches 3 run data merge entity @s {Rotation:[90f,0f]}

execute if score @s galaxy.block.states.facing matches 0 positioned ~ ~0.5 ~ run data merge entity @e[tag=galaxy.customFakeBlock,tag=galaxy.advanced_blast_furnace,distance=..0.05,sort=nearest,limit=1] {Pose:{Head:[0f,0f,0f]}}
execute if score @s galaxy.block.states.facing matches 1 positioned ~ ~0.5 ~ run data merge entity @e[tag=galaxy.customFakeBlock,tag=galaxy.advanced_blast_furnace,distance=..0.05,sort=nearest,limit=1] {Pose:{Head:[0f,90f,0f]}}
execute if score @s galaxy.block.states.facing matches 2 positioned ~ ~0.5 ~ run data merge entity @e[tag=galaxy.customFakeBlock,tag=galaxy.advanced_blast_furnace,distance=..0.05,sort=nearest,limit=1] {Pose:{Head:[0f,180f,0f]}}
execute if score @s galaxy.block.states.facing matches 3 positioned ~ ~0.5 ~ run data merge entity @e[tag=galaxy.customFakeBlock,tag=galaxy.advanced_blast_furnace,distance=..0.05,sort=nearest,limit=1] {Pose:{Head:[0f,-90f,0f]}}
