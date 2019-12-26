execute if entity @s[tag=type-1] run summon minecraft:armor_stand ~ ~0.25 ~ {DisabledSlots:4079166,Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},CustomNameVisible:0b,Small:1b,ShowArms:1b,Invulnerable:1b,Invisible:1b,Silent:1b,Tags:["katana_showcase","type-1","init"],ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{CustomModelData:20200,fakeBlock:1,EntityTag:{CustomNameVisible:0b,NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["katana_showcase","type-1"]}}}]}
execute if entity @s[tag=type-2] run summon minecraft:armor_stand ~ ~0.25 ~ {DisabledSlots:4079166,Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},CustomNameVisible:0b,Small:1b,ShowArms:1b,Invulnerable:1b,Invisible:1b,Silent:1b,Tags:["katana_showcase","type-2","init"],ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{CustomModelData:20201,fakeBlock:1,EntityTag:{CustomNameVisible:0b,NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["katana_showcase","type-2"]}}}]}

execute store result entity @e[tag=katana_showcase,tag=init,limit=1] Rotation[0] float 1 run data get entity @s Rotation[0]
execute as @e[tag=katana_showcase,tag=init] run tag @s remove init
kill @s
