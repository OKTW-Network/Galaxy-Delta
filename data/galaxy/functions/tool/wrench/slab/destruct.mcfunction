execute if predicate galaxy:entity/item_frame/facing-down run scoreboard players set #1 calcu_temp 1
execute if predicate galaxy:entity/item_frame/facing-up run scoreboard players set #1 calcu_temp 0

loot replace entity @s container.0 mine ~ ~ ~
data modify storage galaxy:get item set value []
data modify storage galaxy:get item prepend from entity @s Item
function galaxy:item_entity/summon

function galaxy:tool/wrench/slab/set_block/main
