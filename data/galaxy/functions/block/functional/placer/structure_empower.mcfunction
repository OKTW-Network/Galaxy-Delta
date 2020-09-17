tag @s[nbt=!{Facing:1b}] add placeFailed

execute unless entity @s[tag=placeFailed] run summon minecraft:armor_stand ~ ~ ~ {CustomNameVisible:0b,Invulnerable:1b,Small:1b,Invisible:1b,Silent:1b,ShowArms:1b,DisabledSlots:4079166,Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{CustomModelData:30100,fakeBlock:1}}],Tags:["structure_empower","no_overlap","attachment","drop_self",fake_block,"init"]}

data modify entity @e[tag=structure_empower,tag=init,limit=1] Rotation set from entity @s Rotation
execute as @e[tag=structure_empower,tag=init] at @s run tp ~ ~ ~
tag @e[tag=structure_empower,tag=init] remove init

execute if entity @s[tag=placeFailed] as @a[tag=triggerPlace] run function galaxy:tool/give/structure_empower

execute unless entity @s[tag=placeFailed] run playsound block.metal.place block @a ~ ~ ~ 1 1.2

kill @s
