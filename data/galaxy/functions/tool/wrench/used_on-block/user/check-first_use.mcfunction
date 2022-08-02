execute unless score @s galaxy.tool.wrench.block.posX = @e[tag=galaxy._tag.ThisWrenchTarget,limit=1] posX run tag @s add galaxy._tag.FirstTimeWrenchUse
execute unless score @s galaxy.tool.wrench.block.posY = @e[tag=galaxy._tag.ThisWrenchTarget,limit=1] posY run tag @s add galaxy._tag.FirstTimeWrenchUse
execute unless score @s galaxy.tool.wrench.block.posZ = @e[tag=galaxy._tag.ThisWrenchTarget,limit=1] posZ run tag @s add galaxy._tag.FirstTimeWrenchUse
execute unless score @s galaxy.tool.wrench.block.posX matches -2147483648..2147483647 unless score @s galaxy.tool.wrench.block.posY matches -2147483648..2147483647 unless score @s galaxy.tool.wrench.block.posZ matches -2147483648..2147483647 run tag @s add galaxy._tag.FirstTimeWrenchUse
