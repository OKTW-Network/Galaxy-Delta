function galaxy:tool/wrench/chest/combine
execute if entity @s[tag=wrenchChestCombineFailed] run function galaxy:tool/wrench/facing
execute if entity @s[tag=wrenchChestCombineFailed] run function galaxy:tool/wrench/chest/set_block/single
