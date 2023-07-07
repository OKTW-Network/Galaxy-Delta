data modify storage galaxy:temp +weapon.katana.lore.result append value '{"translate":" %s","with":[{"translate":"text.express.relate","with":[{"translate":"attribute.name.galaxy.katana.skill","color":"dark_aqua"},""],"color":"gray","italic":false}]}'

execute if data storage galaxy:temp +weapon.katana.lore.input.skill run function galaxy:weapon/katana/lore/skill/name
execute if data storage galaxy:temp +weapon.katana.lore.input.skill.damage run function galaxy:weapon/katana/lore/skill/damage
execute if data storage galaxy:temp +weapon.katana.lore.input.skill.range run function galaxy:weapon/katana/lore/skill/range
execute if data storage galaxy:temp +weapon.katana.lore.input.skill.effect_duration run function galaxy:weapon/katana/lore/skill/effect_duration
function #galaxy:weapon.katana.lore.skill
