# execute if predicate galaxy:entity/item_frame/vertical if entity @a[tag=triggerWrench,predicate=!minecraft:sneaking] run tag @s add wrenchStairsShape
execute if predicate galaxy:entity/item_frame/horizontal if entity @a[tag=triggerWrench,predicate=!minecraft:sneaking] run tag @s add wrenchStairsHalf
execute if predicate galaxy:entity/item_frame/vertical if entity @a[tag=triggerWrench,predicate=minecraft:sneaking] run tag @s add wrenchStairsFacing
execute if predicate galaxy:entity/item_frame/horizontal if entity @a[tag=triggerWrench,predicate=minecraft:sneaking] run tag @s add wrenchStairsRotate

# execute if entity @s[tag=wrenchStairsShape] run function galaxy:tool/wrench/stairs/shape
execute if entity @s[tag=wrenchStairsHalf] run function galaxy:tool/wrench/stairs/half
execute if entity @s[tag=wrenchStairsFacing] run function galaxy:tool/wrench/stairs/facing
execute if entity @s[tag=wrenchStairsRotate] run function galaxy:tool/wrench/stairs/rotate
