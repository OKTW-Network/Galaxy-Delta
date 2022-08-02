execute if entity @s[tag=!galaxy._status.gun.swap.offHand,tag=!galaxy._status.gun.isNew.offHand] run function galaxy:weapon/gun/data/store-hand_off

execute if entity @s[tag=!galaxy._status.gun.swap.offHand] run function galaxy:weapon/gun/uuid/set-hand_off

execute if entity @s[tag=galaxy._status.gun.swap.offHand] run function galaxy:weapon/gun/uuid/swap-hand_off
execute if entity @s[tag=galaxy._status.gun.swap.offHand] run function galaxy:weapon/gun/data/swap-hand_off

execute if entity @s[tag=!galaxy._status.gun.swap.offHand] run function galaxy:weapon/gun/data/extract-hand_off
