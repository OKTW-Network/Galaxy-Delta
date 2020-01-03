function galaxy:weapon/pistol/meta/detector/holding-pistol-hand_main
function galaxy:weapon/pistol/meta/detector/holding-pistol-hand_off

scoreboard players set @s holdPistol 0
scoreboard players set @s[scores={isMainHandPistol=1}] holdPistol 1
scoreboard players set @s[scores={isOffHandPistol=1}] holdPistol -1
scoreboard players set @s[scores={isMainHandPistol=1,isOffHandPistol=1}] holdPistol 2
