scoreboard players operation #1 temp = @s galaxy.gun.temperature.mainHand
scoreboard players operation #1 temp -= @s galaxy.gun.temperatureMin.mainHand
scoreboard players operation #2 temp = @s galaxy.gun.temperatureMax.mainHand
scoreboard players operation #2 temp -= @s galaxy.gun.temperatureMin.mainHand
scoreboard players operation #1 temp *= #1000 num
scoreboard players operation #1 temp /= #2 temp

execute if score @s galaxy.gun.temperature.mainHand matches 100.. run data modify storage galaxy:temp +hud.gun.temperature.mainhand_value_space set value '{"text":""}'
execute if score @s galaxy.gun.temperature.mainHand matches 10..99 run data modify storage galaxy:temp +hud.gun.temperature.mainhand_value_space set value '{"text":" "}'
execute if score @s galaxy.gun.temperature.mainHand matches 0..9 run data modify storage galaxy:temp +hud.gun.temperature.mainhand_value_space set value '{"text":"  "}'

execute if score @s galaxy.gun.overheat.mainHand matches 0 run data modify storage galaxy:temp +hud.gun.temperature.mainhand_value set value '{"translate":"%s%sK","with":[{"nbt":"+hud.gun.temperature.mainhand_value_space","storage":"galaxy:temp","interpret":true},{"score":{"name":"*","objective":"galaxy.gun.temperature.mainHand"}}],"color":"aqua"}'
execute if score @s galaxy.gun.overheat.mainHand matches 1 run data modify storage galaxy:temp +hud.gun.temperature.mainhand_value set value '{"translate":"%s%sK","with":[{"nbt":"+hud.gun.temperature.mainhand_value_space","storage":"galaxy:temp","interpret":true},{"score":{"name":"*","objective":"galaxy.gun.temperature.mainHand"}}],"color":"red"}'

execute if score #1 temp matches 901.. run data modify storage galaxy:temp +hud.gun.temperature.mainhand_bar_front_raw set value '{"text":"=========="}'
execute if score #1 temp matches 801..900 run data modify storage galaxy:temp +hud.gun.temperature.mainhand_bar_front_raw set value '{"text":"========="}'
execute if score #1 temp matches 701..800 run data modify storage galaxy:temp +hud.gun.temperature.mainhand_bar_front_raw set value '{"text":"========"}'
execute if score #1 temp matches 601..700 run data modify storage galaxy:temp +hud.gun.temperature.mainhand_bar_front_raw set value '{"text":"======="}'
execute if score #1 temp matches 501..600 run data modify storage galaxy:temp +hud.gun.temperature.mainhand_bar_front_raw set value '{"text":"======"}'
execute if score #1 temp matches 401..500 run data modify storage galaxy:temp +hud.gun.temperature.mainhand_bar_front_raw set value '{"text":"====="}'
execute if score #1 temp matches 301..400 run data modify storage galaxy:temp +hud.gun.temperature.mainhand_bar_front_raw set value '{"text":"===="}'
execute if score #1 temp matches 201..300 run data modify storage galaxy:temp +hud.gun.temperature.mainhand_bar_front_raw set value '{"text":"==="}'
execute if score #1 temp matches 101..200 run data modify storage galaxy:temp +hud.gun.temperature.mainhand_bar_front_raw set value '{"text":"=="}'
execute if score #1 temp matches 1..100 run data modify storage galaxy:temp +hud.gun.temperature.mainhand_bar_front_raw set value '{"text":"="}'
execute if score #1 temp matches ..0 run data modify storage galaxy:temp +hud.gun.temperature.mainhand_bar_front_raw set value '{"text":""}'

execute if score @s galaxy.gun.overheat.mainHand matches 0 if score #1 temp matches 668.. run data modify storage galaxy:temp +hud.gun.temperature.mainhand_bar_front set value '{"nbt":"+hud.gun.temperature.mainhand_bar_front_raw","storage":"galaxy:temp","interpret":true,"color":"red"}'
execute if score @s galaxy.gun.overheat.mainHand matches 0 if score #1 temp matches 334..667 run data modify storage galaxy:temp +hud.gun.temperature.mainhand_bar_front set value '{"nbt":"+hud.gun.temperature.mainhand_bar_front_raw","storage":"galaxy:temp","interpret":true,"color":"yellow"}'
execute if score @s galaxy.gun.overheat.mainHand matches 0 if score #1 temp matches 0..333 run data modify storage galaxy:temp +hud.gun.temperature.mainhand_bar_front set value '{"nbt":"+hud.gun.temperature.mainhand_bar_front_raw","storage":"galaxy:temp","interpret":true,"color":"green"}'
execute if score @s galaxy.gun.overheat.mainHand matches 1 run data modify storage galaxy:temp +hud.gun.temperature.mainhand_bar_front set value '{"nbt":"+hud.gun.temperature.mainhand_bar_front_raw","storage":"galaxy:temp","interpret":true,"color":"red"}'

execute if score #1 temp matches 901.. run data modify storage galaxy:temp +hud.gun.temperature.mainhand_bar_back set value '{"text":"","color":"gray"}'
execute if score #1 temp matches 801..900 run data modify storage galaxy:temp +hud.gun.temperature.mainhand_bar_back set value '{"text":"=","color":"gray"}'
execute if score #1 temp matches 701..800 run data modify storage galaxy:temp +hud.gun.temperature.mainhand_bar_back set value '{"text":"==","color":"gray"}'
execute if score #1 temp matches 601..700 run data modify storage galaxy:temp +hud.gun.temperature.mainhand_bar_back set value '{"text":"===","color":"gray"}'
execute if score #1 temp matches 501..600 run data modify storage galaxy:temp +hud.gun.temperature.mainhand_bar_back set value '{"text":"====","color":"gray"}'
execute if score #1 temp matches 401..500 run data modify storage galaxy:temp +hud.gun.temperature.mainhand_bar_back set value '{"text":"=====","color":"gray"}'
execute if score #1 temp matches 301..400 run data modify storage galaxy:temp +hud.gun.temperature.mainhand_bar_back set value '{"text":"======","color":"gray"}'
execute if score #1 temp matches 201..300 run data modify storage galaxy:temp +hud.gun.temperature.mainhand_bar_back set value '{"text":"=======","color":"gray"}'
execute if score #1 temp matches 101..200 run data modify storage galaxy:temp +hud.gun.temperature.mainhand_bar_back set value '{"text":"========","color":"gray"}'
execute if score #1 temp matches 1..100 run data modify storage galaxy:temp +hud.gun.temperature.mainhand_bar_back set value '{"text":"=========","color":"gray"}'
execute if score #1 temp matches ..0 run data modify storage galaxy:temp +hud.gun.temperature.mainhand_bar_back set value '{"text":"==========","color":"gray"}'

execute unless score #1 temp matches 1001.. run data modify storage galaxy:temp +hud.gun.temperature.mainhand_overheat set value '{"text":"-","color":"gray"}'
execute if score #1 temp matches 1001.. run data modify storage galaxy:temp +hud.gun.temperature.mainhand_overheat set value '{"text":"-","color":"red"}'

data modify storage galaxy:temp +hud.gun.temperature.mainhand set value '{"translate":"%s [%s%s%s%s]","with":[{"nbt":"+hud.gun.temperature.mainhand_value","storage":"galaxy:temp","interpret":true},{"nbt":"+hud.gun.temperature.mainhand_bar_front","storage":"galaxy:temp","interpret":true},{"nbt":"+hud.gun.temperature.mainhand_bar_back","storage":"galaxy:temp","interpret":true},{"text":"|","color":"dark_red"},{"nbt":"+hud.gun.temperature.mainhand_overheat","storage":"galaxy:temp","interpret":true}],"color":"dark_gray"}'
execute unless score @s galaxy.gun.interval.mainHand matches 1.. unless score @s galaxy.gun.overheat.mainHand matches 1 run data modify storage galaxy:temp +hud.gun.temperature.mainhand set value '{"translate":"%s [%s%s%s%s]","with":[{"nbt":"+hud.gun.temperature.mainhand_value","storage":"galaxy:temp","interpret":true},{"nbt":"+hud.gun.temperature.mainhand_bar_front","storage":"galaxy:temp","interpret":true},{"nbt":"+hud.gun.temperature.mainhand_bar_back","storage":"galaxy:temp","interpret":true},{"text":"|","color":"dark_red"},{"nbt":"+hud.gun.temperature.mainhand_overheat","storage":"galaxy:temp","interpret":true}],"color":"gray"}'
