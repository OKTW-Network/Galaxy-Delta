tag @s add checkAnchor

scoreboard players set #1 calcu_temp 0
execute as @a[tag=isUsingWrench] if score @s wrenchBlkX = @e[tag=checkAnchor,limit=1] posX if score @s wrenchBlkY = @e[tag=checkAnchor,limit=1] posY if score @s wrenchBlkZ = @e[tag=checkAnchor,limit=1] posZ run scoreboard players add #1 calcu_temp 1
execute unless score #1 calcu_temp matches 1.. run kill @s

tag @s remove checkAnchor
