execute at @s positioned ^ ^ ^0.5 run function galaxy:weapon/katana/action/stun/damage

execute if entity @s[tag=!galaxy._success.weapon.katana.stun.hitEntity] at @s run function galaxy:weapon/katana/sound/action-stun_miss
execute if entity @s[tag=galaxy._success.weapon.katana.stun.hitEntity] at @s run function galaxy:weapon/katana/sound/action-stun_hit
execute if entity @s[tag=!galaxy._success.weapon.katana.stun.hitEntity] run scoreboard players operation @s galaxy.katana.stun.cooldown = #galaxy$weapon.katana.action.stun.miss_cd Config
execute if entity @s[tag=galaxy._success.weapon.katana.stun.hitEntity] run scoreboard players operation @s galaxy.katana.stun.cooldown = #galaxy$weapon.katana.action.stun.hit_cd Config
