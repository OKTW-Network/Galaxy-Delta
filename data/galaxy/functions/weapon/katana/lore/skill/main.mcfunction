data modify storage galaxy:temp +weapon.katana.lore.result append value '{"translate":" %s","with":[{"translate":"text.express.relate","with":[{"translate":"attribute.name.galaxy.katana.skill","color":"dark_aqua"},""],"color":"gray","italic":false}]}'
execute if score #weapon.katana.lore._buildSkillName galaxy matches 1 run function galaxy:weapon/katana/lore/skill/name
execute if score #weapon.katana.lore._buildSkillDamage galaxy matches 1.. run function galaxy:weapon/katana/lore/skill/damage/main
execute if score #weapon.katana.lore._buildSkillEffectStrength galaxy matches 1.. run function galaxy:weapon/katana/lore/skill/effect_strength/main
execute if score #weapon.katana.lore._buildSkillCooldown galaxy matches 1.. run function galaxy:weapon/katana/lore/skill/cooldown/main
function #galaxy:weapon.katana.lore.skill
