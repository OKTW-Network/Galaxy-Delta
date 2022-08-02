execute if entity @s[tag=!galaxy._status.gun.swap.mainHand,tag=!galaxy._status.gun.isNew.mainHand] run function galaxy:weapon/gun/data/store-hand_main

execute if entity @s[tag=!galaxy._status.gun.swap.mainHand] run function galaxy:weapon/gun/uuid/set-hand_main

execute if entity @s[tag=galaxy._status.gun.swap.mainHand] run function galaxy:weapon/gun/uuid/swap-hand_main
execute if entity @s[tag=galaxy._status.gun.swap.mainHand] run function galaxy:weapon/gun/data/swap-hand_main

execute if entity @s[tag=!galaxy._status.gun.swap.mainHand] run function galaxy:weapon/gun/data/extract-hand_main
