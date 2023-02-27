tag @s[tag=galaxy._task.empower_lens.destruct] add galaxy._STOP
execute if entity @s[tag=galaxy._task.empower_lens.destruct] run function galaxy:entity/empower_lens/destruct
tag @s[tag=galaxy._task.empower_lens.destruct] remove galaxy._task.empower_lens.destruct

execute unless entity @s[tag=galaxy._STOP] if entity @s[predicate=!minecraft:entity_properties/mob/hand_main-empty,predicate=!galaxy:tool/hand_main-wrench,predicate=!galaxy:tool/hand_main-crowbar] run function galaxy:entity/return/hand_main
