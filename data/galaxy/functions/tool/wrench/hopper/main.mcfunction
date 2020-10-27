execute unless predicate galaxy:entity/item_frame/facing-up run tag @s add wrenchHopperFacing
execute if predicate galaxy:entity/item_frame/facing-up run tag @s add wrenchHopperRotate

execute if entity @s[tag=wrenchHopperFacing] run function galaxy:tool/wrench/hopper/facing
execute if entity @s[tag=wrenchHopperRotate] run function galaxy:tool/wrench/hopper/rotate
