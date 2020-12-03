execute as @a[predicate=!galaxy:tool/hand_main-crowbar] run function galaxy:tool/crowbar/uuid/update/remove-hand_main
execute as @a[predicate=galaxy:tool/hand_main-crowbar] run function galaxy:tool/crowbar/uuid/update/get-hand_main
execute as @a[predicate=!galaxy:tool/hand_off-crowbar] run function galaxy:tool/crowbar/uuid/update/remove-hand_off
execute as @a[predicate=galaxy:tool/hand_off-crowbar] run function galaxy:tool/crowbar/uuid/update/get-hand_off
