execute store result score #1 calcu_temp run scoreboard players operation @s bulletDamage *= @s bulletWeaken
scoreboard players operation @s bulletDamage /= #100 num
scoreboard players operation #1 calcu_temp %= #100 num
execute if score #1 calcu_temp matches 50.. run scoreboard players add @s bulletDamage 1

execute store result score #1 calcu_temp run scoreboard players operation @s bulletDistRem *= @s bulletWeaken
scoreboard players operation @s bulletDistRem /= #100 num
scoreboard players operation #1 calcu_temp %= #100 num
execute if score #1 calcu_temp matches 50.. run scoreboard players add @s bulletDistRem 1

execute store result score #1 calcu_temp run scoreboard players operation @s bulletSpeed *= @s bulletWeaken
scoreboard players operation @s bulletSpeed /= #100 num
scoreboard players operation #1 calcu_temp %= #100 num
execute if score #1 calcu_temp matches 50.. run scoreboard players add @s bulletSpeed 1
