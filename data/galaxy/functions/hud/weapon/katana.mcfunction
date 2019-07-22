execute as @a run scoreboard players set @s hudKatana 0
execute as @a[scores={isHoldScabbard=1,isHoldEdge=1}] if score #hud Config matches 1 if score #hud_katana Config matches 1 if score #hud_katana_act_stun Config matches 1 run scoreboard players set @s hudKatana 1
execute as @a[scores={isHoldKatana=1}] if score #hud Config matches 1 if score #hud_katana Config matches 1 if score #hud_katana_act_swap Config matches 1 run scoreboard players set @s hudKatana 2
execute as @a[scores={hudKatana=1..}] run scoreboard players set @s isKatanaHUD 1

execute as @a[scores={hudKatana=1}] store result score @s cdActStunTemp1 run scoreboard players get @s cdActStun
execute as @a[scores={hudKatana=1,sucActStun=1..}] store result score @s cdActStunTemp2 run scoreboard players get #katana_act_stun_hit_cd Config
execute as @a[scores={hudKatana=1,sucActStun=0}] store result score @s cdActStunTemp2 run scoreboard players get #katana_act_stun_miss_cd Config
execute as @a run scoreboard players operation @s cdActStunTemp1 *= #static_1000 numeric
execute as @a run scoreboard players operation @s cdActStunTemp1 /= @s cdActStunTemp2

execute as @a[scores={hudKatana=1,cdActStunTemp1=951..1000}] run title @s actionbar [{"translate":"action.stun","color":"gray"},{"text":" [","color":"dark_gray"},{"text":"----------","color":"gray"},{"text":"]","color":"dark_gray"}]
execute as @a[scores={hudKatana=1,cdActStunTemp1=901..950}] run title @s actionbar [{"translate":"action.stun","color":"gray"},{"text":" [","color":"dark_gray"},{"text":"+","color":"yellow"},{"text":"---------","color":"gray"},{"text":"]","color":"dark_gray"}]
execute as @a[scores={hudKatana=1,cdActStunTemp1=801..900}] run title @s actionbar [{"translate":"action.stun","color":"gray"},{"text":" [","color":"dark_gray"},{"text":"=","color":"green"},{"text":"+","color":"yellow"},{"text":"--------","color":"gray"},{"text":"]","color":"dark_gray"}]
execute as @a[scores={hudKatana=1,cdActStunTemp1=701..800}] run title @s actionbar [{"translate":"action.stun","color":"gray"},{"text":" [","color":"dark_gray"},{"text":"==","color":"green"},{"text":"+","color":"yellow"},{"text":"-------","color":"gray"},{"text":"]","color":"dark_gray"}]
execute as @a[scores={hudKatana=1,cdActStunTemp1=601..700}] run title @s actionbar [{"translate":"action.stun","color":"gray"},{"text":" [","color":"dark_gray"},{"text":"===","color":"green"},{"text":"+","color":"yellow"},{"text":"------","color":"gray"},{"text":"]","color":"dark_gray"}]
execute as @a[scores={hudKatana=1,cdActStunTemp1=501..600}] run title @s actionbar [{"translate":"action.stun","color":"gray"},{"text":" [","color":"dark_gray"},{"text":"====","color":"green"},{"text":"+","color":"yellow"},{"text":"-----","color":"gray"},{"text":"]","color":"dark_gray"}]
execute as @a[scores={hudKatana=1,cdActStunTemp1=401..500}] run title @s actionbar [{"translate":"action.stun","color":"gray"},{"text":" [","color":"dark_gray"},{"text":"=====","color":"green"},{"text":"+","color":"yellow"},{"text":"----","color":"gray"},{"text":"]","color":"dark_gray"}]
execute as @a[scores={hudKatana=1,cdActStunTemp1=301..400}] run title @s actionbar [{"translate":"action.stun","color":"gray"},{"text":" [","color":"dark_gray"},{"text":"======","color":"green"},{"text":"+","color":"yellow"},{"text":"---","color":"gray"},{"text":"]","color":"dark_gray"}]
execute as @a[scores={hudKatana=1,cdActStunTemp1=201..300}] run title @s actionbar [{"translate":"action.stun","color":"gray"},{"text":" [","color":"dark_gray"},{"text":"=======","color":"green"},{"text":"+","color":"yellow"},{"text":"--","color":"gray"},{"text":"]","color":"dark_gray"}]
execute as @a[scores={hudKatana=1,cdActStunTemp1=101..200}] run title @s actionbar [{"translate":"action.stun","color":"gray"},{"text":" [","color":"dark_gray"},{"text":"========","color":"green"},{"text":"+","color":"yellow"},{"text":"-","color":"gray"},{"text":"]","color":"dark_gray"}]
execute as @a[scores={hudKatana=1,cdActStunTemp1=1..100}] run title @s actionbar [{"translate":"action.stun","color":"gray"},{"text":" [","color":"dark_gray"},{"text":"=========","color":"green"},{"text":"+","color":"yellow"},{"text":"]","color":"dark_gray"}]
execute as @a[scores={hudKatana=1,cdActStunTemp1=0}] run title @s actionbar [{"translate":"action.stun","color":"aqua"},{"text":" [","color":"gray"},{"text":"==========","color":"green"},{"text":"]","color":"gray"}]

execute as @a[scores={hudKatana=2}] run title @s actionbar [{"translate":"action.swap.draw","color":"aqua"},{"text":" [","color":"gray"},{"keybind":"key.sneak","color":"green"},{"text":" + ","color":"yellow"},{"keybind":"key.use","color":"green"},{"text":"]","color":"gray"}]

execute as @a[scores={hudKatana=0,isKatanaHUD=1}] run title @s actionbar {"text":""}
execute as @a[scores={hudKatana=0}] run scoreboard players set @s isKatanaHUD 0
