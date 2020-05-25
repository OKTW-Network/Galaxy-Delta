scoreboard players operation @s bulletDamage *= @s bulletPntraAtenu
scoreboard players operation #calculation_temp1 numeric = @s bulletDamage
scoreboard players operation @s bulletDamage /= #static_100 numeric
scoreboard players operation #calculation_temp1 numeric %= #static_100 numeric
execute if score #calculation_temp1 numeric matches 50.. run scoreboard players add @s bulletDamage 1

scoreboard players operation @s bulletDistRem *= @s bulletPntraAtenu
scoreboard players operation #calculation_temp1 numeric = @s bulletDistRem
scoreboard players operation @s bulletDistRem /= #static_100 numeric
scoreboard players operation #calculation_temp1 numeric %= #static_100 numeric
execute if score #calculation_temp1 numeric matches 50.. run scoreboard players add @s bulletDistRem 1

scoreboard players operation @s bulletSpeed *= @s bulletPntraAtenu
scoreboard players operation #calculation_temp1 numeric = @s bulletSpeed
scoreboard players operation @s bulletSpeed /= #static_100 numeric
scoreboard players operation #calculation_temp1 numeric %= #static_100 numeric
execute if score #calculation_temp1 numeric matches 50.. run scoreboard players add @s bulletSpeed 1

scoreboard players set @s bulletMoveRem 0
