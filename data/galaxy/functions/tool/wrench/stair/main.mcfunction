execute if predicate galaxy:entity/item_frame/vertical if entity @a[tag=triggerWrench,predicate=!minecraft:sneaking] run tag @s add wrenchStairShape
execute if predicate galaxy:entity/item_frame/horizontal if entity @a[tag=triggerWrench,predicate=!minecraft:sneaking] run tag @s add wrenchStairHalf
execute if predicate galaxy:entity/item_frame/vertical if entity @a[tag=triggerWrench,predicate=minecraft:sneaking] run tag @s add wrenchStairFacing
execute if predicate galaxy:entity/item_frame/horizontal if entity @a[tag=triggerWrench,predicate=minecraft:sneaking] run tag @s add wrenchStairRotate

execute if entity @s[tag=wrenchStairShape] run function galaxy:tool/wrench/stair/shape
execute if entity @s[tag=wrenchStairHalf] run function galaxy:tool/wrench/stair/half
execute if entity @s[tag=wrenchStairFacing] run function galaxy:tool/wrench/stair/facing
execute if entity @s[tag=wrenchStairRotate] run function galaxy:tool/wrench/stair/rotate
