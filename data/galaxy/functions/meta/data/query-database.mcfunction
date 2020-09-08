scoreboard players set #1 calcu_temp 0
execute as @e[tag=dataBase] run scoreboard players add #1 calcu_temp 1
execute if score #1 calcu_temp matches 1.. run tellraw @s ["Found ",{"score":{"name":"#1","objective":"calcu_temp"}}," database(s)"]
execute if score #1 calcu_temp matches 0 run tellraw @s ["",{"text":"No database was found","color":"red"}]
