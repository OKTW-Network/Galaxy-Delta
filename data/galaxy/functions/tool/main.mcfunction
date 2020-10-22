execute as @a[predicate=!galaxy:tool/hand_main-wrench] run function galaxy:tool/wrench/remove-uuid
execute as @a[predicate=galaxy:tool/hand_main-wrench] run function galaxy:tool/wrench/get-uuid

execute as @e[tag=empower_lens] at @s run function galaxy:tool/structure_empower
