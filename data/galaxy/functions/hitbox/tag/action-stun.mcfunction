function math:calcu_temp/make_data
data modify storage galaxy:temp +hitbox.tag.action-stun.calcu_temp.upstream set from storage math:calcu_temp result

function galaxy:hitbox/tag/target
tag @e[tag=possibleEntity] add actStunPossibleVictim
tag @e[tag=possibleEntity] remove possibleEntity

execute as @e[tag=actStunPossibleVictim] run function galaxy:hitbox/check/action-stun

data modify storage math:calcu_temp input set from storage galaxy:temp +hitbox.tag.action-stun.calcu_temp.upstream
function math:calcu_temp/extract_data
