execute unless predicate galaxy:block/hi-tech_crafting_table run tag @s add galaxy._STOP
execute unless predicate galaxy:block/hi-tech_crafting_table run function galaxy:block/hi-tech_crafting_table/destroy

execute unless entity @s[tag=galaxy._STOP] run function galaxy:block/protection/main

execute unless entity @s[tag=galaxy._STOP] if predicate minecraft:block_states/open if entity @s[tag=galaxy._task.hi-tech_crafting_table.refreshGui] run function galaxy:block/hi-tech_crafting_table/refresh_gui

execute unless entity @s[tag=galaxy._STOP] if predicate minecraft:block_states/open run function galaxy:gui/hi-tech_crafting_table/main
