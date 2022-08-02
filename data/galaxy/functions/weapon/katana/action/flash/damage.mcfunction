function galaxy:damage/default_value
scoreboard players operation #damage1000 galaxy.damage = #katana.action.flash.damage galaxy
scoreboard players operation #damage1000 galaxy.damage *= #1000 num
scoreboard players set #ignoreArmor galaxy.damage 1
scoreboard players set #ignoreResistanceEffect galaxy.damage 1
scoreboard players set #ignoreUniqueResistance galaxy.damage 1
scoreboard players set #ignoreHurtCD galaxy.damage 1
scoreboard players set #hurtTime galaxy.damage 0

execute as @e[tag=galaxy._tag.katanaFlashVictim] run function galaxy:damage/main

# scoreboard players operation @s galaxy.projectile.killCount = #killCount galaxy.damage

tag @e[tag=galaxy._tag.katanaFlashVictim] remove galaxy._tag.katanaFlashVictim
