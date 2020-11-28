execute if entity @s[tag=wrenchFirstUse] if predicate galaxy:entity/item_frame/vertical run tag @s add wrenchStairsFacing
execute if entity @s[tag=wrenchFirstUse] if predicate galaxy:entity/item_frame/horizontal run tag @s add wrenchStairsRotate
execute if entity @s[tag=!wrenchFirstUse] run tag @s add wrenchStairsRotate

execute if entity @s[tag=wrenchStairsFacing] run function galaxy:tool/wrench/spin/stairs/facing
execute if entity @s[tag=wrenchStairsRotate] run function galaxy:tool/wrench/spin/stairs/rotate
