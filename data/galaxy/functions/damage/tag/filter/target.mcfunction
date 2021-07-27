execute if score #galaxy$target_hostile Config matches 1 if score #galaxy$target_neutral Config matches 1 run tag @e[tag=galaxy.damage.target,type=#minecraft:hostile] add galaxy.damage.pass_filter
execute if score #galaxy$target_hostile Config matches 1 unless score #galaxy$target_neutral Config matches 1 run tag @e[tag=galaxy.damage.target,type=#minecraft:hostile,type=!#minecraft:neutral] add galaxy.damage.pass_filter
execute if score #galaxy$target_neutral Config matches 1 run tag @e[tag=galaxy.damage.target,type=#minecraft:neutral,type=!#minecraft:hostile] add galaxy.damage.pass_filter
execute if score #galaxy$target_passive Config matches 1 run tag @e[tag=galaxy.damage.target,type=#minecraft:passive] add galaxy.damage.pass_filter

tag @e[tag=galaxy.damage.target,tag=!galaxy.damage.pass_filter] remove galaxy.damage.target
tag @e[tag=galaxy.damage.pass_filter] remove galaxy.damage.pass_filter
