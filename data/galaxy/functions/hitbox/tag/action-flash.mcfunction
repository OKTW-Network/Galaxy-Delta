function math:calcu_temp/make_data
data modify storage galaxy:temp +hitbox.tag.action-flash.calcu_temp.upstream set from storage math:calcu_temp result

function galaxy:hitbox/tag/target
tag @e[tag=possibleEntity] add actFlashPossibleVictim
tag @e[tag=possibleEntity] remove possibleEntity

execute as @e[tag=actFlashPossibleVictim] run function galaxy:hitbox/check/action-flash

data modify storage math:calcu_temp input set from storage galaxy:temp +hitbox.tag.action-flash.calcu_temp.upstream
function math:calcu_temp/extract_data
