tag @s add galaxy._tag.ThisKatanaStunUser

execute at @s anchored eyes run summon minecraft:marker ~ ~ ~ {Tags:["galaxy.dummy.katanaActionStunDamage"]}
data modify entity @e[tag=galaxy.dummy.katanaActionStunDamage,limit=1] Rotation set from entity @s Rotation

scoreboard players set #katana.action.stun.recursiveLimit galaxy.weapon 8

execute as @e[tag=galaxy.dummy.katanaActionStunDamage] at @s run function galaxy:weapon/katana/action/stun/damage

execute if entity @s[tag=!galaxy.success.katana.action.stun] at @s run function galaxy:weapon/katana/sound/action-stun_miss
execute if entity @s[tag=galaxy.success.katana.action.stun] at @s run function galaxy:weapon/katana/sound/action-stun_hit
execute if entity @s[tag=!galaxy.success.katana.action.stun] run scoreboard players operation @s galaxy.weapon.katana.action.stun.cooldown = #galaxy$katana_act_stun_miss_cd Config
execute if entity @s[tag=galaxy.success.katana.action.stun] run scoreboard players operation @s galaxy.weapon.katana.action.stun.cooldown = #galaxy$katana_act_stun_hit_cd Config

tag @s remove galaxy._tag.ThisKatanaStunUser
