execute anchored eyes run summon minecraft:armor_stand ^ ^ ^ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["actStunDamagePath"]}
execute store result entity @e[tag=actStunDamagePath,limit=1] Rotation[0] float 1 run data get entity @s Rotation[0]
execute store result entity @e[tag=actStunDamagePath,limit=1] Rotation[1] float 1 run data get entity @s Rotation[1]

scoreboard players set #1 calcu_temp 8
execute as @e[tag=actStunDamagePath] at @s run function galaxy:weapon/katana/action/stun/damage
