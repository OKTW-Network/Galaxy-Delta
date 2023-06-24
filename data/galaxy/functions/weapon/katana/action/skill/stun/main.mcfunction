function galaxy:weapon/katana/action/skill/stun/tag_victim

execute store result score #effect.stun.set.duration galaxy run data get storage galaxy:temp +weapon.katana.action.skill.effect_duration
execute as @e[tag=galaxy._tag.TheseKatanaActionVictim] run function galaxy:effect/stun/set

execute if entity @e[tag=galaxy._tag.TheseKatanaActionVictim] run function galaxy:weapon/katana/sound/action-stun_hit
execute unless entity @e[tag=galaxy._tag.TheseKatanaActionVictim] run function galaxy:weapon/katana/sound/action-stun_miss

execute if entity @e[tag=galaxy._tag.TheseKatanaActionVictim] run scoreboard players operation #weapon.katana.action.skill.cooldown galaxy *= #4 num

tag @s add galaxy._success.katana.performSkill
