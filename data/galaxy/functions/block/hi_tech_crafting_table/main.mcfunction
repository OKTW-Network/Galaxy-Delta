execute unless predicate galaxy:block/hi_tech_crafting_table run tag @s add galaxy._task.block.destruct
tag @s[tag=galaxy._task.block.destruct] add galaxy._STOP
execute if entity @s[tag=galaxy._task.block.destruct] run function galaxy:block/hi_tech_crafting_table/destruct
tag @s[tag=galaxy._task.block.destruct] remove galaxy._task.block.destruct

execute if entity @s[tag=galaxy._STOP] run function galaxy:block/kill

execute if entity @s[tag=!galaxy._STOP] run function galaxy:block/protection/main

execute if entity @s[tag=!galaxy._STOP] if predicate minecraft:block_states/open if entity @s[tag=galaxy._task.hi_tech_crafting_table.refreshGui] run function galaxy:block/hi_tech_crafting_table/refresh_gui

execute if entity @s[tag=!galaxy._STOP] if predicate minecraft:block_states/open run function galaxy:gui/hi_tech_crafting_table/main
