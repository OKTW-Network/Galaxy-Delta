scoreboard players set #1 calcu_temp 110200
scoreboard players set #2 calcu_temp 10000
execute store result score #3 calcu_temp run data get storage galaxy:temp +weapon.katana.replaceitem.itemCustomDataTag.style

scoreboard players remove #3 calcu_temp 1

scoreboard players operation #2 calcu_temp *= #3 calcu_temp

scoreboard players operation #1 calcu_temp += #2 calcu_temp

scoreboard players operation #katana.model.katana galaxy.weapon = #1 calcu_temp
