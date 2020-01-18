scoreboard players set #calculation_temp1 numeric 0
execute as @e[tag=dataBase] run scoreboard players add #calculation_temp1 numeric 1
execute if score #calculation_temp1 numeric matches 1.. run tellraw @s ["Found ",{"score":{"name":"#calculation_temp1","objective":"numeric"}}," database(s)"]
execute if score #calculation_temp1 numeric matches 0 run tellraw @s ["",{"text":"No database was found","color":"red"}]
