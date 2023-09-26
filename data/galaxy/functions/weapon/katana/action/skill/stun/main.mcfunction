function galaxy:weapon/katana/action/skill/stun/tag_victim

scoreboard players operation #effect.stun.set.duration galaxy = #weapon.katana.action.skill.effect_strength galaxy
execute as @e[tag=galaxy._tag.TheseKatanaActionVictim] run function galaxy:effect/stun/set

execute if entity @e[tag=galaxy._tag.TheseKatanaActionVictim] run function galaxy:weapon/katana/sound/skill/stun/hit
execute unless entity @e[tag=galaxy._tag.TheseKatanaActionVictim] run function galaxy:weapon/katana/sound/skill/stun/miss

execute if entity @e[tag=galaxy._tag.TheseKatanaActionVictim] run scoreboard players operation #weapon.katana.action.skill.cooldown galaxy *= #4 num

tag @s add galaxy._success.katana.performSkill
