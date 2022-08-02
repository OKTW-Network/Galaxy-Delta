function galaxy:weapon/gun/uuid/get/hand_main
function galaxy:weapon/gun/uuid/get/hand_off

function galaxy:weapon/gun/changed/tag/main

execute if entity @s[tag=galaxy._status.gun.changed,tag=galaxy._status.gun.swap] run function galaxy:weapon/gun/changed/hands
execute if entity @s[tag=galaxy._status.gun.changed.mainHand,tag=!galaxy._status.gun.swap] run function galaxy:weapon/gun/changed/hand_main
execute if entity @s[tag=galaxy._status.gun.changed.offHand,tag=!galaxy._status.gun.swap] run function galaxy:weapon/gun/changed/hand_off
