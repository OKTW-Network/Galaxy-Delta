summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,ShowArms:1b,Invisible:1b,DisabledSlots:4144703,Tags:["katana","onGroundItem","init"],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},Rotation:[0f,0f]}
data modify entity @e[tag=onGroundItem,tag=init,limit=1] Rotation[0] set from entity @s Rotation[0]
data modify entity @e[tag=onGroundItem,tag=init,limit=1] HandItems[0] set from entity @s Item
data modify entity @e[tag=onGroundItem,tag=init,limit=1] HandItems[0].tag.onGroundItem set value 1
