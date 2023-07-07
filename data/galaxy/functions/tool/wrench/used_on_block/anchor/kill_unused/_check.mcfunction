tag @s add galaxy._tag.ThisCheckUsingWrenchAnchor

scoreboard players set #1 temp 0
execute as @a[tag=galaxy._tag.wrench.usingOnBlock] if score @s galaxy.tool.wrench.block.posX = @e[tag=galaxy._tag.ThisCheckUsingWrenchAnchor,limit=1] galaxy.tool.wrench.block.posX if score @s galaxy.tool.wrench.block.posY = @e[tag=galaxy._tag.ThisCheckUsingWrenchAnchor,limit=1] galaxy.tool.wrench.block.posY if score @s galaxy.tool.wrench.block.posZ = @e[tag=galaxy._tag.ThisCheckUsingWrenchAnchor,limit=1] galaxy.tool.wrench.block.posZ run scoreboard players add #1 temp 1
execute if score #1 temp matches 0 run kill @s

tag @s remove galaxy._tag.ThisCheckUsingWrenchAnchor
