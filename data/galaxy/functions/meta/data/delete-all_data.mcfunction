execute as @e[tag=dataBase] at @s store result score #calculation_temp1 numeric run kill @e[tag=dataContainer,distance=..0.05]
tellraw @s ["Deleted ",{"score":{"name":"#calculation_temp1","objective":"numeric"}}," data container(s)"]
