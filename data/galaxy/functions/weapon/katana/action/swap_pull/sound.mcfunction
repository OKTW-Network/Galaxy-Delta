tag @s add self

execute if score #galaxy$katana_act_swap_sound Config matches 1 at @s run playsound galaxy:katana.draw.self player @s
execute if score #galaxy$katana_act_swap_sound Config matches 1 at @s run playsound galaxy:katana.draw player @a[tag=!self]

tag @s remove self