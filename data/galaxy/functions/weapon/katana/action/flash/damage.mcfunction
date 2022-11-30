function cu:entity/damage/setup_input/default_value
scoreboard players operation #entity.damage.source.damageValue1000 cu = #katana.action.flash.damage galaxy
scoreboard players operation #entity.damage.source.damageValue1000 cu *= #1000 num
# scoreboard players operation #entity.damage.source.killCount cu = @s galaxy.projectile.killCount

execute as @e[tag=galaxy._tag.katanaFlashVictim] run function cu:entity/damage/main

# scoreboard players operation @s galaxy.projectile.killCount = #entity.damage.source.killCount galaxy

tag @e[tag=galaxy._tag.katanaFlashVictim] remove galaxy._tag.katanaFlashVictim
