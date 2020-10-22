tag @s[nbt=!{Facing:1b}] add placeFailed

execute unless entity @s[tag=placeFailed] run summon minecraft:armor_stand ~ ~ ~ {CustomNameVisible:0b,Invulnerable:1b,Small:1b,Invisible:1b,Silent:1b,ShowArms:1b,DisabledSlots:4079166,Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{CustomModelData:30200,fakeBlock:1}}],Tags:["customEntity","empower_lens","no_overlap","attachment","drop_self","init"],Team:"immobile"}
team join galaxyE-emplens @e[tag=empower_lens,tag=init]

data modify entity @e[tag=empower_lens,tag=init,limit=1] Rotation set from entity @s Rotation
execute as @e[tag=empower_lens,tag=init] at @s run tp ~ ~ ~
tag @e[tag=empower_lens,tag=init] remove init

execute if entity @s[tag=placeFailed] as @a[tag=triggerPlaceEntity] run function galaxy:tool/give/empower_lens

execute unless entity @s[tag=placeFailed] run playsound block.metal.place block @a ~ ~ ~ 1 1.4

kill @s
