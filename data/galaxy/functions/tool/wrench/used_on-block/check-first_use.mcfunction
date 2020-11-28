execute unless score @s wrenchBlkX = @e[tag=ThisWrenchTarget,limit=1] posX run tag @e[tag=ThisWrench] add wrenchFirstUse
execute unless score @s wrenchBlkY = @e[tag=ThisWrenchTarget,limit=1] posY run tag @e[tag=ThisWrench] add wrenchFirstUse
execute unless score @s wrenchBlkZ = @e[tag=ThisWrenchTarget,limit=1] posZ run tag @e[tag=ThisWrench] add wrenchFirstUse
execute unless score @s wrenchBlkX matches -2147483648..2147483647 unless score @s wrenchBlkY matches -2147483648..2147483647 unless score @s wrenchBlkZ matches -2147483648..2147483647 run tag @e[tag=ThisWrench] add wrenchFirstUse
