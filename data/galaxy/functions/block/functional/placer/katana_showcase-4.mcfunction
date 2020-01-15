scoreboard players set #calculation_temp1 numeric 0
execute unless block ~1 ~ ~ #galaxy:passable run scoreboard players add #calculation_temp1 numeric 1
execute unless block ~ ~ ~1 #galaxy:passable run scoreboard players add #calculation_temp1 numeric 1
execute unless block ~-1 ~ ~ #galaxy:passable run scoreboard players add #calculation_temp1 numeric 1
execute unless block ~ ~ ~-1 #galaxy:passable run scoreboard players add #calculation_temp1 numeric 1
execute if score #calculation_temp1 numeric matches 0 run function galaxy:block/functional/summon/katana_showcase-4
execute if score #calculation_temp1 numeric matches 1.. run summon minecraft:armor_stand ~ ~ ~ {DisabledSlots:4079166,Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},CustomNameVisible:0b,Small:1b,ShowArms:1b,Invulnerable:1b,Invisible:1b,Silent:1b,NoGravity:1b,Tags:["katana_showcase","type-4",initPlace,"init"],ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{CustomModelData:20203,fakeBlock:1}}]}
execute if score #calculation_temp1 numeric matches 1.. store result score @s rotation0 run data get entity @s Rotation[0]
execute if score #calculation_temp1 numeric matches 1.. run scoreboard players set #calculation_temp2 numeric 0
execute if score #calculation_temp1 numeric matches 1.. store success score #calculation_temp2 numeric unless block ~1 ~ ~ #galaxy:passable if score @s rotation0 matches 90
execute if score #calculation_temp1 numeric matches 1.. if score #calculation_temp2 numeric matches 1 run data modify entity @e[tag=katana_showcase,tag=initPlace,limit=1] Rotation[0] set value 90f
execute if score #calculation_temp1 numeric matches 1.. if score #calculation_temp2 numeric matches 1 run scoreboard players set #calculation_temp2 numeric -1
execute if score #calculation_temp1 numeric matches 1.. if score #calculation_temp2 numeric matches 0 store success score #calculation_temp2 numeric unless block ~ ~ ~1 #galaxy:passable if score @s rotation0 matches -180..-135
execute if score #calculation_temp1 numeric matches 1.. if score #calculation_temp2 numeric matches 1 run data modify entity @e[tag=katana_showcase,tag=initPlace,limit=1] Rotation[0] set value 180f
execute if score #calculation_temp1 numeric matches 1.. if score #calculation_temp2 numeric matches 1 run scoreboard players set #calculation_temp2 numeric -1
execute if score #calculation_temp1 numeric matches 1.. if score #calculation_temp2 numeric matches 0 store success score #calculation_temp2 numeric unless block ~ ~ ~1 #galaxy:passable if score @s rotation0 matches 135..180
execute if score #calculation_temp1 numeric matches 1.. if score #calculation_temp2 numeric matches 1 run data modify entity @e[tag=katana_showcase,tag=initPlace,limit=1] Rotation[0] set value 180f
execute if score #calculation_temp1 numeric matches 1.. if score #calculation_temp2 numeric matches 1 run scoreboard players set #calculation_temp2 numeric -1
execute if score #calculation_temp1 numeric matches 1.. if score #calculation_temp2 numeric matches 0 store success score #calculation_temp2 numeric unless block ~-1 ~ ~ #galaxy:passable if score @s rotation0 matches -90
execute if score #calculation_temp1 numeric matches 1.. if score #calculation_temp2 numeric matches 1 run data modify entity @e[tag=katana_showcase,tag=initPlace,limit=1] Rotation[0] set value -90f
execute if score #calculation_temp1 numeric matches 1.. if score #calculation_temp2 numeric matches 1 run scoreboard players set #calculation_temp2 numeric -1
execute if score #calculation_temp1 numeric matches 1.. if score #calculation_temp2 numeric matches 0 store success score #calculation_temp2 numeric unless block ~ ~ ~-1 #galaxy:passable if score @s rotation0 matches 0..45
execute if score #calculation_temp1 numeric matches 1.. if score #calculation_temp2 numeric matches 1 run data modify entity @e[tag=katana_showcase,tag=initPlace,limit=1] Rotation[0] set value 0f
execute if score #calculation_temp1 numeric matches 1.. if score #calculation_temp2 numeric matches 1 run scoreboard players set #calculation_temp2 numeric -1
execute if score #calculation_temp1 numeric matches 1.. if score #calculation_temp2 numeric matches 0 store success score #calculation_temp2 numeric unless block ~ ~ ~-1 #galaxy:passable if score @s rotation0 matches -45..0
execute if score #calculation_temp1 numeric matches 1.. if score #calculation_temp2 numeric matches 1 run data modify entity @e[tag=katana_showcase,tag=initPlace,limit=1] Rotation[0] set value 0f
execute if score #calculation_temp1 numeric matches 1.. if score #calculation_temp2 numeric matches 1 run scoreboard players set #calculation_temp2 numeric -1

execute if score #calculation_temp1 numeric matches 1.. if score #calculation_temp2 numeric matches 0 store success score #calculation_temp2 numeric unless block ~1 ~ ~ #galaxy:passable
execute if score #calculation_temp1 numeric matches 1.. if score #calculation_temp2 numeric matches 1 run data modify entity @e[tag=katana_showcase,tag=initPlace,limit=1] Rotation[0] set value 90f
execute if score #calculation_temp1 numeric matches 1.. if score #calculation_temp2 numeric matches 1 run scoreboard players set #calculation_temp2 numeric -1
execute if score #calculation_temp1 numeric matches 1.. if score #calculation_temp2 numeric matches 0 store success score #calculation_temp2 numeric unless block ~ ~ ~1 #galaxy:passable
execute if score #calculation_temp1 numeric matches 1.. if score #calculation_temp2 numeric matches 1 run data modify entity @e[tag=katana_showcase,tag=initPlace,limit=1] Rotation[0] set value 180f
execute if score #calculation_temp1 numeric matches 1.. if score #calculation_temp2 numeric matches 1 run scoreboard players set #calculation_temp2 numeric -1
execute if score #calculation_temp1 numeric matches 1.. if score #calculation_temp2 numeric matches 0 store success score #calculation_temp2 numeric unless block ~-1 ~ ~ #galaxy:passable
execute if score #calculation_temp1 numeric matches 1.. if score #calculation_temp2 numeric matches 1 run data modify entity @e[tag=katana_showcase,tag=initPlace,limit=1] Rotation[0] set value -90f
execute if score #calculation_temp1 numeric matches 1.. if score #calculation_temp2 numeric matches 1 run scoreboard players set #calculation_temp2 numeric -1
execute if score #calculation_temp1 numeric matches 1.. if score #calculation_temp2 numeric matches 0 store success score #calculation_temp2 numeric unless block ~ ~ ~-1 #galaxy:passable
execute if score #calculation_temp1 numeric matches 1.. if score #calculation_temp2 numeric matches 1 run data modify entity @e[tag=katana_showcase,tag=initPlace,limit=1] Rotation[0] set value 0f
execute if score #calculation_temp1 numeric matches 1.. if score #calculation_temp2 numeric matches 1 run scoreboard players set #calculation_temp2 numeric -1
execute as @e[tag=katana_showcase,tag=initPlace] at @s run tp @s ^ ^ ^-0.37
tag @e[tag=katana_showcase,tag=initPlace] remove initPlace
kill @s
