tag @s[tag=!isUsingWrench] add isUsingWrench

function galaxy:tool/wrench/used_on-block/target/find
function galaxy:tool/wrench/used_on-block/anchor/find

function galaxy:tool/wrench/used_on-block/user/check-first_use
execute if entity @s[tag=doWrenchFirstUse] run function galaxy:tool/wrench/used_on-block/user/store-target
execute if entity @s[tag=doWrenchFirstUse] as @e[tag=ThisWrenchAnchor] run function galaxy:tool/wrench/used_on-block/anchor/store-original_states
execute if entity @s[tag=doWrenchFirstUse] run tag @e[tag=ThisWrench] add wrenchFirstUse
tag @s[tag=doWrenchFirstUse] remove doWrenchFirstUse

function galaxy:tool/wrench/used_on-block/anchor/update

execute as @e[tag=ThisWrench] at @e[tag=ThisWrenchTarget] run function galaxy:tool/wrench/spin/main

function galaxy:tool/wrench/used_on-block/user/store-target

execute as @e[tag=ThisWrenchAnchor,tag=storeOriginalStates] run function galaxy:tool/wrench/used_on-block/anchor/store-original_states

tag @e[tag=ThisWrenchAnchor] remove ThisWrenchAnchor
kill @e[tag=ThisWrenchTarget]
