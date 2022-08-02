execute if entity @s[predicate=galaxy:weapon/gun/main_hand] run function galaxy:weapon/gun/changed/tag/main_hand
execute if entity @s[predicate=galaxy:weapon/gun/off_hand] run function galaxy:weapon/gun/changed/tag/off_hand

tag @s[tag=galaxy._status.gun.changed.mainHand] add galaxy._status.gun.changed
tag @s[tag=galaxy._status.gun.changed.offHand] add galaxy._status.gun.changed
tag @s[tag=galaxy._status.gun.swap.mainHand,tag=galaxy._status.gun.swap.offHand] add galaxy._status.gun.swap
tag @s[tag=galaxy._status.gun.isNew.mainHand] add galaxy._status.gun.isNew
tag @s[tag=galaxy._status.gun.isNew.offHand] add galaxy._status.gun.isNew
