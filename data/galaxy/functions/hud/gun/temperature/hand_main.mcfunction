scoreboard players operation #1 calcu_temp = @s MhGunTemper
scoreboard players operation #1 calcu_temp -= @s MhGunTemperMin
scoreboard players operation #2 calcu_temp = @s MhGunTemperMax
scoreboard players operation #2 calcu_temp -= @s MhGunTemperMin
scoreboard players operation #1 calcu_temp *= #1000 num
scoreboard players operation #1 calcu_temp /= #2 calcu_temp

execute if score @s MhGunTemper matches 100.. run data modify storage galaxy:temp +HUD.gun.temperature.mainhand_value_space set value '{"text":""}'
execute if score @s MhGunTemper matches 10..99 run data modify storage galaxy:temp +HUD.gun.temperature.mainhand_value_space set value '{"text":" "}'
execute if score @s MhGunTemper matches 0..9 run data modify storage galaxy:temp +HUD.gun.temperature.mainhand_value_space set value '{"text":"  "}'

execute if score @s MhGunOverheat matches 0 run data modify storage galaxy:temp +HUD.gun.temperature.mainhand_value set value '{"translate":"%s%sK","with":[{"nbt":"+HUD.gun.temperature.mainhand_value_space","storage":"galaxy:temp","interpret":true},{"score":{"name":"*","objective":"MhGunTemper"}}],"color":"aqua"}'
execute if score @s MhGunOverheat matches 1 run data modify storage galaxy:temp +HUD.gun.temperature.mainhand_value set value '{"translate":"%s%sK","with":[{"nbt":"+HUD.gun.temperature.mainhand_value_space","storage":"galaxy:temp","interpret":true},{"score":{"name":"*","objective":"MhGunTemper"}}],"color":"red"}'

execute if score #1 calcu_temp matches 901.. run data modify storage galaxy:temp +HUD.gun.temperature.mainhand_bar_front_raw set value '{"text":"=========="}'
execute if score #1 calcu_temp matches 801..900 run data modify storage galaxy:temp +HUD.gun.temperature.mainhand_bar_front_raw set value '{"text":"========="}'
execute if score #1 calcu_temp matches 701..800 run data modify storage galaxy:temp +HUD.gun.temperature.mainhand_bar_front_raw set value '{"text":"========"}'
execute if score #1 calcu_temp matches 601..700 run data modify storage galaxy:temp +HUD.gun.temperature.mainhand_bar_front_raw set value '{"text":"======="}'
execute if score #1 calcu_temp matches 501..600 run data modify storage galaxy:temp +HUD.gun.temperature.mainhand_bar_front_raw set value '{"text":"======"}'
execute if score #1 calcu_temp matches 401..500 run data modify storage galaxy:temp +HUD.gun.temperature.mainhand_bar_front_raw set value '{"text":"====="}'
execute if score #1 calcu_temp matches 301..400 run data modify storage galaxy:temp +HUD.gun.temperature.mainhand_bar_front_raw set value '{"text":"===="}'
execute if score #1 calcu_temp matches 201..300 run data modify storage galaxy:temp +HUD.gun.temperature.mainhand_bar_front_raw set value '{"text":"==="}'
execute if score #1 calcu_temp matches 101..200 run data modify storage galaxy:temp +HUD.gun.temperature.mainhand_bar_front_raw set value '{"text":"=="}'
execute if score #1 calcu_temp matches 1..100 run data modify storage galaxy:temp +HUD.gun.temperature.mainhand_bar_front_raw set value '{"text":"="}'
execute if score #1 calcu_temp matches ..0 run data modify storage galaxy:temp +HUD.gun.temperature.mainhand_bar_front_raw set value '{"text":""}'

execute if score @s MhGunOverheat matches 0 if score #1 calcu_temp matches 668.. run data modify storage galaxy:temp +HUD.gun.temperature.mainhand_bar_front set value '{"nbt":"+HUD.gun.temperature.mainhand_bar_front_raw","storage":"galaxy:temp","interpret":true,"color":"red"}'
execute if score @s MhGunOverheat matches 0 if score #1 calcu_temp matches 334..667 run data modify storage galaxy:temp +HUD.gun.temperature.mainhand_bar_front set value '{"nbt":"+HUD.gun.temperature.mainhand_bar_front_raw","storage":"galaxy:temp","interpret":true,"color":"yellow"}'
execute if score @s MhGunOverheat matches 0 if score #1 calcu_temp matches 0..333 run data modify storage galaxy:temp +HUD.gun.temperature.mainhand_bar_front set value '{"nbt":"+HUD.gun.temperature.mainhand_bar_front_raw","storage":"galaxy:temp","interpret":true,"color":"green"}'
execute if score @s MhGunOverheat matches 1 run data modify storage galaxy:temp +HUD.gun.temperature.mainhand_bar_front set value '{"nbt":"+HUD.gun.temperature.mainhand_bar_front_raw","storage":"galaxy:temp","interpret":true,"color":"red"}'

execute if score #1 calcu_temp matches 901.. run data modify storage galaxy:temp +HUD.gun.temperature.mainhand_bar_back set value '{"text":"","color":"gray"}'
execute if score #1 calcu_temp matches 801..900 run data modify storage galaxy:temp +HUD.gun.temperature.mainhand_bar_back set value '{"text":"=","color":"gray"}'
execute if score #1 calcu_temp matches 701..800 run data modify storage galaxy:temp +HUD.gun.temperature.mainhand_bar_back set value '{"text":"==","color":"gray"}'
execute if score #1 calcu_temp matches 601..700 run data modify storage galaxy:temp +HUD.gun.temperature.mainhand_bar_back set value '{"text":"===","color":"gray"}'
execute if score #1 calcu_temp matches 501..600 run data modify storage galaxy:temp +HUD.gun.temperature.mainhand_bar_back set value '{"text":"====","color":"gray"}'
execute if score #1 calcu_temp matches 401..500 run data modify storage galaxy:temp +HUD.gun.temperature.mainhand_bar_back set value '{"text":"=====","color":"gray"}'
execute if score #1 calcu_temp matches 301..400 run data modify storage galaxy:temp +HUD.gun.temperature.mainhand_bar_back set value '{"text":"======","color":"gray"}'
execute if score #1 calcu_temp matches 201..300 run data modify storage galaxy:temp +HUD.gun.temperature.mainhand_bar_back set value '{"text":"=======","color":"gray"}'
execute if score #1 calcu_temp matches 101..200 run data modify storage galaxy:temp +HUD.gun.temperature.mainhand_bar_back set value '{"text":"========","color":"gray"}'
execute if score #1 calcu_temp matches 1..100 run data modify storage galaxy:temp +HUD.gun.temperature.mainhand_bar_back set value '{"text":"=========","color":"gray"}'
execute if score #1 calcu_temp matches ..0 run data modify storage galaxy:temp +HUD.gun.temperature.mainhand_bar_back set value '{"text":"==========","color":"gray"}'

execute unless score #1 calcu_temp matches 1001.. run data modify storage galaxy:temp +HUD.gun.temperature.mainhand_overheat set value '{"text":"-","color":"gray"}'
execute if score #1 calcu_temp matches 1001.. run data modify storage galaxy:temp +HUD.gun.temperature.mainhand_overheat set value '{"text":"-","color":"red"}'

data modify storage galaxy:temp +HUD.gun.temperature.mainhand set value '{"translate":"%s [%s%s%s%s]","with":[{"nbt":"+HUD.gun.temperature.mainhand_value","storage":"galaxy:temp","interpret":true},{"nbt":"+HUD.gun.temperature.mainhand_bar_front","storage":"galaxy:temp","interpret":true},{"nbt":"+HUD.gun.temperature.mainhand_bar_back","storage":"galaxy:temp","interpret":true},{"text":"|","color":"dark_red"},{"nbt":"+HUD.gun.temperature.mainhand_overheat","storage":"galaxy:temp","interpret":true}],"color":"dark_gray"}'
execute unless score @s gunDelay matches 1.. unless score @s MhGunOverheat matches 1 run data modify storage galaxy:temp +HUD.gun.temperature.mainhand set value '{"translate":"%s [%s%s%s%s]","with":[{"nbt":"+HUD.gun.temperature.mainhand_value","storage":"galaxy:temp","interpret":true},{"nbt":"+HUD.gun.temperature.mainhand_bar_front","storage":"galaxy:temp","interpret":true},{"nbt":"+HUD.gun.temperature.mainhand_bar_back","storage":"galaxy:temp","interpret":true},{"text":"|","color":"dark_red"},{"nbt":"+HUD.gun.temperature.mainhand_overheat","storage":"galaxy:temp","interpret":true}],"color":"gray"}'
