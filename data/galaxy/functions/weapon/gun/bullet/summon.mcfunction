# summon
execute at @s anchored eyes run summon minecraft:armor_stand ^ ^ ^0.5 {DisabledSlots:4144959,Marker:1b,NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,Tags:["bullet","init"],HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:100}},{}],ArmorItems:[{},{},{},{id:"minecraft:air",Count:1b}]}
execute as @e[tag=bullet,tag=init] at @s unless block ~ ~ ~ #minecraft:passable run kill @s

execute if score @s reqGunFire matches 1..3 unless score @s reqGunFire matches 2 run function galaxy:weapon/gun/bullet/get_data-hand_main
execute if score @s reqGunFire matches 3 run function galaxy:weapon/gun/bullet/get_data-hand_off
execute if score @s reqGunFire matches 2 if score @s gunSwitch matches 0 run function galaxy:weapon/gun/bullet/get_data-hand_main
execute if score @s reqGunFire matches 2 if score @s gunSwitch matches 1 run function galaxy:weapon/gun/bullet/get_data-hand_off

scoreboard players set @e[tag=bullet,tag=init,limit=1] bulletDistance 0

# offset
execute unless score @e[tag=bullet,tag=init,limit=1] bulletOffset matches 0 run function galaxy:weapon/gun/bullet/offset
execute if score @e[tag=bullet,tag=init,limit=1] bulletOffset matches 0 run function galaxy:weapon/gun/bullet/offset-zero

# color rainbow
execute if score @e[tag=bullet,tag=init,limit=1] bulletColor matches 16 run function galaxy:weapon/gun/bullet/rainbow

tag @e[tag=bullet,tag=init] remove init

scoreboard players remove @s gunExtraBullet 1
execute if entity @s[scores={gunExtraBullet=1..}] at @s run function galaxy:weapon/gun/bullet/summon
