scoreboard players set #2 calcu_temp 10000
execute store result score #3 calcu_temp run data get entity @s Item.tag.type
scoreboard players operation #2 calcu_temp *= #3 calcu_temp
scoreboard players operation #1 calcu_temp += #2 calcu_temp
