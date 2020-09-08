summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,ShowArms:1b,Invisible:1b,DisabledSlots:4144703,Tags:["saber","onGroundItem","init"],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},Rotation:[0f,0f]}
execute if entity @s[nbt={Item:{tag:{status:1}}}] at @s if score #energy_saber_act_turn_sound Config matches 1 run playsound galaxy:energy_saber.turn_off player @a[distance=..32] ~ ~ ~ 1 1 0.2
data modify entity @e[tag=onGroundItem,tag=init,limit=1] Rotation[0] set from entity @s Rotation[0]
data modify entity @e[tag=onGroundItem,tag=init,limit=1] HandItems[0] set from entity @s Item
data modify entity @e[tag=onGroundItem,tag=init,limit=1] HandItems[0].tag.onGroundItem set value 1
execute store result score @s styleSaber run data get entity @s Item.tag.type
scoreboard players set #1 calcu_temp 300300
scoreboard players set #2 calcu_temp 10000
scoreboard players operation #2 calcu_temp *= @s styleSaber
scoreboard players operation #1 calcu_temp += #2 calcu_temp
execute store result entity @e[tag=onGroundItem,tag=init,limit=1] HandItems[0].tag.CustomModelData int 1 run scoreboard players get #1 calcu_temp
tag @e[tag=onGroundItem,tag=init] remove init
kill @s
