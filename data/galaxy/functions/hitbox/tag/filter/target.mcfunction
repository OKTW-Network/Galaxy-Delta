execute if score #galaxy$target_hostile Config matches 1 if score #galaxy$target_neutral Config matches 1 run tag @e[tag=galaxy.hitbox.target,type=#minecraft:hostile] add galaxy.hitbox.pass_filter
execute if score #galaxy$target_hostile Config matches 1 unless score #galaxy$target_neutral Config matches 1 run tag @e[tag=galaxy.hitbox.target,type=#minecraft:hostile,type=!#minecraft:neutral] add galaxy.hitbox.pass_filter
execute if score #galaxy$target_neutral Config matches 1 run tag @e[tag=galaxy.hitbox.target,type=#minecraft:neutral,type=!#minecraft:hostile] add galaxy.hitbox.pass_filter
execute if score #galaxy$target_passive Config matches 1 run tag @e[tag=galaxy.hitbox.target,type=#minecraft:passive] add galaxy.hitbox.pass_filter

tag @e[tag=galaxy.hitbox.target,tag=!galaxy.hitbox.pass_filter] remove galaxy.hitbox.target
tag @e[tag=galaxy.hitbox.pass_filter] remove galaxy.hitbox.pass_filter
