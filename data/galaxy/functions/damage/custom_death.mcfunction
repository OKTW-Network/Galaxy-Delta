function cu:library/experience/data/entity_death

scoreboard players operation #1 calcu_temp = @s expMax
scoreboard players operation #1 calcu_temp -= @s expMin
scoreboard players set #2 calcu_temp 0
execute if score #1 calcu_temp matches 1.. run function cu:uuid/generate
execute if score #1 calcu_temp matches 1.. store result score #2 calcu_temp run data get storage cu:uuid generate[0]
execute if score #1 calcu_temp matches 1.. run scoreboard players operation #2 calcu_temp %= #1 calcu_temp
scoreboard players operation #1 calcu_temp = @s expMin
scoreboard players operation #1 calcu_temp += #2 calcu_temp
execute if score #1 calcu_temp matches 1.. run summon experience_orb ~ ~ ~ {Tags:["galaxy._tag.customDeathExpOrb"]}
execute if score #1 calcu_temp matches 1.. store result entity @e[tag=galaxy._tag.customDeathExpOrb,limit=1] Value short 1 run scoreboard players get #1 calcu_temp
tag @e[tag=galaxy._tag.customDeathExpOrb] remove galaxy._tag.customDeathExpOrb

kill @s
