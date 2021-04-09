tag @s add self

execute if score @s ktnStunSuc matches 0 if score #galaxy$katana_act_stun_sound Config matches 1 at @s run playsound galaxy:katana.soop.self player @s
execute if score @s ktnStunSuc matches 0 if score #galaxy$katana_act_stun_sound Config matches 1 at @s run playsound galaxy:katana.soop player @a[tag=!self]

execute if score @s ktnStunSuc matches 1.. if score #galaxy$katana_act_stun_sound Config matches 1 at @s run playsound minecraft:entity.player.attack.knockback player @a ~ ~ ~ 1 0.8

tag @s remove self
