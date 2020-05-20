function galaxy:weapon/katana/action/stun/sound
execute if score #calculation_temp1 numeric matches 0 store result score @s cdActStun run scoreboard players get #katana_act_stun_miss_cd Config
execute if score #calculation_temp1 numeric matches 1.. store result score @s cdActStun run scoreboard players get #katana_act_stun_hit_cd Config
