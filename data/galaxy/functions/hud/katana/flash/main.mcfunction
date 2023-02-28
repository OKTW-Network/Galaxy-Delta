scoreboard players operation #1 calcu_temp = @s galaxy.katana.flash.cooldown
execute if entity @s[scores={galaxy.katana.flash.moved=1..}] run scoreboard players operation #1 calcu_temp *= #1000 num
execute if entity @s[scores={galaxy.katana.flash.moved=1..}] run scoreboard players operation #1 calcu_temp /= @s galaxy.katana.flash.cooldownMax
execute if score #1 calcu_temp matches 901..1000 run data modify storage galaxy:temp +HUD.katana.flash_value set value '[{"text":"+","color":"yellow"},{"text":"---------","color":"gray"}]'
execute if score #1 calcu_temp matches 801..900 run data modify storage galaxy:temp +HUD.katana.flash_value set value '[{"text":"=","color":"green"},{"text":"+","color":"yellow"},{"text":"--------","color":"gray"}]'
execute if score #1 calcu_temp matches 701..800 run data modify storage galaxy:temp +HUD.katana.flash_value set value '[{"text":"==","color":"green"},{"text":"+","color":"yellow"},{"text":"-------","color":"gray"}]'
execute if score #1 calcu_temp matches 601..700 run data modify storage galaxy:temp +HUD.katana.flash_value set value '[{"text":"===","color":"green"},{"text":"+","color":"yellow"},{"text":"------","color":"gray"}]'
execute if score #1 calcu_temp matches 501..600 run data modify storage galaxy:temp +HUD.katana.flash_value set value '[{"text":"====","color":"green"},{"text":"+","color":"yellow"},{"text":"-----","color":"gray"}]'
execute if score #1 calcu_temp matches 401..500 run data modify storage galaxy:temp +HUD.katana.flash_value set value '[{"text":"=====","color":"green"},{"text":"+","color":"yellow"},{"text":"----","color":"gray"}]'
execute if score #1 calcu_temp matches 301..400 run data modify storage galaxy:temp +HUD.katana.flash_value set value '[{"text":"======","color":"green"},{"text":"+","color":"yellow"},{"text":"---","color":"gray"}]'
execute if score #1 calcu_temp matches 201..300 run data modify storage galaxy:temp +HUD.katana.flash_value set value '[{"text":"=======","color":"green"},{"text":"+","color":"yellow"},{"text":"--","color":"gray"}]'
execute if score #1 calcu_temp matches 101..200 run data modify storage galaxy:temp +HUD.katana.flash_value set value '[{"text":"========","color":"green"},{"text":"+","color":"yellow"},{"text":"-","color":"gray"}]'
execute if score #1 calcu_temp matches 1..100 run data modify storage galaxy:temp +HUD.katana.flash_value set value '[{"text":"=========","color":"green"},{"text":"+","color":"yellow"}]'
execute if score #1 calcu_temp matches ..0 run data modify storage galaxy:temp +HUD.katana.flash_value set value '{"text":"==========","color":"green"}'

data modify storage galaxy:temp +HUD.katana.flash set value '{"translate":"%s [%s]","with":[{"translate":"action.galaxy.katana.flash","color":"gray"},{"nbt":"+HUD.katana.flash_value","storage":"galaxy:temp","interpret":true}],"color":"dark_gray"}'
execute if predicate galaxy:weapon/katana/posture/1 if score #1 calcu_temp matches ..0 run data modify storage galaxy:temp +HUD.katana.flash set value '{"translate":"%s [%s]","with":[{"translate":"action.galaxy.katana.flash","color":"aqua"},{"nbt":"+HUD.katana.flash_value","storage":"galaxy:temp","interpret":true}],"color":"gray"}'

title @s actionbar {"nbt":"+HUD.katana.flash","storage":"galaxy:temp","interpret":true}

tag @s add galaxy.hud.succes
