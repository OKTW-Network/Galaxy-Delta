tag @s[tag=!galaxy._tag.isUsingWrenchOnBlock] add galaxy._tag.isUsingWrenchOnBlock

function galaxy:tool/wrench/used_on-block/target/find
function galaxy:tool/wrench/used_on-block/anchor/find

function galaxy:tool/wrench/used_on-block/user/check-first_use
execute if entity @s[tag=galaxy._tag.doWrenchFirstUse] run function galaxy:tool/wrench/used_on-block/user/store-target
execute if entity @s[tag=galaxy._tag.doWrenchFirstUse] as @e[tag=galaxy._tag.ThisWrenchAnchor] run function galaxy:tool/wrench/used_on-block/anchor/store-original_states
execute if entity @s[tag=galaxy._tag.doWrenchFirstUse] run tag @e[tag=galaxy._tag.ThisWrench] add galaxy._tag.isWrenchFirstUse
tag @s[tag=galaxy._tag.doWrenchFirstUse] remove galaxy._tag.doWrenchFirstUse

function galaxy:tool/wrench/used_on-block/anchor/update

execute as @e[tag=galaxy._tag.ThisWrench] at @e[tag=galaxy._tag.ThisWrenchTarget] run function galaxy:tool/wrench/block/main

function galaxy:tool/wrench/used_on-block/user/store-target

execute as @e[tag=galaxy._tag.ThisWrenchAnchor,tag=galaxy._tag.storeOriginalStates] run function galaxy:tool/wrench/used_on-block/anchor/store-original_states

tag @e[tag=galaxy._tag.ThisWrenchAnchor] remove galaxy._tag.ThisWrenchAnchor
kill @e[tag=galaxy._tag.ThisWrenchTarget]
