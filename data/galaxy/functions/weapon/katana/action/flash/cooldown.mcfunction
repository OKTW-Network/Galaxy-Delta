scoreboard players operation #1 temp = #galaxy$weapon.katana.action.flash.cd Config
scoreboard players operation #2 temp = @s galaxy.katana.flash.moved
scoreboard players operation #2 temp *= #10 num
scoreboard players operation #2 temp /= #katana.action.flash.distance galaxy
scoreboard players operation #1 temp *= #2 temp
scoreboard players operation #1 temp /= #1000 num

scoreboard players operation @s galaxy.katana.flash.cooldown = #1 temp
scoreboard players operation @s galaxy.katana.flash.cooldownMax = #1 temp
