execute store result score #1 calcu_temp run scoreboard players get @s gunBulletArrA
scoreboard players operation #1 calcu_temp %= #2 num

execute if score #1 calcu_temp matches 0 run scoreboard players set @s gunBulletArrD -1
execute if score #1 calcu_temp matches 1 run scoreboard players set @s gunBulletArrD 1
execute if score @s gunBulletArrA = @s gunBulletTotal run scoreboard players set @s gunBulletArrD 0
execute if score @s gunBulletArrA = @s gunBulletTotal if score #1 calcu_temp matches 0 run scoreboard players set @s gunBulletArrD -2

execute unless score @s gunBulletArrXY = @e[tag=galaxy.bullet,tag=init,limit=1] bulletArrange run scoreboard players operation @s gunBulletArrXY = @e[tag=galaxy.bullet,tag=init] bulletArrange
execute if score @s gunBulletArrD matches -2..-1 if score @s gunBulletArrXY matches 1.. run scoreboard players operation @s gunBulletArrXY *= #-1 num
execute if score @s gunBulletArrD matches 1 if score @s gunBulletArrXY matches ..-1 run scoreboard players operation @s gunBulletArrXY *= #-1 num
execute if score @s gunBulletArrD matches -2 run scoreboard players operation @s gunBulletArrXY /= #2 num

execute as @e[tag=galaxy.bullet,tag=init] at @s run summon minecraft:marker ~ ~ ~ {Tags:["galaxy.bullet.set-anchor","init"]}
execute if score @s gunBulletArrD matches -1 as @e[tag=galaxy.bullet.set-anchor,tag=RL] at @s run tp @e[tag=galaxy.bullet.set-anchor,tag=init] @s
execute if score @s gunBulletArrD matches 1 as @e[tag=galaxy.bullet.set-anchor,tag=LL] at @s run tp @e[tag=galaxy.bullet.set-anchor,tag=init] @s
execute if score @s gunBulletArrD matches -2..0 unless score @s gunBulletArrD matches -1 as @e[tag=galaxy.bullet,tag=init] at @s run tp @e[tag=galaxy.bullet.set-anchor,tag=init] ^ ^ ^1 ~ ~

execute unless score @s gunBulletArrD matches 0 run function galaxy:weapon/gun/bullet/summon/offset/special/set-anchor/move

scoreboard players remove @s gunBulletArrA 1

execute unless score @s gunBulletArrD matches 1 run tag @e[tag=galaxy.bullet.set-anchor] remove RL
execute if score @s gunBulletArrA matches 1.. unless score @s gunBulletArrD matches 1 run tag @e[tag=galaxy.bullet.set-anchor,tag=init] add RL
execute unless score @s gunBulletArrD matches -1 run tag @e[tag=galaxy.bullet.set-anchor] remove LL
execute if score @s gunBulletArrA matches 1.. unless score @s gunBulletArrD matches -1 run tag @e[tag=galaxy.bullet.set-anchor,tag=init] add LL

tag @e[tag=galaxy.bullet.set-anchor,tag=init] remove init

execute if score @s gunBulletArrA matches 1.. run function galaxy:weapon/gun/bullet/summon/offset/special/set-anchor/summon
