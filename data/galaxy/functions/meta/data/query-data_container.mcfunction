scoreboard players set #1 calcu_temp 0
execute as @e[tag=dataContainer] run scoreboard players add #1 calcu_temp 1
execute if score #1 calcu_temp matches 1.. run tellraw @s ["Found ",{"score":{"name":"#1","objective":"calcu_temp"}}," data container(s)"]
execute if score #1 calcu_temp matches 0 run tellraw @s ["",{"text":"No data container was found","color":"red"}]
