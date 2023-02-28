scoreboard players set #1 calcu_temp 301011
scoreboard players set #2 calcu_temp 1000
execute store result score #3 calcu_temp run data get storage galaxy:temp +weapon.energy_saber.replaceitem.itemCustomDataTag.style

scoreboard players remove #3 calcu_temp 1

scoreboard players operation #2 calcu_temp *= #3 calcu_temp

scoreboard players operation #1 calcu_temp += #2 calcu_temp

scoreboard players operation @s sbrMdl = #1 calcu_temp
