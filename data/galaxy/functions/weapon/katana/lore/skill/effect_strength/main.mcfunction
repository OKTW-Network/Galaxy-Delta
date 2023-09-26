data modify storage galaxy:temp +weapon.katana.lore._finalValue set value ""
execute if score #weapon.katana.lore._buildSkillEffectStrength galaxy matches 1..2 run data modify storage galaxy:temp +weapon.katana.lore._finalValue set value '{"storage":"galaxy:temp","nbt":"+weapon.katana.lore.input.skill.effect_strength","color":"dark_green"}'
execute if score #weapon.katana.lore._buildSkillEffectStrength galaxy matches 3 run function galaxy:weapon/katana/lore/skill/effect_strength/modifier
data modify storage cu:value string.static.input set value '{"translate":"  %s","with":[{"translate":"text.express.relate","with":[{"translate":"attribute.name.galaxy.katana.action_effect_strength","color":"aqua"},{"storage":"galaxy:temp","nbt":"+weapon.katana.lore._finalValue","interpret":true}],"color":"gray","italic":false}]}'
function cu:value/string/static
data modify storage galaxy:temp +weapon.katana.lore.result append from storage cu:value string.static.result
