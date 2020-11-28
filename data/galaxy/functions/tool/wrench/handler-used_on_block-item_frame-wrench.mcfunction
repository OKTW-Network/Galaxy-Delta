tag @s add TriggerWrench

execute as @a[tag=TriggerWrench] run function galaxy:tool/wrench/used_on-block/find

tag @a[tag=TriggerWrench,predicate=minecraft:sneaking,tag=!isUsingWrench] add isUsingWrench
execute as @a[tag=TriggerWrench,predicate=minecraft:sneaking] run function galaxy:tool/wrench/used_on-block/main
execute if entity @a[tag=TriggerWrench,predicate=minecraft:sneaking] as @e[tag=ThisWrench] at @e[tag=ThisWrenchTarget] run function galaxy:tool/wrench/spin/main

execute as @e[tag=ThisWrenchAnchor,tag=storeOriginalStates] run function galaxy:tool/wrench/used_on-block/anchor/store-original_states

execute as @a[tag=TriggerWrench] run function galaxy:tool/wrench/return

tag @e[tag=ThisWrenchAnchor] remove ThisWrenchAnchor

kill @e[tag=ThisWrenchTarget]
kill @e[tag=ThisWrench]

tag @s remove TriggerWrench
