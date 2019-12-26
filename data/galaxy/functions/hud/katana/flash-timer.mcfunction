execute store result score #calculation_temp1 numeric run scoreboard players get @s timActFlash
execute store result score #calculation_temp2 numeric run scoreboard players get #katana_act_flash_timer Config
scoreboard players operation #calculation_temp1 numeric *= #static_1000 numeric
scoreboard players operation #calculation_temp1 numeric /= #calculation_temp2 numeric
execute if score #calculation_temp1 numeric matches 901..1000 run title @s actionbar [{"translate":"action.flash","color":"aqua"},{"text":" [","color":"gray"},{"text":"=========","color":"red"},{"text":"+","color":"yellow"},{"text":"]","color":"gray"}]
execute if score #calculation_temp1 numeric matches 801..900 run title @s actionbar [{"translate":"action.flash","color":"aqua"},{"text":" [","color":"gray"},{"text":"========","color":"red"},{"text":"+","color":"yellow"},{"text":"-","color":"gray"},{"text":"]","color":"gray"}]
execute if score #calculation_temp1 numeric matches 701..800 run title @s actionbar [{"translate":"action.flash","color":"aqua"},{"text":" [","color":"gray"},{"text":"=======","color":"red"},{"text":"+","color":"yellow"},{"text":"--","color":"gray"},{"text":"]","color":"gray"}]
execute if score #calculation_temp1 numeric matches 601..700 run title @s actionbar [{"translate":"action.flash","color":"aqua"},{"text":" [","color":"gray"},{"text":"======","color":"red"},{"text":"+","color":"yellow"},{"text":"---","color":"gray"},{"text":"]","color":"gray"}]
execute if score #calculation_temp1 numeric matches 501..600 run title @s actionbar [{"translate":"action.flash","color":"aqua"},{"text":" [","color":"gray"},{"text":"=====","color":"red"},{"text":"+","color":"yellow"},{"text":"----","color":"gray"},{"text":"]","color":"gray"}]
execute if score #calculation_temp1 numeric matches 401..500 run title @s actionbar [{"translate":"action.flash","color":"aqua"},{"text":" [","color":"gray"},{"text":"====","color":"red"},{"text":"+","color":"yellow"},{"text":"-----","color":"gray"},{"text":"]","color":"gray"}]
execute if score #calculation_temp1 numeric matches 301..400 run title @s actionbar [{"translate":"action.flash","color":"aqua"},{"text":" [","color":"gray"},{"text":"===","color":"red"},{"text":"+","color":"yellow"},{"text":"------","color":"gray"},{"text":"]","color":"gray"}]
execute if score #calculation_temp1 numeric matches 201..300 run title @s actionbar [{"translate":"action.flash","color":"aqua"},{"text":" [","color":"gray"},{"text":"==","color":"red"},{"text":"+","color":"yellow"},{"text":"-------","color":"gray"},{"text":"]","color":"gray"}]
execute if score #calculation_temp1 numeric matches 101..200 run title @s actionbar [{"translate":"action.flash","color":"aqua"},{"text":" [","color":"gray"},{"text":"=","color":"red"},{"text":"+","color":"yellow"},{"text":"--------","color":"gray"},{"text":"]","color":"gray"}]
execute if score #calculation_temp1 numeric matches 1..100 run title @s actionbar [{"translate":"action.flash","color":"aqua"},{"text":" [","color":"gray"},{"text":"+","color":"yellow"},{"text":"---------","color":"gray"},{"text":"]","color":"gray"}]
execute if score #calculation_temp1 numeric matches ..0 run title @s actionbar [{"translate":"action.flash","color":"gray"},{"text":" [","color":"dark_gray"},{"text":"----------","color":"gray"},{"text":"]","color":"dark_gray"}]

scoreboard players set @s hudKatana 5
