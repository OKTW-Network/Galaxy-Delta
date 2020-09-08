tag @s add self

##execute if score #1 calcu_temp matches 0 if score #katana_act_swap_sound Config matches 1 at @s run playsound galaxy:katana.stuck.self player @s
##execute if score #1 calcu_temp matches 0 if score #katana_act_swap_sound Config matches 1 at @s run playsound galaxy:katana.stuck player @a[tag=!self]

execute if score #1 calcu_temp matches 1 if score #katana_act_swap_sound Config matches 1 at @s run playsound galaxy:katana.store.self player @s
execute if score #1 calcu_temp matches 1 if score #katana_act_swap_sound Config matches 1 at @s run playsound galaxy:katana.store player @a[tag=!self]

tag @s remove self
