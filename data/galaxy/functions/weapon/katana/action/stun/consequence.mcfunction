function galaxy:weapon/katana/action/stun/sound
execute if score @s ktnStunSuc matches 0 store result score @s ktnStunCd run scoreboard players get #katana_act_stun_miss_cd Config
execute if score @s ktnStunSuc matches 1.. store result score @s ktnStunCd run scoreboard players get #katana_act_stun_hit_cd Config
