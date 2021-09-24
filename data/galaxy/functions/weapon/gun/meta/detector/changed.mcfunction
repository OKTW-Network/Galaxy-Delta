execute if entity @s[predicate=galaxy:weapon/hand_main-gun] run function galaxy:weapon/gun/meta/detector/changed-hand_main
execute if entity @s[predicate=galaxy:weapon/hand_off-gun] run function galaxy:weapon/gun/meta/detector/changed-hand_off

tag @s[tag=galaxy.gun.changed.mainHand] add galaxy.gun.changed
tag @s[tag=galaxy.gun.changed.offHand] add galaxy.gun.changed
tag @s[tag=galaxy.gun.swap.mainHand,tag=galaxy.gun.swap.offHand] add galaxy.gun.swap
