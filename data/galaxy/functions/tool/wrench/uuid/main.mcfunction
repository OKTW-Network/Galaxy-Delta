execute as @a[predicate=!galaxy:tool/hand_main-wrench] run function galaxy:tool/wrench/uuid/remove-hand_main
execute as @a[predicate=galaxy:tool/hand_main-wrench] run function galaxy:tool/wrench/uuid/get-hand_main
execute as @a[predicate=!galaxy:tool/hand_off-wrench] run function galaxy:tool/wrench/uuid/remove-hand_off
execute as @a[predicate=galaxy:tool/hand_off-wrench] run function galaxy:tool/wrench/uuid/get-hand_off
