execute as @a[predicate=!galaxy:tool/hand_main-wrench] run scoreboard players reset @s MhWrenchUUIDM
execute as @a[predicate=!galaxy:tool/hand_main-wrench] run scoreboard players reset @s MhWrenchUUIDL
execute as @a[predicate=galaxy:tool/hand_main-wrench] run function galaxy:tool/meta/detector/change_wrench
