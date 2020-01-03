function galaxy:weapon/pistol/meta/detector/hand-main_holding_pistol
function galaxy:weapon/pistol/meta/detector/hand-off_holding_pistol

scoreboard players set @s holdPistol 0
scoreboard players set @s[scores={isMainHandPistol=1}] holdPistol 1
scoreboard players set @s[scores={isOffHandPistol=1}] holdPistol -1
scoreboard players set @s[scores={isMainHandPistol=1,isOffHandPistol=1}] holdPistol 2
