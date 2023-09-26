tag @s add galaxy._tag.ThisPerformKatanaSkill

data modify storage galaxy:temp +weapon.katana.action.skill set from entity @s SelectedItem.tag.CustomData.galaxy.tag.skill
execute store result score #weapon.katana.action.skill.damage galaxy run data get storage galaxy:temp +weapon.katana.action.skill.damage
execute store result score #weapon.katana.action.skill.effect_strength galaxy run data get storage galaxy:temp +weapon.katana.action.skill.effect_strength
execute store result score #weapon.katana.action.skill.cooldown galaxy run data get storage galaxy:temp +weapon.katana.action.skill.cooldown

execute if data storage galaxy:temp +weapon.katana.action.skill{id:"galaxy.stun"} run function galaxy:weapon/katana/action/skill/stun/main

execute if entity @s[tag=!galaxy._success.katana.performSkill] run function #galaxy:weapon/katana/perform_skill

execute if entity @s[tag=galaxy._success.katana.performSkill] store result score @s galaxy.katana.skillCooldownMax run scoreboard players operation @s galaxy.katana.skillCooldown = #weapon.katana.action.skill.cooldown galaxy
scoreboard players operation #weapon.katana.action.damage galaxy = #weapon.katana.action.skill.damage galaxy
execute store result score #1 temp run attribute @s generic.attack_damage base get 100
scoreboard players operation #weapon.katana.action.damage galaxy += #1 temp
execute if entity @s[tag=galaxy._success.katana.performSkill] if score #weapon.katana.action.damage galaxy matches 1.. if entity @e[tag=galaxy._tag.TheseKatanaActionVictim] run function galaxy:weapon/katana/action/damage/main
tag @s remove galaxy._success.katana.performSkill

tag @s remove galaxy._tag.ThisPerformKatanaSkill

data remove storage galaxy:temp +weapon.katana.action.skill
