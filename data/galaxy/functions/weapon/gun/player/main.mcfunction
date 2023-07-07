execute if entity @s[predicate=galaxy:weapon/gun/hold] run function galaxy:weapon/gun/player/check/main

execute if entity @s[tag=galaxy._tag.gun.mainHandChanged,tag=!galaxy._tag.gun.swapHands] run function galaxy:weapon/gun/player/main_hand_changed
execute if entity @s[tag=galaxy._tag.gun.offHandChanged,tag=!galaxy._tag.gun.swapHands] run function galaxy:weapon/gun/player/off_hand_changed
execute if entity @s[tag=galaxy._tag.gun.changed,tag=galaxy._tag.gun.swapHands] run function galaxy:weapon/gun/data/swap_hands

execute if entity @s[predicate=galaxy:weapon/gun/main_hand,predicate=galaxy:weapon/gun/main_hand-holstered] run function galaxy:weapon/gun/replaceitem/main_hand-normal_status
execute if entity @s[predicate=galaxy:weapon/gun/off_hand,predicate=galaxy:weapon/gun/hands-pistol,predicate=galaxy:weapon/gun/off_hand-holstered] run function galaxy:weapon/gun/replaceitem/off_hand-normal_status
execute if entity @s[predicate=galaxy:weapon/gun/off_hand,predicate=!galaxy:weapon/gun/hands-pistol,predicate=!galaxy:weapon/gun/off_hand-holstered] run function galaxy:weapon/gun/replaceitem/off_hand-holstered

execute if entity @s[predicate=galaxy:weapon/gun/hold-aiming,predicate=!galaxy:weapon/gun/posture/any-aiming] run function galaxy:weapon/gun/aim/end
execute if entity @s[tag=galaxy._tag.gun.mainHandChanged,predicate=galaxy:weapon/gun/posture/any-aiming] run function galaxy:weapon/gun/aim/start

execute if entity @s[predicate=!galaxy:weapon/gun/posture/any-aiming,tag=galaxy._tag.gun.zooming] run function galaxy:weapon/gun/aim/zoom/end
execute if entity @s[predicate=galaxy:weapon/gun/posture/any-aiming,tag=!galaxy._tag.gun.zooming] run function galaxy:weapon/gun/aim/zoom/start

execute if score @s galaxy.gun.temperature.mainHand > @s galaxy.gun.temperatureMin.mainHand run function galaxy:weapon/gun/temperature/main_hand
execute if score @s galaxy.gun.temperature.offHand > @s galaxy.gun.temperatureMin.offHand run function galaxy:weapon/gun/temperature/off_hand

execute if score @s galaxy.gun.interval.mainHand matches 1.. run scoreboard players remove @s galaxy.gun.interval.mainHand 1
execute if score @s galaxy.gun.interval.offHand matches 1.. run scoreboard players remove @s galaxy.gun.interval.offHand 1

execute if score @s galaxy.gun.unstableShot.mainHand matches 1.. run function galaxy:weapon/gun/instability/main_hand
execute if score @s galaxy.gun.unstableShot.offHand matches 1.. run function galaxy:weapon/gun/instability/off_hand

tag @s[tag=galaxy._tag.gun.mainHandWasEmpty] remove galaxy._tag.gun.mainHandWasEmpty
tag @s[tag=galaxy._tag.gun.offHandWasEmpty] remove galaxy._tag.gun.offHandWasEmpty
tag @s[tag=galaxy._tag.gun.swapToMainHand] remove galaxy._tag.gun.swapToMainHand
tag @s[tag=galaxy._tag.gun.swapToOffHand] remove galaxy._tag.gun.swapToOffHand
tag @s[tag=galaxy._tag.gun.swapHands] remove galaxy._tag.gun.swapHands
tag @s[tag=galaxy._tag.gun.mainHandChanged] remove galaxy._tag.gun.mainHandChanged
tag @s[tag=galaxy._tag.gun.offHandChanged] remove galaxy._tag.gun.offHandChanged
tag @s[tag=galaxy._tag.gun.changed] remove galaxy._tag.gun.changed
