execute if entity @s[tag=wrenchFirstUse] unless predicate galaxy:entity/item_frame/facing-up run tag @s add wrenchHopperFacing
execute if entity @s[tag=wrenchFirstUse] if predicate galaxy:entity/item_frame/facing-up run tag @s add wrenchHopperRotate
execute if entity @s[tag=!wrenchFirstUse] run tag @s add wrenchHopperRotate

execute if entity @s[tag=wrenchHopperFacing] run function galaxy:tool/wrench/spin/hopper/facing
execute if entity @s[tag=wrenchHopperRotate] run function galaxy:tool/wrench/spin/hopper/rotate
