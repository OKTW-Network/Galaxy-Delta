execute at @e[tag=ThisWrench] align xyz positioned ~0.5 ~0.5 ~0.5 positioned ^ ^ ^-1 run function galaxy:tool/wrench/used_on-block/target/summon

function galaxy:tool/wrench/used_on-block/check-first_use

execute if entity @e[tag=ThisWrench,tag=wrenchFirstUse] run function galaxy:tool/wrench/used_on-block/store-position
execute if entity @e[tag=ThisWrench,tag=wrenchFirstUse] run function galaxy:tool/wrench/used_on-block/store-states

function galaxy:tool/wrench/used_on-block/anchor/update
execute at @e[tag=ThisWrenchTarget] run tag @e[tag=WrenchAnchor,distance=..0.05] add ThisWrenchAnchor
execute if entity @e[tag=ThisWrench,tag=wrenchFirstUse] as @e[tag=ThisWrenchAnchor] run function galaxy:tool/wrench/used_on-block/anchor/store-original_states
