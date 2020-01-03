function galaxy:meta/detector/sneak
function galaxy:meta/detector/hand_main-empty
function galaxy:weapon/katana/meta/detector/holding-katana
function galaxy:weapon/katana/meta/detector/holding-edge
function galaxy:weapon/katana/meta/detector/holding-scabbard

execute if entity @s[scores={isHoldKatana=1}] run function galaxy:hud/katana
execute if entity @s[scores={isHoldScabbard=1,isHoldEdge=1}] run function galaxy:hud/katana

execute as @a run scoreboard players set @s hudKatana 0
execute if score #hud_katana_act_swap Config matches 1 if score #hud_katana_act_flash Config matches 0 as @a[scores={isHoldKatana=1,isSneak=1,isMainHandClear=1}] run function galaxy:hud/katana/swap-pull
execute if score #hud_katana_act_swap Config matches 1 if score #hud_katana_act_flash Config matches 0 as @a[scores={isHoldScabbard=1,isHoldEdge=1,isSneak=1}] run function galaxy:hud/katana/swap-put
execute if score #hud_katana_act_stun Config matches 1 as @a[scores={isHoldScabbard=1,isHoldEdge=1,isSneak=0}] run function galaxy:hud/katana/stun
execute if score #hud_katana_act_flash Config matches 1 as @a[scores={isHoldKatana=1,isSneak=1,isMainHandClear=1},nbt={OnGround:1b}] run function galaxy:hud/katana/flash
execute if score #hud_katana_act_flash Config matches 1 as @a[scores={isHoldScabbard=1,isHoldEdge=1,isSneak=1},nbt={OnGround:1b}] run function galaxy:hud/katana/flash-timer
execute as @a[scores={hudKatana=1..}] run scoreboard players set @s isKatanaHUD 1
execute as @a[scores={hudKatana=0,isKatanaHUD=1}] run title @s actionbar {"text":""}
execute as @a[scores={hudKatana=0}] run scoreboard players set @s isKatanaHUD 0
