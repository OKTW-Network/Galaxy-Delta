execute as @a[scores={reqActFlash=1}] run scoreboard players set @s cdActSwapPut 0
execute as @a[scores={reqActFlash=1}] run scoreboard players set @s reqActSwapPut 1

execute as @a[scores={reqActFlash=1}] at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["flashPathfinder"]}
execute as @a[scores={reqActFlash=1}] at @s store result entity @e[tag=flashPathfinder,sort=nearest,limit=1] Pos[1] double 1 run data get entity @s Pos[1]
execute as @a[scores={reqActFlash=1}] at @s store result entity @e[tag=flashPathfinder,sort=nearest,limit=1] Rotation[0] float 1 run data get entity @s Rotation[0]
execute as @e[tag=flashPathfinder] run data modify entity @s Rotation[1] set value 0.0f
execute as @e[tag=flashPathfinder] at @s run tp @s ^ ^ ^5
execute as @a[scores={reqActFlash=1}] positioned as @e[tag=flashPathfinder,sort=nearest,limit=1] if block ~ ~ ~ #galaxy:passable run tp @s @e[tag=flashPathfinder,sort=nearest,limit=1]
execute as @a[scores={reqActFlash=1}] at @s run kill @e[tag=flashPathfinder,sort=nearest,limit=1]

execute as @a[scores={reqActFlash=1}] store result score @s cdActFlash run scoreboard players get #katana_act_flash_cd Config
