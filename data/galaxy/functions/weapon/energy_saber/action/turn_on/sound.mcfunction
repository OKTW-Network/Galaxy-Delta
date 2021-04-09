tag @s add self

execute if score #galaxy$energy_saber_act_turn_sound Config matches 1 at @s run playsound galaxy:energy_saber.turn_on.self player @s
execute if score #galaxy$energy_saber_act_turn_sound Config matches 1 at @s run playsound galaxy:energy_saber.turn_on player @a[tag=!self]

tag @s remove self