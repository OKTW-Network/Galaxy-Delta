execute unless predicate galaxy:block/reinforced_blast_furnace run tag @s add galaxy._task.block.destruct
tag @s[tag=galaxy._task.block.destruct] add galaxy._STOP
execute if entity @s[tag=galaxy._task.block.destruct] run function galaxy:block/reinforced_blast_furnace/destruct
tag @s[tag=galaxy._task.block.destruct] remove galaxy._task.block.destruct

execute if entity @s[tag=galaxy._STOP] run function galaxy:block/kill

execute if entity @s[tag=!galaxy._STOP] run function galaxy:block/protection/main

execute if entity @s[tag=!galaxy._STOP] run function galaxy:block/reinforced_blast_furnace/functional/main

execute if entity @s[tag=!galaxy._STOP] if predicate minecraft:block_states/open run function galaxy:gui/reinforced_blast_furnace/main
