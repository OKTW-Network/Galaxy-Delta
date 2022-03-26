tag @s add galaxy._tag.checkAnchor

scoreboard players set #1 calcu_temp 0
execute as @a[tag=galaxy._tag.isUsingWrenchOnBlock] if score @s galaxy.tool.wrench.block.posX = @e[tag=galaxy._tag.checkAnchor,limit=1] posX if score @s galaxy.tool.wrench.block.posY = @e[tag=galaxy._tag.checkAnchor,limit=1] posY if score @s galaxy.tool.wrench.block.posZ = @e[tag=galaxy._tag.checkAnchor,limit=1] posZ run scoreboard players add #1 calcu_temp 1
execute unless score #1 calcu_temp matches 1.. run kill @s

tag @s remove galaxy._tag.checkAnchor
