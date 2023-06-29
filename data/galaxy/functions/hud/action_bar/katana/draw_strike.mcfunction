scoreboard players operation #1 temp = @s galaxy.katana.drawStrikeCooldown
scoreboard players operation #1 temp *= #1000 num
scoreboard players operation #1 temp /= @s galaxy.katana.drawStrikeCooldownMax
execute if score #1 temp matches 901..1000 run data modify storage galaxy:temp +hud.katana.draw_strike._bar set value '[{"text":"+","color":"yellow"},{"text":"---------","color":"gray"}]'
execute if score #1 temp matches 801..900 run data modify storage galaxy:temp +hud.katana.draw_strike._bar set value '[{"text":"=","color":"green"},{"text":"+","color":"yellow"},{"text":"--------","color":"gray"}]'
execute if score #1 temp matches 701..800 run data modify storage galaxy:temp +hud.katana.draw_strike._bar set value '[{"text":"==","color":"green"},{"text":"+","color":"yellow"},{"text":"-------","color":"gray"}]'
execute if score #1 temp matches 601..700 run data modify storage galaxy:temp +hud.katana.draw_strike._bar set value '[{"text":"===","color":"green"},{"text":"+","color":"yellow"},{"text":"------","color":"gray"}]'
execute if score #1 temp matches 501..600 run data modify storage galaxy:temp +hud.katana.draw_strike._bar set value '[{"text":"====","color":"green"},{"text":"+","color":"yellow"},{"text":"-----","color":"gray"}]'
execute if score #1 temp matches 401..500 run data modify storage galaxy:temp +hud.katana.draw_strike._bar set value '[{"text":"=====","color":"green"},{"text":"+","color":"yellow"},{"text":"----","color":"gray"}]'
execute if score #1 temp matches 301..400 run data modify storage galaxy:temp +hud.katana.draw_strike._bar set value '[{"text":"======","color":"green"},{"text":"+","color":"yellow"},{"text":"---","color":"gray"}]'
execute if score #1 temp matches 201..300 run data modify storage galaxy:temp +hud.katana.draw_strike._bar set value '[{"text":"=======","color":"green"},{"text":"+","color":"yellow"},{"text":"--","color":"gray"}]'
execute if score #1 temp matches 101..200 run data modify storage galaxy:temp +hud.katana.draw_strike._bar set value '[{"text":"========","color":"green"},{"text":"+","color":"yellow"},{"text":"-","color":"gray"}]'
execute if score #1 temp matches 1..100 run data modify storage galaxy:temp +hud.katana.draw_strike._bar set value '[{"text":"=========","color":"green"},{"text":"+","color":"yellow"}]'
execute if score #1 temp matches ..0 run data modify storage galaxy:temp +hud.katana.draw_strike._bar set value '{"text":"==========","color":"green"}'

data modify storage galaxy:temp +hud.katana.draw_strike.result set value '{"translate":"%s [%s]","with":[{"translate":"attribute.name.galaxy.katana.draw_strike","color":"gray"},{"nbt":"+hud.katana.draw_strike._bar","storage":"galaxy:temp","interpret":true}],"color":"dark_gray"}'
execute if predicate galaxy:weapon/katana/posture/action/draw if score #1 temp matches ..0 run data modify storage galaxy:temp +hud.katana.draw_strike.result set value '{"translate":"%s [%s]","with":[{"translate":"attribute.name.galaxy.katana.draw_strike","color":"aqua"},{"nbt":"+hud.katana.draw_strike._bar","storage":"galaxy:temp","interpret":true}],"color":"gray"}'

title @s actionbar {"nbt":"+hud.katana.draw_strike.result","storage":"galaxy:temp","interpret":true}

tag @s add galaxy._success.hud.action_bar
