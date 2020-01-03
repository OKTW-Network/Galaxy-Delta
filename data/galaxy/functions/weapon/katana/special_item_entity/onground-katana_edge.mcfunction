summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,ShowArms:1b,Invisible:1b,Tags:["katana","onGroundItem","init"],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:4144703}
data modify entity @e[tag=onGroundItem,tag=init,limit=1] HandItems[0] set from entity @s Item
data modify entity @e[tag=onGroundItem,tag=init,limit=1] HandItems[0].tag.onGroundItem set value 1
execute store result score @s styleEdge run data get entity @s Item.tag.type
scoreboard players set #calculation_temp1 numeric 100401
scoreboard players set #calculation_temp2 numeric 10000
scoreboard players operation #calculation_temp2 numeric *= @s styleEdge
scoreboard players operation #calculation_temp1 numeric += #calculation_temp2 numeric
execute store result entity @e[tag=onGroundItem,tag=init,limit=1] HandItems[0].tag.CustomModelData int 1 run scoreboard players get #calculation_temp1 numeric
tag @e[tag=onGroundItem,tag=init] remove init
kill @s
