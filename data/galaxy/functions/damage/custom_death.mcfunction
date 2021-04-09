function math:calcu_temp/make_data
data modify storage galaxy:temp +damage.custom_death.calcu_temp.upstream set from storage math:calcu_temp result

function cu:library/experience/data/entity_death
execute unless score @s expMin = @s expMax run scoreboard players operation #1 calcu_temp = @s expMax
execute unless score @s expMin = @s expMax run scoreboard players operation #1 calcu_temp -= @s expMin
scoreboard players set #precision random 3
scoreboard players set #allowNegative random 0
function math:random/generate
execute store result score #2 calcu_temp run data get storage math:random result
scoreboard players operation #1 calcu_temp *= #2 calcu_temp
scoreboard players operation #1 calcu_temp /= #1000 num
execute unless score @s expMin = @s expMax store result storage galaxy:temp exp short 1 run scoreboard players get #1 calcu_temp
execute if score @s expMin = @s expMax store result storage galaxy:temp exp int 1 run scoreboard players get @s expMin
execute store result score #1 calcu_temp run data get storage galaxy:temp exp
execute if score #1 calcu_temp matches 1.. run summon experience_orb ~ ~ ~ {Tags:["galaxy.expOrbInit"]}
execute as @e[tag=galaxy.expOrbInit] run data modify entity @s Value set from storage galaxy:temp exp
tag @e[tag=galaxy.expOrbInit] remove galaxy.expOrbInit

kill @s

data modify storage math:calcu_temp input set from storage galaxy:temp +damage.custom_death.calcu_temp.upstream
function math:calcu_temp/extract_data
