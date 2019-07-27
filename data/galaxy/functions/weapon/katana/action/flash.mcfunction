execute as @a[scores={reqActFlash=1}] run scoreboard players set @s cdActSwapPut 0
execute as @a[scores={reqActFlash=1}] run scoreboard players set @s reqActSwapPut 1

execute as @a[scores={reqActFlash=1}] at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["flashPathfinder","distance_0-5"]}
execute as @a[scores={reqActFlash=1}] at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["flashPathfinder","distance_1-0"]}
execute as @a[scores={reqActFlash=1}] at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["flashPathfinder","distance_1-5"]}
execute as @a[scores={reqActFlash=1}] at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["flashPathfinder","distance_2-0"]}
execute as @a[scores={reqActFlash=1}] at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["flashPathfinder","distance_2-5"]}
execute as @a[scores={reqActFlash=1}] at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["flashPathfinder","distance_3-0"]}
execute as @a[scores={reqActFlash=1}] at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["flashPathfinder","distance_3-5"]}
execute as @a[scores={reqActFlash=1}] at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["flashPathfinder","distance_4-0"]}
execute as @a[scores={reqActFlash=1}] at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["flashPathfinder","distance_4-5"]}
execute as @a[scores={reqActFlash=1}] at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["flashPathfinder","distance_5-0"]}
execute as @e[tag=flashPathfinder] at @s store result entity @s Pos[1] double 1 run data get entity @a[scores={reqActFlash=1},distance=..1,sort=nearest,limit=1] Pos[1]
execute as @e[tag=flashPathfinder] at @s store result entity @s Rotation[0] float 1 run data get entity @a[scores={reqActFlash=1},distance=..1,sort=nearest,limit=1] Rotation[0]
execute as @e[tag=flashPathfinder] run data modify entity @s Rotation[1] set value 0.0f
execute as @e[tag=flashPathfinder,tag=distance_0-5] at @s run tp @s ^ ^ ^0.5
execute as @e[tag=flashPathfinder,tag=distance_1-0] at @s run tp @s ^ ^ ^1
execute as @e[tag=flashPathfinder,tag=distance_1-5] at @s run tp @s ^ ^ ^1.5
execute as @e[tag=flashPathfinder,tag=distance_2-0] at @s run tp @s ^ ^ ^2
execute as @e[tag=flashPathfinder,tag=distance_2-5] at @s run tp @s ^ ^ ^2.5
execute as @e[tag=flashPathfinder,tag=distance_3-0] at @s run tp @s ^ ^ ^3
execute as @e[tag=flashPathfinder,tag=distance_3-5] at @s run tp @s ^ ^ ^3.5
execute as @e[tag=flashPathfinder,tag=distance_4-0] at @s run tp @s ^ ^ ^4
execute as @e[tag=flashPathfinder,tag=distance_4-5] at @s run tp @s ^ ^ ^4.5
execute as @e[tag=flashPathfinder,tag=distance_5-0] at @s run tp @s ^ ^ ^5
execute as @e[tag=flashPathfinder] at @s store result entity @s Rotation[1] float 1 run data get entity @a[scores={reqActFlash=1},distance=..5.5,sort=nearest,limit=1] Rotation[1]

execute as @a[scores={reqActFlash=1}] run scoreboard players set @s sucActFlash 0
execute as @a[scores={reqActFlash=1}] run scoreboard players set @s disActFlash 0
execute as @a[scores={reqActFlash=1}] at @s store success score @s sucActFlash positioned as @e[tag=flashPathfinder,tag=distance_0-5,sort=nearest,limit=1] run execute if block ~ ~ ~ #galaxy:passable
execute as @a[scores={reqActFlash=1}] at @s if score @s sucActFlash matches 1 store success score @s sucActFlash positioned as @e[tag=flashPathfinder,tag=distance_0-5,sort=nearest,limit=1] run execute if block ~ ~1 ~ #galaxy:passable
execute as @a[scores={reqActFlash=1}] at @s if score @s sucActFlash matches 1 store success score @s sucActFlash positioned as @e[tag=flashPathfinder,tag=distance_0-5,sort=nearest,limit=1] run execute unless block ~ ~-1 ~ #galaxy:passable
execute as @a[scores={reqActFlash=1}] if score @s sucActFlash matches 1 run tp @s @e[tag=flashPathfinder,tag=distance_0-5,sort=nearest,limit=1]
execute as @a[scores={reqActFlash=1}] if score @s sucActFlash matches 1 run scoreboard players set @s disActFlash 0
execute as @a[scores={reqActFlash=1}] at @s if score @s sucActFlash matches 0 run kill @e[sort=nearest,limit=10,tag=flashPathfinder]

execute as @a[scores={reqActFlash=1}] at @s if score @s sucActFlash matches 1 store success score @s sucActFlash positioned as @e[tag=flashPathfinder,tag=distance_1-0,sort=nearest,limit=1] run execute if block ~ ~ ~ #galaxy:passable
execute as @a[scores={reqActFlash=1}] at @s if score @s sucActFlash matches 1 store success score @s sucActFlash positioned as @e[tag=flashPathfinder,tag=distance_1-0,sort=nearest,limit=1] run execute if block ~ ~1 ~ #galaxy:passable
execute as @a[scores={reqActFlash=1}] at @s if score @s sucActFlash matches 1 store success score @s sucActFlash positioned as @e[tag=flashPathfinder,tag=distance_1-0,sort=nearest,limit=1] run execute unless block ~ ~-1 ~ #galaxy:passable
execute as @a[scores={reqActFlash=1}] if score @s sucActFlash matches 1 run tp @s @e[tag=flashPathfinder,tag=distance_1-0,sort=nearest,limit=1]
execute as @a[scores={reqActFlash=1}] if score @s sucActFlash matches 1 run scoreboard players set @s disActFlash 1
execute as @a[scores={reqActFlash=1}] at @s if score @s sucActFlash matches 0 run kill @e[sort=nearest,limit=9,tag=flashPathfinder,tag=!distance_0-5]

execute as @a[scores={reqActFlash=1}] at @s if score @s sucActFlash matches 1 store success score @s sucActFlash positioned as @e[tag=flashPathfinder,tag=distance_1-5,sort=nearest,limit=1] run execute if block ~ ~ ~ #galaxy:passable
execute as @a[scores={reqActFlash=1}] at @s if score @s sucActFlash matches 1 store success score @s sucActFlash positioned as @e[tag=flashPathfinder,tag=distance_1-5,sort=nearest,limit=1] run execute if block ~ ~1 ~ #galaxy:passable
execute as @a[scores={reqActFlash=1}] at @s if score @s sucActFlash matches 1 store success score @s sucActFlash positioned as @e[tag=flashPathfinder,tag=distance_1-5,sort=nearest,limit=1] run execute unless block ~ ~-1 ~ #galaxy:passable
execute as @a[scores={reqActFlash=1}] if score @s sucActFlash matches 1 run tp @s @e[tag=flashPathfinder,tag=distance_1-5,sort=nearest,limit=1]
execute as @a[scores={reqActFlash=1}] if score @s sucActFlash matches 1 run scoreboard players set @s disActFlash 2
execute as @a[scores={reqActFlash=1}] at @s if score @s sucActFlash matches 0 run kill @e[sort=nearest,limit=8,tag=flashPathfinder,tag=!distance_0-5,tag=!distance_1-0]

execute as @a[scores={reqActFlash=1}] at @s if score @s sucActFlash matches 1 store success score @s sucActFlash positioned as @e[tag=flashPathfinder,tag=distance_2-0,sort=nearest,limit=1] run execute if block ~ ~ ~ #galaxy:passable
execute as @a[scores={reqActFlash=1}] at @s if score @s sucActFlash matches 1 store success score @s sucActFlash positioned as @e[tag=flashPathfinder,tag=distance_2-0,sort=nearest,limit=1] run execute if block ~ ~1 ~ #galaxy:passable
execute as @a[scores={reqActFlash=1}] at @s if score @s sucActFlash matches 1 store success score @s sucActFlash positioned as @e[tag=flashPathfinder,tag=distance_2-0,sort=nearest,limit=1] run execute unless block ~ ~-1 ~ #galaxy:passable
execute as @a[scores={reqActFlash=1}] if score @s sucActFlash matches 1 run tp @s @e[tag=flashPathfinder,tag=distance_2-0,sort=nearest,limit=1]
execute as @a[scores={reqActFlash=1}] if score @s sucActFlash matches 1 run scoreboard players set @s disActFlash 2
execute as @a[scores={reqActFlash=1}] at @s if score @s sucActFlash matches 0 run kill @e[sort=nearest,limit=7,tag=flashPathfinder,tag=!distance_0-5,tag=!distance_1-0,tag=!distance_1-5]

execute as @a[scores={reqActFlash=1}] at @s if score @s sucActFlash matches 1 store success score @s sucActFlash positioned as @e[tag=flashPathfinder,tag=distance_2-5,sort=nearest,limit=1] run execute if block ~ ~ ~ #galaxy:passable
execute as @a[scores={reqActFlash=1}] at @s if score @s sucActFlash matches 1 store success score @s sucActFlash positioned as @e[tag=flashPathfinder,tag=distance_2-5,sort=nearest,limit=1] run execute if block ~ ~1 ~ #galaxy:passable
execute as @a[scores={reqActFlash=1}] at @s if score @s sucActFlash matches 1 store success score @s sucActFlash positioned as @e[tag=flashPathfinder,tag=distance_2-5,sort=nearest,limit=1] run execute unless block ~ ~-1 ~ #galaxy:passable
execute as @a[scores={reqActFlash=1}] if score @s sucActFlash matches 1 run tp @s @e[tag=flashPathfinder,tag=distance_2-5,sort=nearest,limit=1]
execute as @a[scores={reqActFlash=1}] if score @s sucActFlash matches 1 run scoreboard players set @s disActFlash 3
execute as @a[scores={reqActFlash=1}] at @s if score @s sucActFlash matches 0 run kill @e[sort=nearest,limit=6,tag=flashPathfinder,tag=!distance_0-5,tag=!distance_1-0,tag=!distance_1-5,tag=!distance_2-0]

execute as @a[scores={reqActFlash=1}] at @s if score @s sucActFlash matches 1 store success score @s sucActFlash positioned as @e[tag=flashPathfinder,tag=distance_3-0,sort=nearest,limit=1] run execute if block ~ ~ ~ #galaxy:passable
execute as @a[scores={reqActFlash=1}] at @s if score @s sucActFlash matches 1 store success score @s sucActFlash positioned as @e[tag=flashPathfinder,tag=distance_3-0,sort=nearest,limit=1] run execute if block ~ ~1 ~ #galaxy:passable
execute as @a[scores={reqActFlash=1}] at @s if score @s sucActFlash matches 1 store success score @s sucActFlash positioned as @e[tag=flashPathfinder,tag=distance_3-0,sort=nearest,limit=1] run execute unless block ~ ~-1 ~ #galaxy:passable
execute as @a[scores={reqActFlash=1}] if score @s sucActFlash matches 1 run tp @s @e[tag=flashPathfinder,tag=distance_3-0,sort=nearest,limit=1]
execute as @a[scores={reqActFlash=1}] if score @s sucActFlash matches 1 run scoreboard players set @s disActFlash 3
execute as @a[scores={reqActFlash=1}] at @s if score @s sucActFlash matches 0 run kill @e[sort=nearest,limit=5,tag=flashPathfinder,tag=!distance_0-5,tag=!distance_1-0,tag=!distance_1-5,tag=!distance_2-0,tag=!distance_2-5]

execute as @a[scores={reqActFlash=1}] at @s if score @s sucActFlash matches 1 store success score @s sucActFlash positioned as @e[tag=flashPathfinder,tag=distance_3-5,sort=nearest,limit=1] run execute if block ~ ~ ~ #galaxy:passable
execute as @a[scores={reqActFlash=1}] at @s if score @s sucActFlash matches 1 store success score @s sucActFlash positioned as @e[tag=flashPathfinder,tag=distance_3-5,sort=nearest,limit=1] run execute if block ~ ~1 ~ #galaxy:passable
execute as @a[scores={reqActFlash=1}] at @s if score @s sucActFlash matches 1 store success score @s sucActFlash positioned as @e[tag=flashPathfinder,tag=distance_3-5,sort=nearest,limit=1] run execute unless block ~ ~-1 ~ #galaxy:passable
execute as @a[scores={reqActFlash=1}] if score @s sucActFlash matches 1 run tp @s @e[tag=flashPathfinder,tag=distance_3-5,sort=nearest,limit=1]
execute as @a[scores={reqActFlash=1}] if score @s sucActFlash matches 1 run scoreboard players set @s disActFlash 4
execute as @a[scores={reqActFlash=1}] at @s if score @s sucActFlash matches 0 run kill @e[sort=nearest,limit=4,tag=flashPathfinder,tag=distance_3-5,tag=distance_4-0,tag=distance_4-5,tag=distance_5-0]

execute as @a[scores={reqActFlash=1}] at @s if score @s sucActFlash matches 1 store success score @s sucActFlash positioned as @e[tag=flashPathfinder,tag=distance_4-0,sort=nearest,limit=1] run execute if block ~ ~ ~ #galaxy:passable
execute as @a[scores={reqActFlash=1}] at @s if score @s sucActFlash matches 1 store success score @s sucActFlash positioned as @e[tag=flashPathfinder,tag=distance_4-0,sort=nearest,limit=1] run execute if block ~ ~1 ~ #galaxy:passable
execute as @a[scores={reqActFlash=1}] at @s if score @s sucActFlash matches 1 store success score @s sucActFlash positioned as @e[tag=flashPathfinder,tag=distance_4-0,sort=nearest,limit=1] run execute unless block ~ ~-1 ~ #galaxy:passable
execute as @a[scores={reqActFlash=1}] if score @s sucActFlash matches 1 run tp @s @e[tag=flashPathfinder,tag=distance_4-0,sort=nearest,limit=1]
execute as @a[scores={reqActFlash=1}] if score @s sucActFlash matches 1 run scoreboard players set @s disActFlash 4
execute as @a[scores={reqActFlash=1}] at @s if score @s sucActFlash matches 0 run kill @e[sort=nearest,limit=3,tag=flashPathfinder,tag=distance_4-0,tag=distance_4-5,tag=distance_5-0]

execute as @a[scores={reqActFlash=1}] at @s if score @s sucActFlash matches 1 store success score @s sucActFlash positioned as @e[tag=flashPathfinder,tag=distance_4-5,sort=nearest,limit=1] run execute if block ~ ~ ~ #galaxy:passable
execute as @a[scores={reqActFlash=1}] at @s if score @s sucActFlash matches 1 store success score @s sucActFlash positioned as @e[tag=flashPathfinder,tag=distance_4-5,sort=nearest,limit=1] run execute if block ~ ~1 ~ #galaxy:passable
execute as @a[scores={reqActFlash=1}] at @s if score @s sucActFlash matches 1 store success score @s sucActFlash positioned as @e[tag=flashPathfinder,tag=distance_4-5,sort=nearest,limit=1] run execute unless block ~ ~-1 ~ #galaxy:passable
execute as @a[scores={reqActFlash=1}] if score @s sucActFlash matches 1 run tp @s @e[tag=flashPathfinder,tag=distance_4-5,sort=nearest,limit=1]
execute as @a[scores={reqActFlash=1}] if score @s sucActFlash matches 1 run scoreboard players set @s disActFlash 5
execute as @a[scores={reqActFlash=1}] at @s if score @s sucActFlash matches 0 run kill @e[sort=nearest,limit=2,tag=flashPathfinder,tag=distance_4-5,tag=distance_5-0]

execute as @a[scores={reqActFlash=1}] at @s if score @s sucActFlash matches 1 store success score @s sucActFlash positioned as @e[tag=flashPathfinder,tag=distance_5-0,sort=nearest,limit=1] run execute if block ~ ~ ~ #galaxy:passable
execute as @a[scores={reqActFlash=1}] at @s if score @s sucActFlash matches 1 store success score @s sucActFlash positioned as @e[tag=flashPathfinder,tag=distance_5-0,sort=nearest,limit=1] run execute if block ~ ~1 ~ #galaxy:passable
execute as @a[scores={reqActFlash=1}] at @s if score @s sucActFlash matches 1 store success score @s sucActFlash positioned as @e[tag=flashPathfinder,tag=distance_5-0,sort=nearest,limit=1] run execute unless block ~ ~-1 ~ #galaxy:passable
execute as @a[scores={reqActFlash=1}] if score @s sucActFlash matches 1 run tp @s @e[tag=flashPathfinder,tag=distance_5-0,sort=nearest,limit=1]
execute as @a[scores={reqActFlash=1}] if score @s sucActFlash matches 1 run scoreboard players set @s disActFlash 5
execute as @a[scores={reqActFlash=1}] at @s if score @s sucActFlash matches 0 run kill @e[sort=nearest,limit=1,tag=flashPathfinder,tag=distance_5-0]

execute as @e[tag=flashPathfinder] at @s run tag @e[type=#galaxy:hostile,distance=..1.25] add init-flash-damage
execute as @e[tag=init-flash-damage,type=#galaxy:hostile,type=!#galaxy:hostile_undead] if score #katana_act_flash_damage Config matches 1.. run effect give @s minecraft:instant_damage 1 31 true
execute as @e[tag=init-flash-damage,type=#galaxy:hostile,type=#galaxy:hostile_undead] if score #katana_act_flash_damage Config matches 1.. run effect give @s minecraft:instant_health 1 31 true
execute as @e[tag=init-flash-damage] if score #katana_act_flash_damage Config matches 1.. store result score @s health run data get entity @s Health
execute as @e[tag=init-flash-damage] if score #katana_act_flash_damage Config matches 1.. run scoreboard players operation @s health -= #katana_act_flash_damage Config
execute as @e[tag=init-flash-damage] if score #katana_act_flash_damage Config matches 1.. store result entity @s Health float 1 run scoreboard players get @s health
tag @e[tag=init-flash-damage] remove init-flash-damage

kill @e[tag=flashPathfinder]


execute as @a[scores={reqActFlash=1}] store result score @s cdActFlashTemp1 run scoreboard players get #katana_act_flash_cd_max Config
execute as @a[scores={reqActFlash=1,disActFlash=1}] run scoreboard players set @s cdActFlashTemp2 8
execute as @a[scores={reqActFlash=1,disActFlash=2}] run scoreboard players set @s cdActFlashTemp2 6
execute as @a[scores={reqActFlash=1,disActFlash=3}] run scoreboard players set @s cdActFlashTemp2 4
execute as @a[scores={reqActFlash=1,disActFlash=4}] run scoreboard players set @s cdActFlashTemp2 2
execute as @a[scores={reqActFlash=1,disActFlash=5}] run scoreboard players set @s cdActFlashTemp2 1
execute as @a[scores={reqActFlash=1}] run scoreboard players operation @s cdActFlashTemp1 *= #static_1000 numeric
execute as @a[scores={reqActFlash=1}] run scoreboard players operation @s cdActFlashTemp1 /= @s cdActFlashTemp2
execute as @a[scores={reqActFlash=1}] run scoreboard players operation @s cdActFlashTemp1 /= #static_1000 numeric
execute as @a[scores={reqActFlash=1,disActFlash=0}] run scoreboard players set @s cdActFlashTemp1 0
execute as @a[scores={reqActFlash=1,disActFlash=0}] run scoreboard players set @s reqActFlash 0
execute as @a[scores={reqActFlash=1,disActFlash=1..}] run scoreboard players operation @s cdActFlash = @s cdActFlashTemp1
