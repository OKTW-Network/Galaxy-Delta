scoreboard players operation @s ktnFlashMoveRem = @s ktnFlashDist
execute store result score #1 calcu_temp run scoreboard players operation @s ktnFlashMoveRem *= @s ktnFlashCrgeLvl
scoreboard players operation @s ktnFlashMoveRem /= #100 num
scoreboard players operation #1 calcu_temp %= #100 num
execute if score #1 calcu_temp matches 50.. run scoreboard players add @s ktnFlashMoveRem 1
scoreboard players operation @s ktnFlashMoveRem *= #4 num
