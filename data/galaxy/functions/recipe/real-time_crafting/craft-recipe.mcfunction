scoreboard players set @s sucRTcRcp 0
scoreboard players set @s sucRTcRcp1 0
scoreboard players set @s sucRTcRcp2 0

execute if block ~ ~-1 ~ minecraft:crafting_table run function galaxy:recipe/real-time_crafting/hi-tech_crafting_table

execute if score @s sucRTcRcp matches -1 run playsound minecraft:block.glass.break block @a ~ ~ ~ 1 1.4 0.2
execute if score @s sucRTcRcp matches -1 run summon minecraft:lightning_bolt ~ ~-1 ~
execute unless score @s sucRTcRcp matches -1 run function galaxy:tool/summon/structure_empower
kill @s
