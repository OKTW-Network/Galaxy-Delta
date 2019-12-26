# summon
execute anchored eyes run summon minecraft:armor_stand ^ ^ ^0.5 {DisabledSlots:4144959,Marker:1b,NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,Tags:["pistolBullet","init"],HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:100}},{}],ArmorItems:[{},{},{},{id:"minecraft:air",Count:1b}]}
execute as @e[tag=pistolBullet,tag=init,limit=1] at @s unless block ~ ~ ~ #galaxy:passable run kill @s
execute store result entity @e[tag=pistolBullet,tag=init,limit=1] HandItems[0].tag.bulletDamage int 1 run data get entity @s SelectedItem.tag.bulletDamage
execute store result entity @e[tag=pistolBullet,tag=init,limit=1] HandItems[0].tag.bulletSpeed int 1 run data get entity @s SelectedItem.tag.bulletSpeed
execute store result entity @e[tag=pistolBullet,tag=init,limit=1] HandItems[0].tag.bulletDisLmt int 1 run data get entity @s SelectedItem.tag.bulletDisLmt 4
execute store result entity @e[tag=pistolBullet,tag=init,limit=1] HandItems[0].tag.bulletOffset int 1 run data get entity @s SelectedItem.tag.bulletOffset

# offset
execute store result score #calculation_temp1 numeric run data get entity @s Rotation[0] 10
execute store result score #calculation_temp2 numeric run data get entity @e[tag=pistolBullet,tag=init,limit=1] HandItems[0].tag.bulletOffset
execute store result score #calculation_temp3 numeric run data get entity @e[tag=pistolBullet,tag=init,limit=1] UUIDMost 0.0000000001
scoreboard players operation #calculation_temp3 numeric %= #calculation_temp2 numeric
execute if score #calculation_temp3 numeric matches ..-1 run scoreboard players operation #calculation_temp1 numeric -= #calculation_temp3 numeric
execute unless score #calculation_temp3 numeric matches ..-1 run scoreboard players operation #calculation_temp1 numeric += #calculation_temp3 numeric
execute store result entity @e[tag=pistolBullet,tag=init,limit=1] Rotation[0] float 0.1 run scoreboard players get #calculation_temp1 numeric
execute store result score #calculation_temp1 numeric run data get entity @s Rotation[1] 10
execute store result score #calculation_temp2 numeric run data get entity @e[tag=pistolBullet,tag=init,limit=1] HandItems[0].tag.bulletOffset
execute store result score #calculation_temp3 numeric run data get entity @e[tag=pistolBullet,tag=init,limit=1] UUIDLast 0.0000000001
scoreboard players operation #calculation_temp3 numeric %= #calculation_temp2 numeric
execute if score #calculation_temp3 numeric matches ..-1 run scoreboard players operation #calculation_temp1 numeric -= #calculation_temp3 numeric
execute unless score #calculation_temp3 numeric matches ..-1 run scoreboard players operation #calculation_temp1 numeric += #calculation_temp3 numeric
execute store result entity @e[tag=pistolBullet,tag=init,limit=1] Rotation[1] float 0.1 run scoreboard players get #calculation_temp1 numeric

tag @e[tag=pistolBullet,tag=init,limit=1] remove init
