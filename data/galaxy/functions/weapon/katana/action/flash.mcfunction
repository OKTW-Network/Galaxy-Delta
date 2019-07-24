execute as @a[scores={reqActFlash=1}] run scoreboard players set @s cdActSwapPut 0
execute as @a[scores={reqActFlash=1}] run scoreboard players set @s reqActSwapPut 1

execute as @a[scores={reqActFlash=1}] at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["flashPathfinder","distance_1"]}
execute as @a[scores={reqActFlash=1}] at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["flashPathfinder","distance_2"]}
execute as @a[scores={reqActFlash=1}] at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["flashPathfinder","distance_3"]}
execute as @a[scores={reqActFlash=1}] at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["flashPathfinder","distance_4"]}
execute as @a[scores={reqActFlash=1}] at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["flashPathfinder","distance_5"]}
execute as @e[tag=flashPathfinder] at @s store result entity @s Pos[1] double 1 run data get entity @a[scores={reqActFlash=1},distance=..1.25,sort=nearest,limit=1] Pos[1]
execute as @e[tag=flashPathfinder] at @s store result entity @s Rotation[0] float 1 run data get entity @a[scores={reqActFlash=1},distance=..1.25,sort=nearest,limit=1] Rotation[0]
execute as @e[tag=flashPathfinder] run data modify entity @s Rotation[1] set value 0.0f
execute as @e[tag=flashPathfinder,tag=distance_1] at @s run tp @s ^ ^ ^1
execute as @e[tag=flashPathfinder,tag=distance_2] at @s run tp @s ^ ^ ^2
execute as @e[tag=flashPathfinder,tag=distance_3] at @s run tp @s ^ ^ ^3
execute as @e[tag=flashPathfinder,tag=distance_4] at @s run tp @s ^ ^ ^4
execute as @e[tag=flashPathfinder,tag=distance_5] at @s run tp @s ^ ^ ^5
execute as @e[tag=flashPathfinder] at @s store result entity @s Rotation[1] float 1 run data get entity @a[scores={reqActFlash=1},distance=..6,sort=nearest,limit=1] Rotation[1]
execute as @a[scores={reqActFlash=1}] run scoreboard players set @a[scores={reqActFlash=1}] disActFlash 0
execute as @a[scores={reqActFlash=1}] store success score @s sucActFlash positioned as @e[tag=flashPathfinder,tag=distance_1,sort=nearest,limit=1] if block ~ ~ ~ #galaxy:passable run tp @s @e[tag=flashPathfinder,tag=distance_1,sort=nearest,limit=1]
execute as @a[scores={reqActFlash=1}] positioned as @e[tag=flashPathfinder,tag=distance_1,sort=nearest,limit=1] if block ~ ~ ~ #galaxy:passable run scoreboard players set @a[scores={reqActFlash=1}] disActFlash 1
execute as @a[scores={reqActFlash=1}] if score @s sucActFlash matches 1.. store success score @s sucActFlash positioned as @e[tag=flashPathfinder,tag=distance_2,sort=nearest,limit=1] if block ~ ~ ~ #galaxy:passable run tp @s @e[tag=flashPathfinder,tag=distance_2,sort=nearest,limit=1]
execute as @a[scores={reqActFlash=1}] positioned as @e[tag=flashPathfinder,tag=distance_1,sort=nearest,limit=1] if block ~ ~ ~ #galaxy:passable run scoreboard players set @a[scores={reqActFlash=1}] disActFlash 2
execute as @a[scores={reqActFlash=1}] if score @s sucActFlash matches 1.. positioned as @e[tag=flashPathfinder,tag=distance_2,sort=nearest,limit=1] unless block ~ ~ ~ #galaxy:passable run scoreboard players set @a[scores={reqActFlash=1}] sucActFlash 0
execute as @a[scores={reqActFlash=1}] if score @s sucActFlash matches 1.. store success score @s sucActFlash positioned as @e[tag=flashPathfinder,tag=distance_3,sort=nearest,limit=1] if block ~ ~ ~ #galaxy:passable run tp @s @e[tag=flashPathfinder,tag=distance_3,sort=nearest,limit=1]
execute as @a[scores={reqActFlash=1}] positioned as @e[tag=flashPathfinder,tag=distance_1,sort=nearest,limit=1] if block ~ ~ ~ #galaxy:passable run scoreboard players set @a[scores={reqActFlash=1}] disActFlash 3
execute as @a[scores={reqActFlash=1}] if score @s sucActFlash matches 1.. positioned as @e[tag=flashPathfinder,tag=distance_3,sort=nearest,limit=1] unless block ~ ~ ~ #galaxy:passable run scoreboard players set @a[scores={reqActFlash=1}] sucActFlash 0
execute as @a[scores={reqActFlash=1}] if score @s sucActFlash matches 1.. store success score @s sucActFlash positioned as @e[tag=flashPathfinder,tag=distance_4,sort=nearest,limit=1] if block ~ ~ ~ #galaxy:passable run tp @s @e[tag=flashPathfinder,tag=distance_4,sort=nearest,limit=1]
execute as @a[scores={reqActFlash=1}] positioned as @e[tag=flashPathfinder,tag=distance_1,sort=nearest,limit=1] if block ~ ~ ~ #galaxy:passable run scoreboard players set @a[scores={reqActFlash=1}] disActFlash 4
execute as @a[scores={reqActFlash=1}] if score @s sucActFlash matches 1.. positioned as @e[tag=flashPathfinder,tag=distance_4,sort=nearest,limit=1] unless block ~ ~ ~ #galaxy:passable run scoreboard players set @a[scores={reqActFlash=1}] sucActFlash 0
execute as @a[scores={reqActFlash=1}] if score @s sucActFlash matches 1.. store success score @s sucActFlash positioned as @e[tag=flashPathfinder,tag=distance_5,sort=nearest,limit=1] if block ~ ~ ~ #galaxy:passable run tp @s @e[tag=flashPathfinder,tag=distance_5,sort=nearest,limit=1]
execute as @a[scores={reqActFlash=1}] positioned as @e[tag=flashPathfinder,tag=distance_1,sort=nearest,limit=1] if block ~ ~ ~ #galaxy:passable run scoreboard players set @a[scores={reqActFlash=1}] disActFlash 5
execute as @a[scores={reqActFlash=1}] if score @s disActFlash matches 0 run kill @e[tag=flashPathfinder]
execute as @a[scores={reqActFlash=1}] if score @s disActFlash matches 1 run kill @e[tag=flashPathfinder,tag=distance_2,tag=distance_3,tag=distance_4,tag=distance_5]
execute as @a[scores={reqActFlash=1}] if score @s disActFlash matches 2 run kill @e[tag=flashPathfinder,tag=distance_3,tag=distance_4,tag=distance_5]
execute as @a[scores={reqActFlash=1}] if score @s disActFlash matches 3 run kill @e[tag=flashPathfinder,tag=distance_4,tag=distance_5]
execute as @a[scores={reqActFlash=1}] if score @s disActFlash matches 4 run kill @e[tag=flashPathfinder,tag=distance_5]
scoreboard players set @a[scores={sucActFlash=1}] sucActFlash 0

execute as @e[tag=flashPathfinder] at @s run tag @e[type=#galaxy:hostile,distance=..1.5] add init-flash-damage
execute as @e[tag=init-flash-damage,type=#galaxy:hostile,type=!#galaxy:hostile_undead] if score #katana_act_flash_damage Config matches 1.. run effect give @s minecraft:instant_damage 1 31 true
execute as @e[tag=init-flash-damage,type=#galaxy:hostile,type=#galaxy:hostile_undead] if score #katana_act_flash_damage Config matches 1.. run effect give @s minecraft:instant_health 1 31 true
execute as @e[tag=init-flash-damage] if score #katana_act_flash_damage Config matches 1.. store result score @s health run data get entity @s Health
execute as @e[tag=init-flash-damage] if score #katana_act_flash_damage Config matches 1.. run scoreboard players operation @s health -= #katana_act_flash_damage Config
execute as @e[tag=init-flash-damage] if score #katana_act_flash_damage Config matches 1.. store result entity @s Health float 1 run scoreboard players get @s health

tag @e[tag=init-flash-damage] remove init-flash-damage
kill @e[tag=flashPathfinder]

execute as @a[scores={reqActFlash=1,disActFlash=1..}] store result score @s cdActFlash run scoreboard players get #katana_act_flash_success_cd Config

execute as @a[scores={reqActFlash=1,disActFlash=0}] store result score @s cdActFlash run scoreboard players get #katana_act_flash_unsuccessful_cd Config
