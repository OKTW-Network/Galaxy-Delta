### Triggered with main detector

function cu:detector/sneak
function cu:detector/hand_main-empty
function cu:detector/on_ground
function galaxy:weapon/katana/meta/detector/holding-katana
function galaxy:weapon/katana/meta/detector/holding-edge
function galaxy:weapon/katana/meta/detector/holding-scabbard

scoreboard players set #calculation_temp10 numeric 0

# katana actions
execute if score #katana_act_swap Config matches 1 if entity @s[tag=isSneak,tag=isHandMainEmpty,scores={isHoldKatana=1,cdActSwapPull=..0}] store success score #calculation_temp10 numeric run function galaxy:weapon/katana/action/swap_pull
execute if score #katana_act_swap Config matches 1 if score #calculation_temp10 numeric matches 0 if entity @s[tag=isSneak,scores={isHoldEdge=1,isHoldScabbard=1,cdActSwapPut=..0}] store success score #calculation_temp10 numeric run function galaxy:weapon/katana/action/swap_put
execute if score #katana_act_stun Config matches 1 if score #calculation_temp10 numeric matches 0 if entity @s[tag=!isSneak,scores={isHoldEdge=1,isHoldScabbard=1,cdActStun=..0}] store success score #calculation_temp10 numeric run function galaxy:weapon/katana/action/stun
execute if score #katana_act_flash Config matches 1 if score #katana_act_swap Config matches 1 if score #calculation_temp10 numeric matches 0 if entity @s[tag=isSneak,tag=isOnGround,scores={isHoldEdge=1,isHoldScabbard=1,timActFlash=1..,cdActFlash=..0}] run function galaxy:weapon/katana/action/flash/main
