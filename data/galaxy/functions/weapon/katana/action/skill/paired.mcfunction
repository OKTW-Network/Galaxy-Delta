tag @s add galaxy._tag.ThisPerformKatanaSkill

data modify storage galaxy:temp +weapon.katana.action.skill set from entity @s SelectedItem.tag.CustomData.galaxy.tag.skill
execute store result score #weapon.katana.action.skill.cooldown galaxy run data get storage galaxy:temp +weapon.katana.action.skill.cooldown

execute if data storage galaxy:temp +weapon.katana.action.skill{id:"galaxy.stun"} run function galaxy:weapon/katana/action/skill/stun/main

execute if entity @s[tag=!galaxy._success.katana.performSkill] run function #galaxy:weapon/katana/perform_skill

execute if entity @s[tag=galaxy._success.katana.performSkill] store result score @s galaxy.katana.skillCooldownMax run scoreboard players operation @s galaxy.katana.skillCooldown = #weapon.katana.action.skill.cooldown galaxy
execute store result score #weapon.katana.action.damage galaxy run data get storage galaxy:temp +weapon.katana.action.skill.damage
execute if entity @s[tag=galaxy._success.katana.performSkill] if score #weapon.katana.action.damage galaxy matches 1.. if entity @e[tag=galaxy._tag.TheseKatanaActionVictim] run function galaxy:weapon/katana/action/damage/main
tag @s remove galaxy._success.katana.performSkill

tag @s remove galaxy._tag.ThisPerformKatanaSkill
