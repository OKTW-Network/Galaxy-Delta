function galaxy:weapon/katana/meta/detector/style-scabbard
function galaxy:weapon/katana/meta/detector/style-edge

scoreboard players set #calculation_temp1 numeric 0

execute store success score #calculation_temp1 numeric if entity @s[scores={styleScabbard=1,styleEdge=1}] run function galaxy:weapon/katana/replace-hand_off/katana
execute store success score #calculation_temp1 numeric if entity @s[scores={styleScabbard=2,styleEdge=2}] run function galaxy:weapon/katana/replace-hand_off/nazo

# execute if score #calculation_temp1 numeric matches 0 if score #katana_act_swap_sound Config matches 1 at @s run playsound galaxy:katana.stuck player @a ~ ~ ~ 1

execute if score #calculation_temp1 numeric matches 1 if score #katana_act_swap_sound Config matches 1 at @s run playsound galaxy:katana.store player @a ~ ~ ~ 1
execute if score #calculation_temp1 numeric matches 1 run replaceitem entity @s weapon.mainhand minecraft:air
execute if score #calculation_temp1 numeric matches 1 store result score @s cdActSwapPut run scoreboard players get #katana_act_swap_put_cd Config
execute if score #calculation_temp1 numeric matches 1 store result score @s cdActSwapPull run scoreboard players get #katana_act_swap_pull_cd Config
