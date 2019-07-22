execute as @a[scores={reqActStun=1}] at @s run summon minecraft:armor_stand ^ ^ ^1.75 {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["stunSelector"]}
execute as @e[tag=stunSelector] at @s store success score @a[scores={reqActStun=1}] sucActStun run tag @e[type=#galaxy:hostile,distance=..1.5] add init-status-stun
kill @e[tag=stunSelector]

execute as @a[scores={reqActStun=1,sucActStun=1..}] store result score @s cdActStun run scoreboard players get #katana_act_stun_hit_cd Config
execute as @a[scores={reqActStun=1,sucActStun=1..}] at @s if score #katana_act_stun_sound Config matches 1 run playsound minecraft:entity.player.attack.knockback player @a[distance=..32] ~ ~ ~ 1 0.8 0.2

execute as @a[scores={reqActStun=1,sucActStun=0}] store result score @s cdActStun run scoreboard players get #katana_act_stun_miss_cd Config
execute as @a[scores={reqActStun=1,sucActStun=0}] at @s if score #katana_act_stun_sound Config matches 1 run playsound galaxy:katana.soop player @a[distance=..32] ~ ~ ~ 1 1 0.2
