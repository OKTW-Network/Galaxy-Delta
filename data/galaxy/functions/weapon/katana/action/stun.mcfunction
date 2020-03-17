execute at @s run summon minecraft:armor_stand ^ ^ ^1.75 {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["stunSelector"]}
execute as @e[tag=stunSelector] at @s store success score #calculation_temp1 numeric run tag @e[type=#minecraft:hostile,distance=..1.5] add init-status-stun
kill @e[tag=stunSelector]

scoreboard players operation @s sucActStun = #calculation_temp1 numeric

execute if score #calculation_temp1 numeric matches 1.. store result score @s cdActStun run scoreboard players get #katana_act_stun_hit_cd Config
execute if score #calculation_temp1 numeric matches 1.. if score #katana_act_stun_sound Config matches 1 at @s run playsound minecraft:entity.player.attack.knockback player @a ~ ~ ~ 1 0.8

execute if score #calculation_temp1 numeric matches 0 store result score @s cdActStun run scoreboard players get #katana_act_stun_miss_cd Config
execute if score #calculation_temp1 numeric matches 0 if score #katana_act_stun_sound Config matches 1 at @s run playsound galaxy:katana.soop player @a ~ ~ ~ 1
