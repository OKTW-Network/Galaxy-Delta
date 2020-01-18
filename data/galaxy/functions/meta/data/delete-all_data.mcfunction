scoreboard players set #calculation_temp1 numeric 0
execute as @e[tag=dataBase] at @s store result score #calculation_temp1 numeric run kill @e[tag=dataContainer,distance=..0.05]
execute if score #calculation_temp1 numeric matches 1.. run tellraw @s ["Deleted ",{"score":{"name":"#calculation_temp1","objective":"numeric"}}," data container(s)"]
execute if score #calculation_temp1 numeric matches 0 run tellraw @s ["",{"text":"No data container was found","color":"red"}]
