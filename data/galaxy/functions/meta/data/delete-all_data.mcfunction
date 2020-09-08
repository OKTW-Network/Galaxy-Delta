scoreboard players set #1 calcu_temp 0
execute as @e[tag=dataBase] at @s store result score #1 calcu_temp run kill @e[tag=dataContainer,distance=..0.05]
execute if score #1 calcu_temp matches 1.. run tellraw @s ["Deleted ",{"score":{"name":"#1","objective":"calcu_temp"}}," data container(s)"]
execute if score #1 calcu_temp matches 0 run tellraw @s ["",{"text":"No data container was found","color":"red"}]
