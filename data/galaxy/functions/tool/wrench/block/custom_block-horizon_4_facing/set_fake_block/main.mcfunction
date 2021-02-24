execute if score @s wrenchDoFacing matches 0 run data merge entity @e[tag=ThisWrenchCustomBlockTargetFakeBlock,limit=1] {Pose:{Head:[0f,0f,0f]}}
execute if score @s wrenchDoFacing matches 1 run data merge entity @e[tag=ThisWrenchCustomBlockTargetFakeBlock,limit=1] {Pose:{Head:[0f,90f,0f]}}
execute if score @s wrenchDoFacing matches 2 run data merge entity @e[tag=ThisWrenchCustomBlockTargetFakeBlock,limit=1] {Pose:{Head:[0f,180f,0f]}}
execute if score @s wrenchDoFacing matches 3 run data merge entity @e[tag=ThisWrenchCustomBlockTargetFakeBlock,limit=1] {Pose:{Head:[0f,-90f,0f]}}
