scoreboard players operation #1 calcu_temp = @s gunBulletArrX
scoreboard players set #3 calcu_temp 1
execute if score #1 calcu_temp matches ..-1 run scoreboard players set #3 calcu_temp -1
execute if score #1 calcu_temp matches ..-1 run scoreboard players operation #1 calcu_temp *= #-1 num
scoreboard players operation #2 calcu_temp = #1 calcu_temp

scoreboard players operation #1 calcu_temp /= #10 num
execute if score #1 calcu_temp matches 1.. as @e[tag=galaxy.dummy.bulletRotationAnchor,tag=init] at @s run function galaxy:weapon/gun/bullet/summon/offset/init/sequence/set-anchor/move-x_10
execute store result score #1 calcu_temp store result score #2 calcu_temp run scoreboard players operation #2 calcu_temp %= #10 num
scoreboard players operation #1 calcu_temp /= #2 num
execute if score #1 calcu_temp matches 1.. as @e[tag=galaxy.dummy.bulletRotationAnchor,tag=init] at @s run function galaxy:weapon/gun/bullet/summon/offset/init/sequence/set-anchor/move-x_2
scoreboard players operation #2 calcu_temp %= #2 num
execute if score #2 calcu_temp matches 1 as @e[tag=galaxy.dummy.bulletRotationAnchor,tag=init] at @s run function galaxy:weapon/gun/bullet/summon/offset/init/sequence/set-anchor/move-x_1
