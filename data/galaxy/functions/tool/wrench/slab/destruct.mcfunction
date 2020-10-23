execute if predicate galaxy:entity/item_frame/facing-down run scoreboard players set #1 calcu_temp 1
execute if predicate galaxy:entity/item_frame/facing-up run scoreboard players set #1 calcu_temp 0

loot replace entity @s container.0 mine ~ ~ ~
data modify storage cu:summon item set from entity @s Item
scoreboard players set #pickupDelay summonItem 10
function cu:summon/item

function galaxy:tool/wrench/slab/set_block/main
