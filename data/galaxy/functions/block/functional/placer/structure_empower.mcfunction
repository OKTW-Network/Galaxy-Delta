summon minecraft:armor_stand ~ ~ ~ {DisabledSlots:4079166,Pose:{Head:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},CustomNameVisible:0b,Small:1b,ShowArms:1b,Invulnerable:1b,Invisible:1b,Silent:1b,Tags:["structure_empower_detector","init"],ArmorItems:[{},{},{},{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:30100,fakeBlock:1}}]}
execute as @e[tag=structure_empower_detector,tag=init] run tag @s remove init
kill @s
